# -*- encoding: utf-8 -*-
# stub: manageiq-appliance_console 3.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-appliance_console".freeze
  s.version = "3.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-02-14"
  s.description = "ManageIQ Appliance Console".freeze
  s.executables = ["appliance_console".freeze, "appliance_console_cli".freeze]
  s.files = ["bin/appliance_console".freeze, "bin/appliance_console_cli".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-appliance_console".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "ManageIQ Appliance Console".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.2.2"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
      s.add_runtime_dependency(%q<awesome_spawn>.freeze, ["~> 1.4"])
      s.add_runtime_dependency(%q<bcrypt>.freeze, ["~> 3.1.10"])
      s.add_runtime_dependency(%q<highline>.freeze, ["~> 1.6.21"])
      s.add_runtime_dependency(%q<i18n>.freeze, ["~> 0.7"])
      s.add_runtime_dependency(%q<linux_admin>.freeze, [">= 1.2.2", "~> 1.0"])
      s.add_runtime_dependency(%q<pg>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<trollop>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 4.2.2"])
      s.add_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
      s.add_dependency(%q<awesome_spawn>.freeze, ["~> 1.4"])
      s.add_dependency(%q<bcrypt>.freeze, ["~> 3.1.10"])
      s.add_dependency(%q<highline>.freeze, ["~> 1.6.21"])
      s.add_dependency(%q<i18n>.freeze, ["~> 0.7"])
      s.add_dependency(%q<linux_admin>.freeze, [">= 1.2.2", "~> 1.0"])
      s.add_dependency(%q<pg>.freeze, [">= 0"])
      s.add_dependency(%q<trollop>.freeze, ["~> 2.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.2.2"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
    s.add_dependency(%q<awesome_spawn>.freeze, ["~> 1.4"])
    s.add_dependency(%q<bcrypt>.freeze, ["~> 3.1.10"])
    s.add_dependency(%q<highline>.freeze, ["~> 1.6.21"])
    s.add_dependency(%q<i18n>.freeze, ["~> 0.7"])
    s.add_dependency(%q<linux_admin>.freeze, [">= 1.2.2", "~> 1.0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<trollop>.freeze, ["~> 2.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
