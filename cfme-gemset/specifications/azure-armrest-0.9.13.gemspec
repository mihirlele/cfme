# -*- encoding: utf-8 -*-
# stub: azure-armrest 0.9.13 ruby lib

Gem::Specification.new do |s|
  s.name = "azure-armrest".freeze
  s.version = "0.9.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel J. Berger".freeze, "Bronagh Sorota".freeze, "Greg Blomquist".freeze, "Bill Wei".freeze]
  s.date = "2018-09-12"
  s.description = "This is a Ruby interface for Azure using the newer REST API. This is\ndifferent than the current azure gem, which uses the older (XML) interface\nbehind the scenes.\n".freeze
  s.email = ["dberger@redhat.com".freeze, "bsorota@redhat.com".freeze, "gblomqui@redhat.com".freeze, "billwei@redhat.com".freeze]
  s.homepage = "http://github.com/ManageIQ/azure-armrest".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "An interface for ARM/JSON Azure REST API".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>.freeze, ["~> 2"])
      s.add_runtime_dependency(%q<rest-client>.freeze, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<memoist>.freeze, ["~> 0.15.0"])
      s.add_runtime_dependency(%q<azure-signature>.freeze, ["~> 0.2.3"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
      s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.5.0"])
      s.add_runtime_dependency(%q<parallel>.freeze, ["~> 1.12.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.7"])
    else
      s.add_dependency(%q<json>.freeze, ["~> 2"])
      s.add_dependency(%q<rest-client>.freeze, ["~> 2.0.0"])
      s.add_dependency(%q<memoist>.freeze, ["~> 0.15.0"])
      s.add_dependency(%q<azure-signature>.freeze, ["~> 0.2.3"])
      s.add_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
      s.add_dependency(%q<addressable>.freeze, ["~> 2.5.0"])
      s.add_dependency(%q<parallel>.freeze, ["~> 1.12.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<json>.freeze, ["~> 2"])
    s.add_dependency(%q<rest-client>.freeze, ["~> 2.0.0"])
    s.add_dependency(%q<memoist>.freeze, ["~> 0.15.0"])
    s.add_dependency(%q<azure-signature>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
    s.add_dependency(%q<addressable>.freeze, ["~> 2.5.0"])
    s.add_dependency(%q<parallel>.freeze, ["~> 1.12.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
  end
end
