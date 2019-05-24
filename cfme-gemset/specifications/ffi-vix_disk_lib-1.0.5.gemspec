# -*- encoding: utf-8 -*-
# stub: ffi-vix_disk_lib 1.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "ffi-vix_disk_lib".freeze
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jerry Keselman".freeze, "Rich Oliveri".freeze, "Jason Frey".freeze]
  s.date = "2019-01-11"
  s.description = "Ruby FFI Binding to VMware VixDiskLib.".freeze
  s.email = ["jerryk@redhat.com".freeze, "roliveri@redhat.com".freeze, "jfrey@redhat.com".freeze]
  s.homepage = "http://github.com/ManageIQ/ffi-vix_disk_lib".freeze
  s.licenses = ["APL 2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Ruby FFI Binding to VMware VixDiskLib.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<ffi>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<ffi>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<ffi>.freeze, [">= 0"])
  end
end
