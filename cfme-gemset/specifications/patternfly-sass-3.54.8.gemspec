# -*- encoding: utf-8 -*-
# stub: patternfly-sass 3.54.8 ruby lib

Gem::Specification.new do |s|
  s.name = "patternfly-sass".freeze
  s.version = "3.54.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["D\u00E1vid Hal\u00E1sz".freeze, "Alex Wood".freeze]
  s.date = "2018-09-19"
  s.email = "patternflyui@gmail.com".freeze
  s.homepage = "https://github.com/Patternfly/patternfly".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Red Hat's Patternfly, converted to Sass and ready to drop into Rails".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass>.freeze, ["~> 3.4.15"])
      s.add_runtime_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.7"])
      s.add_runtime_dependency(%q<font-awesome-sass>.freeze, ["~> 4.6.2"])
    else
      s.add_dependency(%q<sass>.freeze, ["~> 3.4.15"])
      s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.7"])
      s.add_dependency(%q<font-awesome-sass>.freeze, ["~> 4.6.2"])
    end
  else
    s.add_dependency(%q<sass>.freeze, ["~> 3.4.15"])
    s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.7"])
    s.add_dependency(%q<font-awesome-sass>.freeze, ["~> 4.6.2"])
  end
end
