# -*- encoding: utf-8 -*-
# stub: graphql-preload 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "graphql-preload".freeze
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryan Foster, Etienne Tripier".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-11-03"
  s.email = ["etienne.tripier@grandrounds.com".freeze]
  s.homepage = "https://github.com/ConsultingMD/graphql-preload".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Preload ActiveRecord associations with graphql-batch".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["< 6", ">= 3.2"])
      s.add_runtime_dependency(%q<graphql>.freeze, ["< 2", ">= 1.5"])
      s.add_runtime_dependency(%q<graphql-batch>.freeze, ["~> 0.3"])
      s.add_runtime_dependency(%q<promise.rb>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.15"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["< 6", ">= 3.2"])
      s.add_dependency(%q<graphql>.freeze, ["< 2", ">= 1.5"])
      s.add_dependency(%q<graphql-batch>.freeze, ["~> 0.3"])
      s.add_dependency(%q<promise.rb>.freeze, ["~> 0.7"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["< 6", ">= 3.2"])
    s.add_dependency(%q<graphql>.freeze, ["< 2", ">= 1.5"])
    s.add_dependency(%q<graphql-batch>.freeze, ["~> 0.3"])
    s.add_dependency(%q<promise.rb>.freeze, ["~> 0.7"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
  end
end
