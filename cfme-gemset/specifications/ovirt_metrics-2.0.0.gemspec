# -*- encoding: utf-8 -*-
# stub: ovirt_metrics 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ovirt_metrics".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Oleg Barenboim".freeze, "Jason Frey".freeze]
  s.date = "2017-12-05"
  s.description = "OvirtMetrics is an ActiveRecord-based gem for reading the oVirt History database.".freeze
  s.email = ["chessbyte@gmail.com".freeze, "fryguy9@gmail.com".freeze]
  s.homepage = "http://github.com/ManageIQ/ovirt_metrics".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "OvirtMetrics is an ActiveRecord-based gem for reading the oVirt History database.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, ["< 5.2", ">= 4.2.3"])
      s.add_runtime_dependency(%q<pg>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, ["< 5.2", ">= 4.2.3"])
      s.add_dependency(%q<pg>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, ["< 5.2", ">= 4.2.3"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
  end
end
