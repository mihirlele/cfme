# -*- encoding: utf-8 -*-
# stub: awesome_spawn 1.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "awesome_spawn".freeze
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Frey".freeze, "Brandon Dunne".freeze, "Joe Rafaniello".freeze, "Mo Morsi".freeze]
  s.date = "2016-06-22"
  s.description = "AwesomeSpawn is a module that provides some useful features over Ruby's Kernel.spawn.".freeze
  s.email = ["jfrey@redhat.com".freeze, "bdunne@redhat.com".freeze, "jrafanie@redhat.com".freeze, "mmorsi@redhat.com".freeze]
  s.homepage = "https://github.com/ManageIQ/awesome_spawn".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "AwesomeSpawn is a module that provides some useful features over Ruby's Kernel.spawn.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
  end
end
