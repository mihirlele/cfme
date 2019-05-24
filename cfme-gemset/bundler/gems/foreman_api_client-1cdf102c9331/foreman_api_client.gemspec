# -*- encoding: utf-8 -*-
# stub: foreman_api_client 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "foreman_api_client".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keenan Brock".freeze, "Brandon Dunne".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-05-08"
  s.description = "Foreman apipie-bindings wrapper".freeze
  s.email = ["keenan@thebrocks.net".freeze, "bdunne@redhat.com".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".travis.yml".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "bin/console".freeze, "bin/setup".freeze, "foreman_api_client.gemspec".freeze, "lib/foreman_api_client.rb".freeze, "lib/foreman_api_client/connection.rb".freeze, "lib/foreman_api_client/host.rb".freeze, "lib/foreman_api_client/logging.rb".freeze, "lib/foreman_api_client/null_logger.rb".freeze, "lib/foreman_api_client/paged_response.rb".freeze, "lib/foreman_api_client/version.rb".freeze]
  s.homepage = "https://github.com/ManageIQ/foreman_api_client".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Foreman apipie-bindings wrapper".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<apipie-bindings>.freeze, ["= 0.0.15"])
      s.add_runtime_dependency(%q<rest-client>.freeze, [">= 2.0.0.rc1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<vcr>.freeze, ["~> 3.0.2"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 2.3.1"])
    else
      s.add_dependency(%q<apipie-bindings>.freeze, ["= 0.0.15"])
      s.add_dependency(%q<rest-client>.freeze, [">= 2.0.0.rc1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<vcr>.freeze, ["~> 3.0.2"])
      s.add_dependency(%q<webmock>.freeze, ["~> 2.3.1"])
    end
  else
    s.add_dependency(%q<apipie-bindings>.freeze, ["= 0.0.15"])
    s.add_dependency(%q<rest-client>.freeze, [">= 2.0.0.rc1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<vcr>.freeze, ["~> 3.0.2"])
    s.add_dependency(%q<webmock>.freeze, ["~> 2.3.1"])
  end
end
