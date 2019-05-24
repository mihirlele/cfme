# -*- encoding: utf-8 -*-
# stub: ovirt 0.18.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ovirt".freeze
  s.version = "0.18.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Frey".freeze, "Brandon Dunne".freeze, "Keenan Brock".freeze, "Joe Rafaniello".freeze, "Greg Blomquist".freeze, "Martin Povolny".freeze, "Matthew Draper".freeze, "Richard Oliveri".freeze, "Chris Portman".freeze, "Adam Grare".freeze, "D\u00E1vid Hal\u00E1sz".freeze, "pkliczewski".freeze, "Juan Hernandez".freeze, "Oleg Barenboim".freeze, "Martin Betak".freeze, "Tomas Jelinek".freeze, "Piotr Kliczewski".freeze, "Moti Asayag".freeze, "Satoe Imaishi".freeze]
  s.date = "2017-12-04"
  s.description = "Ovirt provides a simple Object Oriented interface to the REST API of oVirt and RHEV-M servers.".freeze
  s.email = ["fryguy9@gmail.com".freeze, "brandondunne@hotmail.com".freeze, "keenan@thebrocks.net".freeze, "jrafanie@redhat.com".freeze, "gblomqui@redhat.com".freeze, "mpovolny@redhat.com".freeze, "matthew@trebex.net".freeze, "roliveri@redhat.com".freeze, "chris.portman@optusnet.com.au".freeze, "agrare@redhat.com".freeze, "dhalasz@redhat.com".freeze, "piotr.kliczewski@gmail.com".freeze, "juan.hernandez@redhat.com".freeze, "chessbyte@gmail.com".freeze, "mbetak@redhat.com".freeze, "tjelinek@redhat.com".freeze, "piotr.kliczewski@gmail.com".freeze, "masayag@redhat.com".freeze, "simaishi@redhat.com".freeze]
  s.homepage = "http://github.com/ManageIQ/ovirt".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Ovirt provides a simple Object Oriented interface to the REST API of oVirt and RHEV-M servers.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<activesupport>.freeze, ["< 5"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<factory_girl>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<more_core_extensions>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.6.8"])
      s.add_runtime_dependency(%q<rest-client>.freeze, [">= 2.0.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, ["< 5"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 4.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<more_core_extensions>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.6.8"])
      s.add_dependency(%q<rest-client>.freeze, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, ["< 5"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 4.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<more_core_extensions>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.6.8"])
    s.add_dependency(%q<rest-client>.freeze, [">= 2.0.0"])
  end
end
