# -*- encoding: utf-8 -*-
# stub: promise.rb 0.7.4 ruby lib

Gem::Specification.new do |s|
  s.name = "promise.rb".freeze
  s.version = "0.7.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lars Gierth".freeze]
  s.date = "2017-08-25"
  s.description = "Promises/A+ for Ruby".freeze
  s.email = ["lars.gierth@gmail.com".freeze]
  s.homepage = "https://github.com/lgierth/promise".freeze
  s.licenses = ["Public Domain".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Ruby implementation of the Promises/A+ spec".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<benchmark-ips>.freeze, [">= 0"])
      s.add_development_dependency(%q<benchmark-memory>.freeze, [">= 0"])
      s.add_development_dependency(%q<memory_profiler>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<benchmark-ips>.freeze, [">= 0"])
      s.add_dependency(%q<benchmark-memory>.freeze, [">= 0"])
      s.add_dependency(%q<memory_profiler>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<benchmark-ips>.freeze, [">= 0"])
    s.add_dependency(%q<benchmark-memory>.freeze, [">= 0"])
    s.add_dependency(%q<memory_profiler>.freeze, [">= 0"])
  end
end
