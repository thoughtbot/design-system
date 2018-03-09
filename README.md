# tbd

thoughtbot design system starter for clients. Currently, tbd consists of only
one component: tbd-button.

## Installation for Ruby on Rails

tbd is available through npm and requires Rails 5.1+. Yarn is used to support
Heroku deployment.

1. Make sure you have the [Yarn] package manager installed:
   https://yarnpkg.com/en/docs/install

1. Install the tbd package and save it as a dependency:

    ```
    yarn add @thoughtbot/tbd-button@0.0.2
    ```

1. Import the component in your Sass manifest:

    ```
    @import "@thoughtbot/tbd-button/index";
    ```

    You can now use the `tbd-button` class to style buttons.

  [Yarn]: https://yarnpkg.com/en/

### Deploy Ruby on Rails app with tbd to Heroku

1. Add `webpacker` to your `Gemfile` and install:

    ```
    gem "webpacker", require: false
    ```

    ```
    bundle install
    ```

1. Add the [Node.js Buildpack][nodejs-buildpack] to your Heroku app.

  [nodejs-buildpack]: https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-nodejs

### Fractal to display the design system

For apps that consume tbd, it is useful to have a live pattern library where
developers and designers can go to see patterns rendered in a browser. We chose
[Fractal] for our first spike.

This setup has a few things missing on our roadmap:

- It only works on local development machines.
- You have to manually make tbd components in the Fractal components folder.
  For example, if you use `tbd-button` pattern, you will need a Fractal
  component of the same name, with it's own `yml` file and example markup.

#### Fractal suggested setup

This is how we set up [Fractal] to work in one client project, in a sub-folder
of the project. We chose a sub-folder as to not pollute the production app.

1. Install the [Fractal CLI] on your local dev machine

1. Use the CLI's fractal new command to generate a new proejct in a subfolder
   of the client project. We chose `design-system`. `fractal new design-system`.

1. Create a default [Fractal view template] that imports to your local
   stylesheet. In our case, we pointed it to another server running locally.
   This will be dependent on your current local project setup.
   Our file at `./design-system/components/_preview.hbs` looked like this:

   ```
   <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <link media="all" rel="stylesheet" href="http://localhost:5000/assets/application.css">
        <title>Preview Layout</title>
    </head>
    <body>
      <div style="max-width: 500px; display: block; margin: 20px auto;">
        {{{ yield }}}
      </div>
    </body>
    </html>
   ```

  [Fractal]: https://fractal.build/
  [Fractal CLI]: https://fractal.build/guide/installation
  [Fractal view template]: https://fractal.build/guide/core-concepts/views

## License

tbd is Copyright (c) 2017 thoughtbot, inc.
It is free software, and may be redistributed
under the terms specified in the [LICENSE] file.

  [LICENSE]: /LICENSE.md

## About

![thoughtbot](http://presskit.thoughtbot.com/images/thoughtbot-logo-for-readmes.svg)

tbd is maintained and funded by thoughtbot, inc.
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

We love open source software!
See [our other projects][community]
or [hire us][hire] to help build your product.

  [community]: https://thoughtbot.com/community?utm_source=github
  [hire]: https://thoughtbot.com/hire-us?utm_source=github
