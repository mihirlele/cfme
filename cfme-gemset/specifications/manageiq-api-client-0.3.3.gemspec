# -*- encoding: utf-8 -*-
# stub: manageiq-api-client 0.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-api-client".freeze
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alberto Bellotti".freeze, "Jason Frey".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-02-25"
  s.description = "\n    This gem provides Ruby access to the ManageIQ API by exposing the ManageIQ\n    collections, resources and related actions as Ruby objects and equivalent methods.\n  ".freeze
  s.email = ["abellott@redhat.com".freeze, "jfrey@redhat.com".freeze]
  s.homepage = "http://github.com/ManageIQ/manageiq-api-client".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "ManageIQ API Client".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 0.10.0"])
      s.add_runtime_dependency(%q<json>.freeze, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<more_core_extensions>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<query_relation>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.10.0"])
      s.add_dependency(%q<json>.freeze, ["~> 2.1.0"])
      s.add_dependency(%q<more_core_extensions>.freeze, [">= 0"])
      s.add_dependency(%q<query_relation>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.10.0"])
    s.add_dependency(%q<json>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<more_core_extensions>.freeze, [">= 0"])
    s.add_dependency(%q<query_relation>.freeze, [">= 0"])
  end
end
