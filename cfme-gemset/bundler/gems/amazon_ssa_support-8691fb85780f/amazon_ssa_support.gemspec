# -*- encoding: utf-8 -*-
# stub: amazon_ssa_support 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "amazon_ssa_support".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "This is a ruby interface for SSA on Amazon EC2 instances and images".freeze
  s.executables = ["amazon_ssa_agent".freeze]
  s.files = [".codeclimate.yml".freeze, ".gitignore".freeze, ".rspec".freeze, ".rspec_ci".freeze, ".rubocop.yml".freeze, ".rubocop_cc.yml".freeze, ".rubocop_local.yml".freeze, ".travis.yml".freeze, "CODE_OF_CONDUCT.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "amazon_ssa_support.gemspec".freeze, "bin/amazon_ssa_agent".freeze, "bin/console".freeze, "bin/setup".freeze, "lib/amazon_ssa_support.rb".freeze, "lib/amazon_ssa_support/instance_metadata.rb".freeze, "lib/amazon_ssa_support/miq_ec2_vm/miq_ec2_ebs_image.rb".freeze, "lib/amazon_ssa_support/miq_ec2_vm/miq_ec2_ebs_instance.rb".freeze, "lib/amazon_ssa_support/miq_ec2_vm/miq_ec2_ebs_vmbase.rb".freeze, "lib/amazon_ssa_support/miq_ec2_vm/miq_ec2_vm.rb".freeze, "lib/amazon_ssa_support/miq_ec2_vm/miq_ec2_vmbase.rb".freeze, "lib/amazon_ssa_support/rolling_s3_logger.rb".freeze, "lib/amazon_ssa_support/ssa_bucket.rb".freeze, "lib/amazon_ssa_support/ssa_common.rb".freeze, "lib/amazon_ssa_support/ssa_heartbeat.rb".freeze, "lib/amazon_ssa_support/ssa_queue.rb".freeze, "lib/amazon_ssa_support/ssa_queue_extractor.rb".freeze, "lib/amazon_ssa_support/version.rb".freeze]
  s.homepage = "https://github.com/ManageIQ/amazon_ssa_support".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Supporting files and libraries for SmartState Analysis on Amazone EC2".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk>.freeze, ["~> 2.9.7"])
      s.add_runtime_dependency(%q<log_decorator>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<manageiq-gems-pending>.freeze, ["~> 0"])
      s.add_runtime_dependency(%q<manageiq-smartstate>.freeze, ["~> 0.2"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<aws-sdk>.freeze, ["~> 2.9.7"])
      s.add_dependency(%q<log_decorator>.freeze, ["~> 0.1"])
      s.add_dependency(%q<manageiq-gems-pending>.freeze, ["~> 0"])
      s.add_dependency(%q<manageiq-smartstate>.freeze, ["~> 0.2"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<aws-sdk>.freeze, ["~> 2.9.7"])
    s.add_dependency(%q<log_decorator>.freeze, ["~> 0.1"])
    s.add_dependency(%q<manageiq-gems-pending>.freeze, ["~> 0"])
    s.add_dependency(%q<manageiq-smartstate>.freeze, ["~> 0.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
