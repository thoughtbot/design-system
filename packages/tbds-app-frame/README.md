# App Frame

A handy way to have a header, footer, and flexible body that fills in-between.

## Install

tbds packages are distributed through npm. You can install `tbds-app-frame`
and add it as a dependency to your project's by running this command:

```
npm install --save @thoughtbot/tbds-app-frame
```

## Usage

tbds uses Sass. You can import a package's styles into your project like this:

```scss
@import "@thoughtbot/tbds-app-frame/index";
```

### Default

```html
<div class="tbds-app-frame">
  <div class="tbds-app-frame__header">
    Header
  </div>

  <div class="tbds-app-frame__body">
    Flexible body
  </div>

  <div class="tbds-app-frame__footer">
    Footer
  </div>
</div>
```
