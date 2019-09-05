# Utilities

## Usage

### Margin

Margin utilities are based on the global spacing scale and available
for each of these margin properties:

- `margin-block-start`
- `margin-inline-end`
- `margin-block-end`
- `margin-inline-start`
- `margin-block`
- `margin-inline`

```html
<div class="tbds-margin-block-start-2">
  Some content
</div>
```

#### Breakpoint variants

Margin utilities can also be used to set `margin` at specific breakpoints.
Each variant's styles are applied at the breakpoint and up (using a
`min-width` media query).

```html
<div class="tbds-margin-inline-end-4@medium">
  Some content
</div>
```

#### `auto`

The `auto` keyword value is also available as utility classes for the margin
properties above. Note that breakpoint variants are not supported in
this context.

```html
<div class="tbds-margin-inline-auto">
  Some content
</div>
```

### Padding

Padding utilities are based on the global spacing scale and available
for each of these padding properties:

- `padding-block-start`
- `padding-inline-end`
- `padding-block-end`
- `padding-inline-start`
- `padding-block`
- `padding-inline`

```html
<div class="tbds-padding-block-end-1">
  Some content
</div>
```

#### Breakpoint variants

Padding utilities can also be used to set `padding` at specific breakpoints.
Each variant's styles are applied at the breakpoint and up (using a
`min-width` media query).

```html
<div class="tbds-padding-block-end-1@small">
  Some content
</div>
```

### Inline size utilities

Inline size utilities can be used to set the `inline-size` on element, and are
available with the following values (quarters, thirds, and fifths):

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
<div class="tbds-inline-size-25%">
  Some content
</div>
```

#### Breakpoint variants

Inline size utilities can also be used to set `inline-size` at specific
breakpoints. Each variant's styles are applied at the breakpoint and up (using
a `min-width` media query).

```html
<div class="tbds-inline-size-50%@medium">
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
<p class="tbds-text-align-end">
  Align text to the end of the content flow
</p>
```

```html
<p class="tbds-text-align-start">
  Align text to the start of the content flow
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
