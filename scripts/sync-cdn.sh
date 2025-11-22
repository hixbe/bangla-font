#!/bin/bash

# Sync font files to R2 with Google Fonts-like structure
# Uploads to fonts/{version}/{id}/{filename} and generates font.css

find fonts -type f \( -name "*.woff" -o -name "*.woff2" \) | while read -r file; do
  # Get the directory containing the file
  dir=$(dirname "$file")
  # Get the font id (the directory name before 'files')
  id=$(basename "$(dirname "$dir")")
  # Read metadata
  family=$(jq -r '.family' "$dir/../metadata.json")
  version=$(jq -r '.version' "$dir/../metadata.json")
  # Get filename
  filename=$(basename "$file")

  # Upload font file to R2
  key="fonts/${version}/${id}/${filename}"
  echo "Uploading $file to $key"
  wrangler r2 object put "public-cdn/$key" --file "$file" --remote
done

# Generate and upload font.css for each font
find fonts -name "metadata.json" | while read -r metadata_file; do
  font_dir=$(dirname "$metadata_file")
  id=$(basename "$font_dir")
  family=$(jq -r '.family' "$metadata_file")
  version=$(jq -r '.version' "$metadata_file")

  files_dir="$font_dir/files"
  if [ -d "$files_dir" ]; then

    # Generate CSS
    css="@font-face {\n"
    css+="  font-family: '$family';\n"
    css+="  font-style: normal;\n"
    css+="  font-weight: 400;\n"
    css+="  src: "

    # Find woff2 first, then woff
    woff2_file=$(find "$files_dir" -name "*.woff2" | head -1)
    woff_file=$(find "$files_dir" -name "*.woff" | head -1)

    if [ -n "$woff2_file" ]; then
      filename=$(basename "$woff2_file")
      css+="url(https://cdn.hixbe.com/fonts/${version}/${id}/${filename}) format('woff2')"
      if [ -n "$woff_file" ]; then
        css+=",\n       "
      fi
    fi

    if [ -n "$woff_file" ]; then
      filename=$(basename "$woff_file")
      css+="url(https://cdn.hixbe.com/fonts/${version}/${id}/${filename}) format('woff')"
    fi

    css+=";\n"
    css+="}\n"

    # Upload CSS
    key="fonts/${version}/${id}/font.css"
    echo "Uploading CSS to $key"
    echo -e "$css" | wrangler r2 object put "public-cdn/$key" --pipe --content-type "text/css" --remote
  fi
done
