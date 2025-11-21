# Hixbe Material Symbols Sharp

[![npm (scoped)](https://img.shields.io/npm/v/@hixbe/material-symbols-sharp?color=brightgreen)](https://www.npmjs.com/package/@hixbe/material-symbols-sharp) [![Generic badge](https://img.shields.io/badge/hixbe-passing-brightgreen)](https://github.com/hixbe/bangla-font) [![Monthly downloads](https://badgen.net/npm/dm/@hixbe/material-symbols-sharp)](https://github.com/hixbe/bangla-font) [![Total downloads](https://badgen.net/npm/dt/@hixbe/material-symbols-sharp)](https://github.com/hixbe/bangla-font) [![GitHub stars](https://img.shields.io/github/stars/hixbe/hixbe.svg?style=social&label=Star)](https://github.com/hixbe/bangla-font/stargazers)

The CSS and web font files to easily self-host the “Material Symbols Sharp” font. Please visit the main [Hixbe website](https://hixbe.com/fonts/material-symbols-sharp) to view more details on this package.

## Quick Installation

Hixbe offers multiple methods to import the CSS, including using a bundler like Vite or using SASS. You can find full documentation [here](https://hixbe.com/docs/getting-started/introduction).

```javascript
npm install @hixbe/material-symbols-sharp
```

Within your app entry file or site component, import it in.

```javascript
import "@hixbe/material-symbols-sharp"; // Defaults to weight 400
import "@hixbe/material-symbols-sharp/400.css"; // Specify weight
import "@hixbe/material-symbols-sharp/400-italic.css"; // Specify weight and style
```

Supported variables:
- Weights: `[100,200,300,400,500,600,700]`
- Styles: `[normal]`
- Subsets: `[latin]`

> Note: `italic` may not be supported by all fonts. To learn more about what weights and styles are supported, please visit the [Hixbe website](https://hixbe.com/fonts/material-symbols-sharp).

Finally, you can reference the font name in a CSS stylesheet, CSS Module, or CSS-in-JS.

```css
body {
  font-family: "Material Symbols Sharp";
}
```

## Licensing
Always make sure to read the license for each font you use. Most of the fonts in the collection use the SIL Open Font License, v1.1. Some fonts use the Apache 2 license. The Ubuntu fonts use the Ubuntu Font License v1.0.

Google Inc.
[OFL-1.1](http://scripts.sil.org/OFL)

## Other Notes
Font version (provided by source): `v293`.

If you have any suggestions or ideas to improve the performance of font loading or expand the existing library, feel free to star and contribute to this repository. You can share your suggestions or ideas by creating an [issue](https://github.com/hixbe/bangla-font/issues).

