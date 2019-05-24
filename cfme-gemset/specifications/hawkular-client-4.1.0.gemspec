# -*- encoding: utf-8 -*-
# stub: hawkular-client 4.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "hawkular-client".freeze
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Libor Zoubek".freeze, "Heiko W. Rupp".freeze, "Jirka Kremser".freeze, "Federico Simoncelli".freeze]
  s.date = "2017-08-09"
  s.description = "    A Ruby client for Hawkular\n".freeze
  s.email = ["lzoubek@redhat.com".freeze, "hrupp@redhat.com".freeze, "jkremser@redhat.com".freeze]
  s.extra_rdoc_files = ["README.rdoc".freeze, "CHANGES.rdoc".freeze]
  s.files = ["CHANGES.rdoc".freeze, "README.rdoc".freeze]
  s.homepage = "https://github.com/hawkular/hawkular-client-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rdoc_options = ["--title".freeze, "hawkular-client".freeze, "--main".freeze, "README.rdoc".freeze, "--line-numbers".freeze, "--inline-source".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "A Ruby client for Hawkular".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>.freeze, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<websocket-client-simple>.freeze, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_development_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<actionpack>.freeze, ["~> 4"])
      s.add_development_dependency(%q<rake>.freeze, ["< 11"])
      s.add_development_dependency(%q<simple-websocket-vcr>.freeze, ["= 0.1.0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.34.2"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<rack>.freeze, ["~> 1.6.4"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rest-client>.freeze, ["~> 2.0.0"])
      s.add_dependency(%q<websocket-client-simple>.freeze, ["~> 0.3.0"])
      s.add_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_dependency(%q<actionpack>.freeze, ["~> 4"])
      s.add_dependency(%q<rake>.freeze, ["< 11"])
      s.add_dependency(%q<simple-websocket-vcr>.freeze, ["= 0.1.0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
      s.add_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.34.2"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<rack>.freeze, ["~> 1.6.4"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rest-client>.freeze, ["~> 2.0.0"])
    s.add_dependency(%q<websocket-client-simple>.freeze, ["~> 0.3.0"])
    s.add_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
    s.add_dependency(%q<actionpack>.freeze, ["~> 4"])
    s.add_dependency(%q<rake>.freeze, ["< 11"])
    s.add_dependency(%q<simple-websocket-vcr>.freeze, ["= 0.1.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.34.2"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<rack>.freeze, ["~> 1.6.4"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
  end
end
