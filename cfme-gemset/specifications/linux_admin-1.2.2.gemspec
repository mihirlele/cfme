# -*- encoding: utf-8 -*-
# stub: linux_admin 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "linux_admin".freeze
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brandon Dunne".freeze, "Jason Frey".freeze, "Mo Morsi".freeze, "Joe Rafaniello".freeze, "Keenan Brock".freeze, "Thomas Wiest".freeze, "Nick Carboni".freeze, "Martin Hradil".freeze, "Yuri Rudman".freeze, "Oleg Barenboim".freeze, "Alon Goldboim".freeze, "\u0160imon Luka\u0161\u00EDk".freeze, "Joe VLcek".freeze, "Bo Yao".freeze, "DuskyPrawn".freeze, "Petr Blaho".freeze, "Nick LaMuro".freeze]
  s.date = "2018-09-27"
  s.description = "\nLinuxAdmin is a module to simplify management of linux systems.\nIt should be a single place to manage various system level configurations,\nregistration, updates, etc.\n".freeze
  s.email = ["brandondunne@hotmail.com".freeze, "fryguy9@gmail.com".freeze, "mmorsi@redhat.com".freeze, "jrafanie@redhat.com".freeze, "keenan@thebrocks.net".freeze, "twiest@redhat.com".freeze, "ncarboni@redhat.com".freeze, "mhradil@redhat.com".freeze, "yrudman@redhat.com".freeze, "chessbyte@gmail.com".freeze, "alongoldboim@gmail.com".freeze, "isimluk@fedoraproject.org".freeze, "jvlcek@redhat.com".freeze, "boyao@redhat.com".freeze, "32548790+DuskyPrawn@users.noreply.github.com".freeze, "pblaho@redhat.com".freeze, "nicklamuro@gmail.com".freeze]
  s.homepage = "http://github.com/ManageIQ/linux_admin".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "LinuxAdmin is a module to simplify management of linux systems.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<awesome_spawn>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<inifile>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<more_core_extensions>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.8.2", "~> 1.8"])
      s.add_runtime_dependency(%q<openscap>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<net-ssh>.freeze, ["~> 4.2.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<awesome_spawn>.freeze, ["~> 1.3"])
      s.add_dependency(%q<inifile>.freeze, [">= 0"])
      s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.8.2", "~> 1.8"])
      s.add_dependency(%q<openscap>.freeze, [">= 0"])
      s.add_dependency(%q<net-ssh>.freeze, ["~> 4.2.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<awesome_spawn>.freeze, ["~> 1.3"])
    s.add_dependency(%q<inifile>.freeze, [">= 0"])
    s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.8.2", "~> 1.8"])
    s.add_dependency(%q<openscap>.freeze, [">= 0"])
    s.add_dependency(%q<net-ssh>.freeze, ["~> 4.2.0"])
  end
end
