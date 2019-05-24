# -*- encoding: utf-8 -*-
# stub: inventory_refresh 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "inventory_refresh".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-01-04"
  s.description = "Topological Inventory Persister".freeze
  s.homepage = "https://github.com/ManageIQ/inventory_refresh".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Topological Inventory Persister".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["~> 5.0.6"])
      s.add_runtime_dependency(%q<more_core_extensions>.freeze, ["~> 3.5"])
      s.add_runtime_dependency(%q<pg>.freeze, ["~> 0.18.2"])
      s.add_development_dependency(%q<ancestry>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_development_dependency(%q<factory_girl>.freeze, ["~> 4.5.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["~> 5.0.6"])
      s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.5"])
      s.add_dependency(%q<pg>.freeze, ["~> 0.18.2"])
      s.add_dependency(%q<ancestry>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 4.5.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["~> 5.0.6"])
    s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.5"])
    s.add_dependency(%q<pg>.freeze, ["~> 0.18.2"])
    s.add_dependency(%q<ancestry>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 4.5.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
