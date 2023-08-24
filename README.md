# thoughtbot design system (tbds)

A design system for thoughtbot websites.

## Purpose

The purpose of the thoughtbot design system is to…

- Learn about design systems so that we establish our skillset in the space
  and provide services to our clients.
- Support our internal and external websites and set a minimum standard of
  design, accessibility, maintainability, and quality.

## Applications using tbds

- [Hub][hub]
- [thoughtbot.com][thoughtbot.com]
- [thoughtbot search][thoughtbot-search]
- [tbot][tbot]
- [Vellum][vellum]

[hub]: https://hub.thoughtbot.com/
[thoughtbot.com]: https://thoughtbot.com/
[thoughtbot-search]: https://search.thoughtbot.com/
[tbot]: https://tbot.io/
[vellum]: https://vellum.thoughtbot.com/

## Installation for Ruby on Rails

tbds is available through npm and requires Rails 5.1+. Yarn is used to support
Heroku deployment.

1. Make sure you have the [Yarn][yarn] package manager installed:
   https://yarnpkg.com/en/docs/install

1. Install the design system package and save it as a dependency:

    ```
    yarn add @thoughtbot/design-system
    ```

1. Import the system in your Sass manifest:

    ```
    @import "@thoughtbot/design-system/src/index";
    ```

[yarn]: https://yarnpkg.com/en/

Alternatively, you can assign an alias to the package for more terse usage:

1. Install the design system package with an alias

    ```
    yarn add tbds@npm:@thoughtbot/design-system
    ```

1. Import the system using the alias

    ```
    @import "tbds/src/index";
    ```

To import assets using the Rails asset pipeline:

1. Add `node_modules` to the asset path.

    ```ruby
    # assets.rb
    Rails.application.config.assets.paths << Rails.root.join('node_modules')
    ```

1. Use the assets in `*.rb` and `*.erb`.

    ```erb
    image_tag "@thoughtbot/design-system/src/logo/horizontal.svg", title: "thoughtbot"
    ```

### Deploy Ruby on Rails app with tbds to Heroku

1. Add `webpacker` to your `Gemfile` and install:

    ```
    gem "webpacker", require: false
    ```

    ```
    bundle install
    ```

1. Add the [Node.js Buildpack][nodejs-buildpack] to your Heroku app.

    Note: You'll need to order the buildpacks to have Node.js first, followed
    by Ruby.

[nodejs-buildpack]: https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-nodejs

## Compiled CSS

Each version of tbds (starting with v0.7.0) is available as a minified CSS file
through the [unpkg CDN][unpkg]. While this method is not recommended for
production usage, it can be useful for adding tbds as an external stylesheet to
CodePen’s or static sites to quickly prototype ideas.

```
https://unpkg.com/@thoughtbot/design-system@0.7.1/dist/tbds.css
```

[unpkg]: https://unpkg.com/

## Browser support

tbds supports:

- Latest versions of Chrome, Firefox, and Safari
- Edge 15+

## License

thoughtbot/design-system is Copyright (c) 2020 thoughtbot, inc.
It is free software, and may be redistributed
under the terms specified in the [LICENSE] file.

[LICENSE]: /LICENSE.md

## About

![thoughtbot](https://thoughtbot.com/brand_assets/93:44.svg)

thoughtbot/design-system is maintained and funded by thoughtbot, inc.
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

We love open source software!
See [our other projects][community]
or [hire us][hire] to help build your product.

[community]: https://thoughtbot.com/community?utm_source=github
[hire]: https://thoughtbot.com/hire-us?utm_source=github
