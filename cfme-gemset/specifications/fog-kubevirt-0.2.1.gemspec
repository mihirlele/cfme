# -*- encoding: utf-8 -*-
# stub: fog-kubevirt 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-kubevirt".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Kliczewski".freeze, "Moti Asayag".freeze, "Paulo Ribeiro".freeze, "Adam Grare".freeze, "Wesley Beary".freeze]
  s.date = "2019-02-05"
  s.description = "This library can be used as a module for `fog`.".freeze
  s.email = ["piotr.kliczewski@gmail.com".freeze, "masayag@redhat.com".freeze, "plribeiro3000@gmail.com".freeze, "agrare@redhat.com".freeze, "geemus@gmail.com".freeze]
  s.homepage = "https://github.com/pkliczewski/fog-kubevirt".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Module for the 'fog' gem to support Kubevirt.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-core>.freeze, ["~> 1.45"])
      s.add_runtime_dependency(%q<kubeclient>.freeze, ["~> 4.1.2"])
    else
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_dependency(%q<fog-core>.freeze, ["~> 1.45"])
      s.add_dependency(%q<kubeclient>.freeze, ["~> 4.1.2"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_dependency(%q<fog-core>.freeze, ["~> 1.45"])
    s.add_dependency(%q<kubeclient>.freeze, ["~> 4.1.2"])
  end
end
