# -*- encoding: utf-8 -*-
# stub: pg-dsn_parser 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pg-dsn_parser".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Carboni".freeze]
  s.date = "2016-07-28"
  s.description = "A parser for PostgreSQL DSNs".freeze
  s.email = ["ncarboni@redhat.com".freeze]
  s.homepage = "https://github.com/ManageIQ/pg-dsn_parser".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "A parser for PostgreSQL DSNs".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
