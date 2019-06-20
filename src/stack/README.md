# Stacks (block and inline)

Stacks lay out a set of items with even spacing. There are two stack components:
`tbds-block-stack` and `tbds-inline-stack`. Use `tbds-block-stack` to add equal
space between block elements (a set of items laid out vertically), and use
`tbds-inline-stack` to add equal space between inline-level elements (a set of
items laid out horizontally).

Both `tbds-block-stack` and `tbds-inline-stack` come with modifier classes to
control the gap size between the items:

| Gap modifier | Space value     | Value     |
| ------------ | --------------- | --------- |
| `gap-1`      | `$tbds-space-1` | `0.25rem` |
| `gap-2`      | `$tbds-space-2` | `0.5rem`  |
| `gap-3`      | `$tbds-space-3` | `1rem`    |
| `gap-4`      | `$tbds-space-4` | `1.5rem`  |
| `gap-5`      | `$tbds-space-5` | `2rem`    |
| `gap-6`      | `$tbds-space-6` | `2.5rem`  |

View prototypes on CodePen:

- [Block stack][codepen-block-stack]
- [Inline stack][codepen-inline-stack]

[codepen-block-stack]: https://codepen.io/thoughtbot/pen/axMzEa
[codepen-inline-stack]: https://codepen.io/thoughtbot/pen/MRxYGO

## Usage

### Block stack

```html
<div class="tbds-block-stack">
  <div class="tbds-block-stack__item">
    Item
  </div>

  <div class="tbds-block-stack__item">
    Item
  </div>
</div>
```

### Block stack, gap 2

```html
<div class="tbds-block-stack tbds-block-stack--gap-2">
  <div class="tbds-block-stack__item">
    Item
  </div>

  <div class="tbds-block-stack__item">
    Item
  </div>
</div>
```

### Block stack, bordered

```html
<div class="tbds-block-stack tbds-block-stack--bordered">
  <div class="tbds-block-stack__item">
    Item
  </div>

  <div class="tbds-block-stack__item">
    Item
  </div>
</div>
```

### Inline stack

```html
<div class="tbds-inline-stack">
  <div class="tbds-inline-stack__item">
    Item
  </div>

  <div class="tbds-inline-stack__item">
    Item
  </div>
</div>
```

### Inline stack, gap 2

```html
<div class="tbds-inline-stack tbds-inline-stack--gap-2">
  <div class="tbds-inline-stack__item">
    Item
  </div>

  <div class="tbds-inline-stack__item">
    Item
  </div>
</div>
```

### Inline stack, item pushes to right

```html
<div class="tbds-inline-stack">
  <div class="tbds-inline-stack__item">
    Item
  </div>

  <div class="tbds-inline-stack__item tbds-inline-stack__item--push-start">
    Item
  </div>
</div>
```
