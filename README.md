# thoughtbot design system (tbds)

thoughtbot design system for thoughtbot websites.

## Devleoper Setup

`./bin/setup`

## View Documentation Site Locally

```
cd documentation
npm run server
```

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
