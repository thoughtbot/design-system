# Skip link

[View prototype on CodePen][codepen].

A skip link allows assistive technology users to bypass content repeated across 
multiple pages of a site. It is typically used to skip over primary navigation.

Ideally, a skip link target should point to the page's first-level heading. 
This ensures some assistive technology will not automatically read out the 
entire container's contents without being asked to.

Skip links should also be placed as high up in the document source order as 
possible, while still being contained by a landmark element.

[codepen]: https://codepen.io/thoughtbot/pen/QWLrQzW

## Usage

### Default

```html
<a class="tbds-skip-link" href="#title">
  Skip to main content
</a>
```
