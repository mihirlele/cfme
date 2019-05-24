# -*- encoding: utf-8 -*-
# stub: xclarity_client 0.6.5 ruby lib

Gem::Specification.new do |s|
  s.name = "xclarity_client".freeze
  s.version = "0.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Manasa Rao".freeze, "Rodney H. Brown".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-10-22"
  s.email = ["mrao@lenovo.com".freeze, "rbrown4@lenovo.com".freeze]
  s.homepage = "https://github.com/lenovo/xclarity_client".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Lenovo XClarity API Client".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<apib-mock_server>.freeze, ["~> 1.0.3"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday-cookie_jar>.freeze, ["~> 0.0.6"])
      s.add_runtime_dependency(%q<httpclient>.freeze, ["~> 2.8.3"])
      s.add_runtime_dependency(%q<uuid>.freeze, ["~> 2.3.8"])
      s.add_runtime_dependency(%q<faker>.freeze, ["~> 1.8.3"])
      s.add_runtime_dependency(%q<json-schema>.freeze, ["~> 2.8.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<apib-mock_server>.freeze, ["~> 1.0.3"])
      s.add_dependency(%q<webmock>.freeze, ["~> 2.1.0"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<faraday-cookie_jar>.freeze, ["~> 0.0.6"])
      s.add_dependency(%q<httpclient>.freeze, ["~> 2.8.3"])
      s.add_dependency(%q<uuid>.freeze, ["~> 2.3.8"])
      s.add_dependency(%q<faker>.freeze, ["~> 1.8.3"])
      s.add_dependency(%q<json-schema>.freeze, ["~> 2.8.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<apib-mock_server>.freeze, ["~> 1.0.3"])
    s.add_dependency(%q<webmock>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<faraday-cookie_jar>.freeze, ["~> 0.0.6"])
    s.add_dependency(%q<httpclient>.freeze, ["~> 2.8.3"])
    s.add_dependency(%q<uuid>.freeze, ["~> 2.3.8"])
    s.add_dependency(%q<faker>.freeze, ["~> 1.8.3"])
    s.add_dependency(%q<json-schema>.freeze, ["~> 2.8.0"])
  end
end
