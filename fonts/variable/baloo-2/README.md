# Hixbe Baloo 2

[![npm (scoped)](https://img.shields.io/npm/v/@hixbe-variable/baloo-2?color=brightgreen)](https://www.npmjs.com/package/@hixbe-variable/baloo-2) [![Generic badge](https://img.shields.io/badge/hixbe-passing-brightgreen)](https://github.com/hixbe/bangla-font) [![Monthly downloads](https://badgen.net/npm/dm/@hixbe-variable/baloo-2)](https://github.com/hixbe/bangla-font) [![Total downloads](https://badgen.net/npm/dt/@hixbe-variable/baloo-2)](https://github.com/hixbe/bangla-font) [![GitHub stars](https://img.shields.io/github/stars/hixbe/hixbe.svg?style=social&label=Star)](https://github.com/hixbe/bangla-font/stargazers)

The CSS and web font files to easily self-host the “Baloo 2” variable font. Please visit the main [Hixbe website](https://hixbe.com/fonts/baloo-2) to view more details on this package.

## Quick Installation

Hixbe offers multiple methods to import the CSS, including using a bundler like Vite or using SASS. You can find full documentation [here](https://hixbe.com/docs/getting-started/introduction).

```javascript
npm install @hixbe-variable/baloo-2
```

Within your app entry file or site component, import it in.

```javascript
import "@hixbe-variable/baloo-2"; // Defaults to wght axis
import "@hixbe-variable/baloo-2/wght.css"; // Specify axis
import "@hixbe-variable/baloo-2/wght-italic.css"; // Specify axis and style
```

Supported variables:
- Weights: `[400,500,600,700,800]`
- Styles: `[normal]`
- Subsets: `[devanagari,latin,latin-ext,vietnamese]`
- Axes: `[wght]`

> Note: `italic` may not be supported by all fonts. To learn more about what axes and styles are supported, please visit the [Hixbe website](https://hixbe.com/fonts/baloo-2).

Finally, you can reference the font name in a CSS stylesheet, CSS Module, or CSS-in-JS.

```css
body {
  font-family: "Baloo 2 Variable";
}
```

## Licensing
Always make sure to read the license for each font you use. Most of the fonts in the collection use the SIL Open Font License, v1.1. Some fonts use the Apache 2 license. The Ubuntu fonts use the Ubuntu Font License v1.0.

Copyright 2019 The Baloo 2 Project Authors (https://github.com/EkType/Baloo2)
[OFL-1.1](https://openfontlicense.org)

## Other Notes
Font version (provided by source): `v23`.

If you have any suggestions or ideas to improve the performance of font loading or expand the existing library, feel free to star and contribute to this repository. You can share your suggestions or ideas by creating an [issue](https://github.com/hixbe/bangla-font/issues).

