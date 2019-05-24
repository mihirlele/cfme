# -*- encoding: utf-8 -*-
# stub: novnc-rails 0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "novnc-rails".freeze
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Martin Povolny".freeze]
  s.date = "2015-02-18"
  s.description = "noVNC HTML5 client packed for Rails application".freeze
  s.email = ["mpovolny@redhat.com".freeze]
  s.homepage = "http://novnc.com".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "VNC using HTML5 (WebSockets, Canvas).".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1.0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1.0"])
  end
end
