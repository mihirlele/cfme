# -*- encoding: utf-8 -*-
# stub: ruby-dbus 0.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-dbus".freeze
  s.version = "0.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ruby DBus Team".freeze]
  s.date = "2018-04-30"
  s.description = "Pure Ruby module for interaction with D-Bus IPC system".freeze
  s.email = "martin.github@vidner.net".freeze
  s.homepage = "https://github.com/mvidner/ruby-dbus".freeze
  s.licenses = ["LGPL v2.1".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Ruby module for interaction with D-Bus".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<packaging_rake_tasks>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.41.2"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<packaging_rake_tasks>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.41.2"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<packaging_rake_tasks>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.41.2"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
