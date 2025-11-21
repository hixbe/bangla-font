# Hixbe Tiro Bangla

[![npm (scoped)](https://img.shields.io/npm/v/@hixbe/tiro-bangla?color=brightgreen)](https://www.npmjs.com/package/@hixbe/tiro-bangla) [![Generic badge](https://img.shields.io/badge/hixbe-passing-brightgreen)](https://github.com/hixbe/bangla-font) [![Monthly downloads](https://badgen.net/npm/dm/@hixbe/tiro-bangla)](https://github.com/hixbe/bangla-font) [![Total downloads](https://badgen.net/npm/dt/@hixbe/tiro-bangla)](https://github.com/hixbe/bangla-font) [![GitHub stars](https://img.shields.io/github/stars/hixbe/hixbe.svg?style=social&label=Star)](https://github.com/hixbe/bangla-font/stargazers)

The CSS and web font files to easily self-host the “Tiro Bangla” font. Please visit the main [Hixbe website](https://hixbe.com/fonts/tiro-bangla) to view more details on this package.

## Quick Installation

Hixbe offers multiple methods to import the CSS, including using a bundler like Vite or using SASS. You can find full documentation [here](https://hixbe.com/docs/getting-started/introduction).

```javascript
npm install @hixbe/tiro-bangla
```

Within your app entry file or site component, import it in.

```javascript
import "@hixbe/tiro-bangla"; // Defaults to weight 400
import "@hixbe/tiro-bangla/400.css"; // Specify weight
import "@hixbe/tiro-bangla/400-italic.css"; // Specify weight and style
```

Supported variables:
- Weights: `[400]`
- Styles: `[italic,normal]`
- Subsets: `[bengali,latin,latin-ext]`

> Note: `italic` may not be supported by all fonts. To learn more about what weights and styles are supported, please visit the [Hixbe website](https://hixbe.com/fonts/tiro-bangla).

Finally, you can reference the font name in a CSS stylesheet, CSS Module, or CSS-in-JS.

```css
body {
  font-family: "Tiro Bangla";
}
```

## Licensing
Always make sure to read the license for each font you use. Most of the fonts in the collection use the SIL Open Font License, v1.1. Some fonts use the Apache 2 license. The Ubuntu fonts use the Ubuntu Font License v1.0.

Copyright 2020 The Indigo Project Authors (https://github.com/TiroTypeworks/Indigo) TiroBangla-Italic.ttf: Copyright 2020 The Indigo Project Authors (https://github.com/TiroTypeworks/Indigo)
[OFL-1.1](https://openfontlicense.org)

## Other Notes
Font version (provided by source): `v6`.

If you have any suggestions or ideas to improve the performance of font loading or expand the existing library, feel free to star and contribute to this repository. You can share your suggestions or ideas by creating an [issue](https://github.com/hixbe/bangla-font/issues).

