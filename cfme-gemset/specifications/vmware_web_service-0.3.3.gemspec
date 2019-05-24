# -*- encoding: utf-8 -*-
# stub: vmware_web_service 0.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "vmware_web_service".freeze
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-01-25"
  s.description = "A ruby interface to Vmware Web Services SDK".freeze
  s.homepage = "https://github.com/ManageIQ/vmware_web_service".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "A ruby interface to Vmware Web Services SDK".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
      s.add_runtime_dependency(%q<ffi>.freeze, ["~> 1.9.3"])
      s.add_runtime_dependency(%q<ffi-vix_disk_lib>.freeze, ["~> 1.0.5"])
      s.add_runtime_dependency(%q<handsoap>.freeze, ["~> 0.2.5"])
      s.add_runtime_dependency(%q<httpclient>.freeze, ["~> 2.8.0"])
      s.add_runtime_dependency(%q<more_core_extensions>.freeze, ["~> 3.2"])
      s.add_runtime_dependency(%q<rbvmomi>.freeze, ["~> 1.13.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<manageiq-password>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.52"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
      s.add_dependency(%q<ffi>.freeze, ["~> 1.9.3"])
      s.add_dependency(%q<ffi-vix_disk_lib>.freeze, ["~> 1.0.5"])
      s.add_dependency(%q<handsoap>.freeze, ["~> 0.2.5"])
      s.add_dependency(%q<httpclient>.freeze, ["~> 2.8.0"])
      s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rbvmomi>.freeze, ["~> 1.13.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<manageiq-password>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.52"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
    s.add_dependency(%q<ffi>.freeze, ["~> 1.9.3"])
    s.add_dependency(%q<ffi-vix_disk_lib>.freeze, ["~> 1.0.5"])
    s.add_dependency(%q<handsoap>.freeze, ["~> 0.2.5"])
    s.add_dependency(%q<httpclient>.freeze, ["~> 2.8.0"])
    s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rbvmomi>.freeze, ["~> 1.13.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<manageiq-password>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.52"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
