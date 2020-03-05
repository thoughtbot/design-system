# Releasing

This documents how to release a new version of tbds. It’s for
thoughtbot employees.

1. Make sure you’re on the `master` branch with a clean working directory.

1. Update the [changelog][changelog], following the guidelines from
   [keep a changelog][keep-a-changelog]

1. Run `npm version [major | minor | patch] --force`

    This script will…

    - Add the changes to `CHANGELOG.md` to the Git index
    - Bump the version in `package.json` and `package-lock.json`
    - Create a version Git commit and tag

1. Run `npm publish`

    This script will push to GitHub and publish the new version to
    the npm registry

1. Draft a [new GitHub release][github-release], copying the release’s
   changelog entry into the release notes

[changelog]: /CHANGELOG.md
[keep-a-changelog]: http://keepachangelog.com
[github-release]: https://github.com/thoughtbot/design-system/releases/new
