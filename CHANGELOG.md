# Change Log

All notable changes to this project will be documented in this file. This
project adheres to [Semantic Versioning](http://semver.org).

## [Unreleased (`main`)][unreleased]

Nothing at the moment.

[unreleased]: https://github.com/thoughtbot/design-system/compare/v0.7.3...HEAD

## [0.7.3] - 2023-09-20

### Changed

- Fix calculations
- Add [`sass-collective/strip-unit`](https://github.com/sass-collective/sass-collective/tree/master/packages/strip-unit) as a dependency
- Link to the CONTRIBUTING guide from the README
- Update the thoughtbot logo link in the README
- Update dependencies

[0.7.3]: https://github.com/thoughtbot/design-system/compare/v0.7.2...v0.7.3

## [0.7.2] - 2021-10-21

### Changed

- Add thoughtbot logos
- Update documentation to include instructions for aliasing the package and
  using assets in Rails asset pipeline
- Add .tool-versions for asdf users

[0.7.2]: https://github.com/thoughtbot/design-system/compare/v0.7.1...v0.7.2

## [0.7.1] - 2021-09-29

### Changed

- Update documentation to include links to the Figma library
- Upgrade the project dependencies
- Update project default branch to 'main'

[0.7.1]: https://github.com/thoughtbot/design-system/compare/v0.7.0...v0.7.1

## [0.7.0] - 2020-03-05

### Added

- A compiled CSS version of tbds is now packaged with each release. You can use
  the [unpkg CDN][unpkg] to load the CSS using a URL like
  `https://unpkg.com/@thoughtbot/design-system@0.7.0/dist/tbds.css`.

[0.7.0]: https://github.com/thoughtbot/design-system/compare/v0.6.0...v0.7.0
[unpkg]: https://unpkg.com/

## [0.6.0] - 2020-03-03

### Added

- Added more brand color variables, to match our
  [Brand Guidelines][brand-guidelines]:
  - `$tbds-brand-gray-medium`
  - `$tbds-brand-gray-light`
  - `$tbds-brand-gray-ultra-light`
  - `$tbds-brand-purple`
  - `$tbds-brand-yellow`
  - `$tbds-brand-yellow-light`
- Added `display: none !important;` to the `[hidden]` attribute selector
  to ensure that elements using the HTML `hidden` attribute are
  actually hidden.

### Changed

- Link underlines are now removed on state change (hover & focus).
- `$tbds-brand-gray` is now `$tbds-brand-gray-dark`.
- The value of `$tbds-brand-blue` is now `#2e52e4`.

[0.6.0]: https://github.com/thoughtbot/design-system/compare/v0.5.0...v0.6.0
[brand-guidelines]: https://thoughtbot.com/playbook/our-company/brand/colors

## [0.5.0] - 2019-09-19

### Added

- Added a Badge component
- Added a Skip link component
- Added support for media in inverted color mode

[0.5.0]: https://github.com/thoughtbot/design-system/compare/v0.4.0...v0.5.0

## [0.4.0] - 2019-09-09

### Added

- Added `$tbds-control-block-size` to set controls (text inputs and buttons) to
  the same block size.
- Margin utilities now include `auto` (e.g. `tbds-margin-inline-auto`).

### Changed

- When using `tbds-form` elements (e.g. `tbds-form__text-input`), you now must
  ensure that the parent `<form>` has the `tbds-form` class.
- The `--border-radius` custom property in the `tbds-avatar` component was
  renamed to `--tbds-avatar-border-radius`.
- The `--size` custom property in the `tbds-avatar` component was
  renamed to `--tbds-avatar-size`.
- The `--size` custom property in the `tbds-icon` component was
  renamed to `--tbds-icon-size`.
- The `--gap` custom property in the `tbds-block-stack` component was
  renamed to `--tbds-block-stack-gap`.
- The `--gap` custom property in the `tbds-inline-stack` component was
  renamed to `--tbds-inline-stack-gap`.

[0.4.0]: https://github.com/thoughtbot/design-system/compare/v0.3.0...v0.4.0

## [0.3.0] - 2019-06-19

### Added

- Added the `tbds-line-height-0` utility class.
- Added breakpoint variants for the `margin`, `padding`, and `text-align`
  utility classes, e.g. `tbds-margin-right-4@medium`
  and `tbds-text-align-right@large`.
- Added `inline-size` (`width`) utility classes (e.g. `tbds-inline-size-25%`)
  for the following lengths:

  - `20%`
  - `25%`
  - `33.3333%`
  - `40%`
  - `50%`
  - `60%`
  - `66.6666%`
  - `75%`
  - `80%`
  - `100%`

  Breakpoint-based variants are also available
  (e.g. `tbds-inline-size-25%@medium`).

- Added utility classes for margin and padding block & inline shorthands:

  - `tbds-margin-block-*`
  - `tbds-margin-inline-*`
  - `tbds-padding-block-*`
  - `tbds-padding-inline-*`

### Changed

- `tbds-app-frame__body--vertical-middle` was renamed to
  `tbds-app-frame__body--center-items`
- Layout properties and values now use logical dimensions instead of physical
  dimensions, for example `width` is now `inline-size` and `height` is now
  `block-size`. The following classes were updated to match the new syntax:

  - `tbds-text-align-left` is now `tbds-text-align-start`
  - `tbds-text-align-right` is now `tbds-text-align-end`
  - `tbds-margin-top-*` is now `tbds-margin-block-start-*`
  - `tbds-margin-right-*` is now `tbds-margin-inline-end-*`
  - `tbds-margin-bottom-*` is now `tbds-margin-block-end-*`
  - `tbds-margin-left-*` is now `tbds-margin-inline-start-*`
  - `tbds-padding-top-*` is now `tbds-padding-block-start-*`
  - `tbds-padding-right-*` is now `tbds-padding-inline-end-*`
  - `tbds-padding-bottom-*` is now `tbds-padding-block-end-*`
  - `tbds-padding-left-*` is now `tbds-padding-inline-start-*`
  - `tbds-button__icon--text-to-left` is now `tbds-button__icon--end`
  - `tbds-button__icon--text-to-right` is now `tbds-button__icon--start`
  - `tbds-media--vertical-center` is now `tbds-media--block-center`

### Fixed

- Fixed button icon alignment.

[0.3.0]: https://github.com/thoughtbot/design-system/compare/v0.2.0...v0.3.0

## [0.2.0] - 2019-05-10

### Added

- Global variables for styling focus outlines.
- `tbds-inline-stack` component.
- The block stack component now has a modifier to add a border between each
  item: `tbds-block-stack--bordered`.
- Added `tbds-icon` component for simple icons
- Added `breakpoints` to settings module which provides a few basic media
  queries

### Changed

- `$tbds-blue` is now `$tbds-brand-blue`, and its value changed from `#1568c1`
  to `#0b758c`.
- `tbds-stack` is now `tbds-block-stack`

### Removed

- `tbds-form__row` has been removed. Use the Stack component instead to achieve
  the same layout.

[0.2.0]: https://github.com/thoughtbot/design-system/compare/v0.1.0...v0.2.0

## [0.1.0] - 2019-04-19

### Changed

- Deprecated individual component packages (e.g. `@thoughtbot/tbds-button`)
  in favor of one primary package (`@thoughtbot/design-system`).

[0.1.0]: https://github.com/thoughtbot/design-system/releases/tag/v0.1.0
