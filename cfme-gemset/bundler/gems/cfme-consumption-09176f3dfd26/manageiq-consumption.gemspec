# -*- encoding: utf-8 -*-
# stub: manageiq-consumption 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-consumption".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "ManageIQ Consumption".freeze
  s.files = ["LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "app/helpers".freeze, "app/helpers/manageiq".freeze, "app/helpers/manageiq/showback".freeze, "app/helpers/manageiq/showback/time_converter_helper.rb".freeze, "app/helpers/manageiq/showback/units_converter_helper.rb".freeze, "app/helpers/manageiq/showback/utils_helper.rb".freeze, "app/models/manageiq/showback".freeze, "app/models/manageiq/showback/column_units.yml".freeze, "app/models/manageiq/showback/data_rollup".freeze, "app/models/manageiq/showback/data_rollup.rb".freeze, "app/models/manageiq/showback/data_rollup/cpu.rb".freeze, "app/models/manageiq/showback/data_rollup/disk.rb".freeze, "app/models/manageiq/showback/data_rollup/fixed.rb".freeze, "app/models/manageiq/showback/data_rollup/flavor.rb".freeze, "app/models/manageiq/showback/data_rollup/mem.rb".freeze, "app/models/manageiq/showback/data_rollup/metering.rb".freeze, "app/models/manageiq/showback/data_rollup/net.rb".freeze, "app/models/manageiq/showback/data_rollup/storage.rb".freeze, "app/models/manageiq/showback/data_view.rb".freeze, "app/models/manageiq/showback/envelope.rb".freeze, "app/models/manageiq/showback/input_measure.rb".freeze, "app/models/manageiq/showback/manager.rb".freeze, "app/models/manageiq/showback/price_plan.rb".freeze, "app/models/manageiq/showback/rate.rb".freeze, "app/models/manageiq/showback/tier.rb".freeze, "lib/manageiq-consumption.rb".freeze, "lib/manageiq/showback".freeze, "lib/manageiq/showback/engine.rb".freeze, "lib/manageiq/showback/version.rb".freeze, "spec/factories/data_rollup.rb".freeze, "spec/factories/data_view.rb".freeze, "spec/factories/envelope.rb".freeze, "spec/factories/input_measure.rb".freeze, "spec/factories/price_plan.rb".freeze, "spec/factories/rate.rb".freeze, "spec/factories/tier.rb".freeze, "spec/helpers".freeze, "spec/helpers/time_converter_helper_spec.rb".freeze, "spec/helpers/units_converter_helper_spec.rb".freeze, "spec/helpers/utils_helper_spec.rb".freeze, "spec/models/data_rollup".freeze, "spec/models/data_rollup/cpu_spec.rb".freeze, "spec/models/data_rollup/flavor_spec.rb".freeze, "spec/models/data_rollup/mem_spec.rb".freeze, "spec/models/data_rollup_spec.rb".freeze, "spec/models/data_view_spec.rb".freeze, "spec/models/envelope_spec.rb".freeze, "spec/models/input_measure_spec.rb".freeze, "spec/models/manageiq/showback".freeze, "spec/models/manageiq/showback/version_spec.rb".freeze, "spec/models/manager_spec.rb".freeze, "spec/models/price_plan_spec.rb".freeze, "spec/models/rate_spec.rb".freeze, "spec/models/tier_spec.rb".freeze, "spec/rails_helper.rb".freeze, "spec/showback_spec.rb".freeze, "spec/spec_helper.rb".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-consumption".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "ManageIQ Consumption".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<money-rails>.freeze, ["~> 1.9"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    else
      s.add_dependency(%q<money-rails>.freeze, ["~> 1.9"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<money-rails>.freeze, ["~> 1.9"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
  end
end
