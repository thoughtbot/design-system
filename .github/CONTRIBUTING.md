# Contributing

## Documenting a component

1. In the component's folder, create a `documentation` folder.
1. Inside of that, create a Markdown file of the same name as the pattern,
   taking care to not name it `index.md`.
1. Provide a front-matter entry for `title`.
1. Provide a front-matter entry for `type: "component"`.
1. Inside that file, describe the component.
1. Create HTML examples by placing HTML files in a sub-folder, taking care to
   not name them `index.html`.
1. Provide a front-matter entry for `type: "example"`.

Here is an example documentation file for a fictional pattern known as
`tbds-thingy`:

*packages/tbds-thingy/documentation/tbds-thingy.md*
```
---
title: "tbds Thingy"
---

Here's a Thingy. Check out this basic example:

{{< example fileName="examples/basic.html" >}}

And now check out this modified example:

{{< example fileName="examples/modified.html" >}}

```

And the corresponding HTML sample for the `basic` example:

*packages/tbds-thingy/documentation/tbds-thingy/examples/basic.html*
```
---
type: "example"
---

<div class="tbds-thingy">
  This thingy pattern is great, 'amirite?
</div>

```

The `fileName` argument references an HTML file example in the same folder.
