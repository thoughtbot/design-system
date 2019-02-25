# Media

## Install

tbds packages are distributed through npm. You can install `tbds-media`
and add it as a dependency to your project's by running this command:

```
npm install --save @thoughtbot/tbds-media
```

## Usage

tbds uses Sass. You can import a package's styles into your project like this:

```scss
@import "@thoughtbot/tbds-media/index";
```

### Default

```html
<div class="tbds-media">
  <div class="tbds-media__figure">
    <img src="image.jpg" alt="alternative text">
  </div>

  <div class="tbds-media__body">
    Some content
  </div>
</div>
```

### Vertically-centered

```html
<div class="tbds-media tbds-media--vertical-center">
  <div class="tbds-media__figure">
    <img src="image.jpg" alt="alternative text">
  </div>

  <div class="tbds-media__body">
    Some content
  </div>
</div>
```
