# -*- encoding: utf-8 -*-
# stub: jquery-hotkeys-rails 0.7.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery-hotkeys-rails".freeze
  s.version = "0.7.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Derek Prior".freeze]
  s.date = "2013-06-07"
  s.description = "    jQuery Hotkeys is a plug-in that lets you easily add and remove handlers for\n    keyboard events anywhere in your code supporting almost any key combination.\n".freeze
  s.email = ["derekprior@gmail.com".freeze]
  s.homepage = "https://github.com/derekprior/jquery-hotkeys-rails".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "The jquery-hotkeys JavaScript library ready to play with Rails".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1"])
  end
end
