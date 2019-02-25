# Contributing

## Contributing code

1. Fork and clone the repository.

1. Install the dependencies:

    ```
    bin/setup
    ```

1. Create a new branch from master

    ```
    git checkout -b my-branch-name
    ```

1. Make your changes, following our [code-style] (see below).

1. Commit your changes, with a [good commit message][commit].

1. Push your branch to GitHub and create a pull request.

Others will give constructive feedback. This is a time for discussion and
improvements, and making the necessary changes will be required before we can
merge the contribution.

[code-style]: #code-style
[commit]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

## Code style

### CSS/Sass

We use [stylelint][stylelint] to lint our CSS and Sass. It's configuration can
be found in `.stylelintrc.json`. You can run stylelint from the command line via
`npm run stylelint`, or [integrate it with your editor][editor-integration].

[stylelint]: https://stylelint.io/
[editor-integration]: https://stylelint.io/user-guide/complementary-tools/#editor-plugins

## Documenting a component

Document each component in a `README.md` in each component's directory.
