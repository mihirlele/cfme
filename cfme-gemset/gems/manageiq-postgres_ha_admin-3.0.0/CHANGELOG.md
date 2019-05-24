# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [3.0.0] - 2018-09-05

### Added
- Allow users of the gem to specify a logger object [#7](https://github.com/ManageIQ/manageiq-postgres_ha_admin/pull/7)

### Changed
- Make sources of database connection info pluggable [#8](https://github.com/ManageIQ/manageiq-postgres_ha_admin/pull/8)
- Improve FailoverDatabases/ServerStore class [#9](https://github.com/ManageIQ/manageiq-postgres_ha_admin/pull/9)
- Make failover monitor generic [#10](https://github.com/ManageIQ/manageiq-postgres_ha_admin/pull/10)

## [2.0.0] - 2018-08-01

### Added
- Add pg-dsn_parser to the gemspec [#5](https://github.com/ManageIQ/manageiq-postgres_ha_admin/pull/5)
- Add postgresql addon for travis [#6](https://github.com/ManageIQ/manageiq-postgres_ha_admin/pull/6)

### Changed
- Make changes for upgrading repmgr to version 4 [#4](https://github.com/ManageIQ/manageiq-postgres_ha_admin/pull/4)

[Unreleased]: https://github.com/ManageIQ/manageiq-postgres_ha_admin/compare/v3.0.0...master
[3.0.0]: https://github.com/ManageIQ/manageiq-postgres_ha_admin/compare/v2.0.0...v3.0.0
[2.0.0]: https://github.com/ManageIQ/manageiq-postgres_ha_admin/compare/v1.0.0...v2.0.0
