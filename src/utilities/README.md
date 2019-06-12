# Utilities

## Usage

### Margin

Margin utilities are based on the global spacing scale and available
for each of these margin properties:

- `margin-top`
- `margin-right`
- `margin-bottom`
- `margin-left`

```html
<div class="tbds-margin-top-2">
  Some content
</div>
```

#### Breakpoint variants

Margin utilities can also be used to set `margin` at specific breakpoints.
Each variant's styles are applied at the breakpoint and up (using a
`min-width` media query).

```html
<div class="tbds-margin-right-4@medium">
  Some content
</div>
```

### Padding

Padding utilities are based on the global spacing scale and available
for each of these padding properties:

- `padding-top`
- `padding-right`
- `padding-bottom`
- `padding-left`

```html
<div class="tbds-padding-bottom-1">
  Some content
</div>
```

#### Breakpoint variants

Padding utilities can also be used to set `padding` at specific breakpoints.
Each variant's styles are applied at the breakpoint and up (using a
`min-width` media query).

```html
<div class="tbds-padding-bottom-1@small">
  Some content
</div>
```

### Width

Width utilities can be used to set the `width` on element, and are available
with the following values (quarters, thirds, and fifths):

- `20%`
- `25%`
- `33.3333%`
- `40%`
- `50%`
- `60%`
- `66.6666%`
- `75%`
- `80%`
- `100%`

```html
<div class="tbds-width-25%">
  Some content
</div>
```

#### Breakpoint variants

Width utilities can also be used to set `width` at specific breakpoints.
Each variant's styles are applied at the breakpoint and up (using a
`min-width` media query).

```html
<div class="tbds-width-50%@medium">
  Some content
</div>
```

### Font weight

```html
<p class="tbds-font-weight-normal">
  Set text in normal weight
</p>
```

```html
<p class="tbds-font-weight-bold">
  Set text in bold weight
</p>
```

### Font style

```html
<p class="tbds-font-style-normal">
  Style text normal
</p>
```

```html
<p class="tbds-font-style-italic">
  Style text italicized
</p>
```

### Text align

```html
<p class="tbds-text-align-right">
  Right-align text
</p>
```

```html
<p class="tbds-text-align-left">
  Left-align text
</p>
```

```html
<p class="tbds-text-align-center">
  Center-align text
</p>
```

#### Breakpoint variants

Text align utilities can also be used to set styles at specific breakpoints.
Each variant's styles are applied at the breakpoint and up (using a
`min-width` media query).

```html
<div class="tbds-text-align-right@large">
  Some content
</div>
```

### Line height

Set `line-height` to `0` to remove extra space from elements that inherit
`line-height` but don't contain any text.

```html
<div class="tbds-line-height-0">
  <svg>…</svg>
</div>
```
