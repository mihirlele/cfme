# -*- encoding: utf-8 -*-
# stub: openscap 0.4.8 ruby lib

Gem::Specification.new do |s|
  s.name = "openscap".freeze
  s.version = "0.4.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Simon Lukasik".freeze]
  s.date = "2018-04-20"
  s.description = "A FFI wrapper around the OpenSCAP library.\n  Currently it provides only subset of libopenscap functionality.".freeze
  s.email = "isimluk@fedoraproject.org".freeze
  s.homepage = "https://github.com/OpenSCAP/ruby-openscap".freeze
  s.licenses = ["GPL-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "A FFI wrapper around the OpenSCAP library".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_runtime_dependency(%q<ffi>.freeze, [">= 1.0.9"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<ffi>.freeze, [">= 1.0.9"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<ffi>.freeze, [">= 1.0.9"])
  end
end
