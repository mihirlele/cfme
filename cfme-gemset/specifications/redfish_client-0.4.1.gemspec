# -*- encoding: utf-8 -*-
# stub: redfish_client 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "redfish_client".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tadej Borov\u0161ak".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-10-18"
  s.email = ["tadej.borovsak@xlab.si".freeze]
  s.homepage = "https://github.com/xlab-si/redfish-client-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.1".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Simple Redfish client library".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<excon>.freeze, ["~> 0.60"])
      s.add_runtime_dependency(%q<server_sent_events>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_development_dependency(%q<rake>.freeze, [">= 11.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.7"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.54.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    else
      s.add_dependency(%q<excon>.freeze, ["~> 0.60"])
      s.add_dependency(%q<server_sent_events>.freeze, ["~> 0.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_dependency(%q<rake>.freeze, [">= 11.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.7"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.54.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<excon>.freeze, ["~> 0.60"])
    s.add_dependency(%q<server_sent_events>.freeze, ["~> 0.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<rake>.freeze, [">= 11.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.7"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.54.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
