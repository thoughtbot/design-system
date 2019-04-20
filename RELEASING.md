# Releasing

This documents how to release a new version of tbds. It's for
thoughtbot employees.

1. Update the version number in `package.json`.

1. Update the [changelog][changelog], following the guidelines
   from [keep a changelog][keep-a-changelog].

1. Commit changes. Use the convention `vVERSION` in your commit
   message (e.g. `v1.0.0`).

1. Tag the release: `git tag vVERSION`

1. Push changes to GitHub: `git push origin && git push origin --tags`

1. Run `npm publish` to publish the new version to npm's registry
   (if releasing a pre-release, use `npm publish --tag beta`).

1. Draft a [new GitHub release][github-release], copying the release's
   changelog entry into the release notes.

[changelog]: /CHANGELOG.md
[keep-a-changelog]: http://keepachangelog.com
[github-release]: https://github.com/thoughtbot/design-system/releases/new
