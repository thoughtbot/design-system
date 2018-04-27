# thoughtbot design system (tbds)

thoughtbot design system for thoughtbot websites.

## Devleoper Setup

`./bin/setup`

## View Documentation Site Locally

```
cd documentation
npm run server
```

## Documenting a component

Each component may have its own documentation that gets pulled into the
documentation site. To create documentation:

1. In the component's folder, create a `documentation` folder.
1. Inside of that, create a Markdown file of the same name as the pattern,
   taking care to not name it `index.md`.
1. Provide a front-matter entry for `title`.
1. Inside that file, describe the component.
1. Create HTML examples by placing HTML files in a sub-folder, taking care to
   not name them `index.html`.
1. Provide a front-matter entry for `type: "example"`.
1. Render the examples by using the `example` Hugo shortcode. When providing the
   fileName argumenet, take care to include the subfolder and omit the file
   extension for the HTML sample.

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

## Releases

Bump the package versions manually, then run:

`npm run release`

## Installation for Ruby on Rails

tbds is available through npm and requires Rails 5.1+. Yarn is used to support
Heroku deployment.

1. Make sure you have the [Yarn] package manager installed:
   https://yarnpkg.com/en/docs/install

1. Install the tbds package and save it as a dependency:

    ```
    yarn add @thoughtbot/tbds-button@0.0.2
    ```

1. Import the component in your Sass manifest:

    ```
    @import "@thoughtbot/tbds-button/index";
    ```

    You can now use the `tbds-button` class to style buttons.

  [Yarn]: https://yarnpkg.com/en/

### Deploy Ruby on Rails app with tbds to Heroku

1. Add `webpacker` to your `Gemfile` and install:

    ```
    gem "webpacker", require: false
    ```

    ```
    bundle install
    ```

1. Add the [Node.js Buildpack][nodejs-buildpack] to your Heroku app.

  [nodejs-buildpack]: https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-nodejs

## License

thoughtbot/design-system is Copyright (c) 2018 thoughtbot, inc.
It is free software, and may be redistributed
under the terms specified in the [LICENSE] file.

  [LICENSE]: /LICENSE.md

## About

![thoughtbot](http://presskit.thoughtbot.com/images/thoughtbot-logo-for-readmes.svg)

thoughtbot/design-system is maintained and funded by thoughtbot, inc.
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

We love open source software!
See [our other projects][community]
or [hire us][hire] to help build your product.

  [community]: https://thoughtbot.com/community?utm_source=github
  [hire]: https://thoughtbot.com/hire-us?utm_source=github
