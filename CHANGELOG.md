# Change Log

All notable changes to this project will be documented in this file. This
project adheres to [Semantic Versioning](http://semver.org).

## [Unreleased (`master`)][unreleased]

### Added

- Added the `tbds-line-height-0` utility class.
- Added breakpoint variants for the `margin`, `padding`, and `text-align`
  utility classes, e.g. `tbds-margin-right-4@medium`
  and `tbds-text-align-right@large`.
- Added `width` utility classes (e.g. `tbds-width-25%`) for the
  following lengths:

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

    Breakpoint-based variants are also available (e.g. `tbds-width-25%@medium`).

### Changed

- `tbds-app-frame__body--vertical-middle` was renamed to
  `tbds-app-frame__body--center-items`

### Fixed

- Fixed button icon alignment.

[unreleased]: https://github.com/thoughtbot/design-system/compare/v0.2.0...HEAD

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
