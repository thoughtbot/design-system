# Button

## Install

tbds packages are distributed through npm. You can install `tbds-button`
and add it as a dependency to your project's by running this command:

```
npm install --save @thoughtbot/tbds-button
```

## Usage

tbds uses Sass. You can import a package's styles into your project like this:

```scss
@import "@thoughtbot/tbds-button/index";
```

### Default

```html
<button class="tbds-button" type="button">
  Button
</button>
```

### Disabled button state

```html
<button class="tbds-button" type="button" disabled>
  Button
</button>
```

### Button with icon on the left

```html
<button class="tbds-button" type="button">
  <svg class="tbds-button__icon tbds-button__icon--text-to-right">…</svg>

  Button
</button>
```

### Button with icon on the right

```html
<button class="tbds-button" type="button">
  Button

  <svg class="tbds-button__icon tbds-button__icon--text-to-left">…</svg>
</button>
```
