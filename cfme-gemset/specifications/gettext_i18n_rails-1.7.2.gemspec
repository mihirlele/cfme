# -*- encoding: utf-8 -*-
# stub: gettext_i18n_rails 1.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "gettext_i18n_rails".freeze
  s.version = "1.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Grosser".freeze]
  s.date = "2016-05-18"
  s.email = "michael@grosser.it".freeze
  s.homepage = "http://github.com/grosser/gettext_i18n_rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Simple FastGettext Rails integration.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fast_gettext>.freeze, [">= 0.9.0"])
      s.add_development_dependency(%q<bump>.freeze, [">= 0"])
      s.add_development_dependency(%q<gettext>.freeze, [">= 3.0.2"])
      s.add_development_dependency(%q<haml>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<ruby_parser>.freeze, [">= 3.7.1"])
      s.add_development_dependency(%q<sexp_processor>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<slim>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<wwtd>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fast_gettext>.freeze, [">= 0.9.0"])
      s.add_dependency(%q<bump>.freeze, [">= 0"])
      s.add_dependency(%q<gettext>.freeze, [">= 3.0.2"])
      s.add_dependency(%q<haml>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 0"])
      s.add_dependency(%q<ruby_parser>.freeze, [">= 3.7.1"])
      s.add_dependency(%q<sexp_processor>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<slim>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<wwtd>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fast_gettext>.freeze, [">= 0.9.0"])
    s.add_dependency(%q<bump>.freeze, [">= 0"])
    s.add_dependency(%q<gettext>.freeze, [">= 3.0.2"])
    s.add_dependency(%q<haml>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<ruby_parser>.freeze, [">= 3.7.1"])
    s.add_dependency(%q<sexp_processor>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<slim>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<wwtd>.freeze, [">= 0"])
  end
end
