# -*- encoding: utf-8 -*-
# stub: font-fabulous 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "font-fabulous".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Red Hat".freeze]
  s.date = "2018-09-25"
  s.description = "A fabulous iconset packaged as a font".freeze
  s.homepage = "http://github.com/manageiq/font-fabulous".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "A fabulous iconset packaged as a font".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<fontcustom>.freeze, ["~> 2.0.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<fontcustom>.freeze, ["~> 2.0.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<fontcustom>.freeze, ["~> 2.0.0"])
  end
end
