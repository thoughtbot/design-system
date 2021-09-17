# Documentation website

This folder contains markup, styling, and layouts etc for the documentation site. The site is built using [Eleventy](https://www.11ty.dev/docs/)

## Production

You will need the following software installed to build and run the project:

- Node.js version 10 (or higher)

It is recommended that you familiarise yourself with the [Eleventy documentation](https://www.11ty.dev/docs/).

```bash
  # from the root of this repository
  npm run docs:build
```

If successful the command will build the site to the `_site` directory.

## Development

**Install the dependencies listed above**

To install the project dependencies run:

```bash
  # from the root of this repository
  npm install
```

To start a development (auto-reloading) server, run:

```bash
  # from the root of this repository
  npm run docs:dev
```

## Shortcodes

> A shortcode returns content (a JavaScript string or template literal) that is injected into the template. You can use these however you’d like—you could even think of them as reusable components.

Read more about 11ty shortcodes in the [documentation](https://www.11ty.dev/docs/shortcodes/).

### stylesheet

The `stylesheet` shortcode converts a SCSS file to CSS.

Usage:

```nunjucks
{% stylesheet, "src/styles.scss" %}
```

The above will output the file `_site/styles.css`, and output the following into the HTML:

```html
<link rel="stylesheet" type="text/css" href="/styles.css">
```
