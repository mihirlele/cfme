# -*- encoding: utf-8 -*-
# stub: manageiq-messaging 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-messaging".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Authors".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-05-08"
  s.description = "Client library for ManageIQ components to exchange messages through its internal message bus.".freeze
  s.files = [".codeclimate.yml".freeze, ".gitignore".freeze, ".rspec".freeze, ".rubocop.yml".freeze, ".rubocop_cc.yml".freeze, ".rubocop_local.yml".freeze, ".travis.yml".freeze, "CHANGES".freeze, "CODE_OF_CONDUCT.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "bin/console".freeze, "bin/setup".freeze, "examples/README.md".freeze, "examples/background_job.rb".freeze, "examples/common.rb".freeze, "examples/message.rb".freeze, "lib/manageiq-messaging.rb".freeze, "lib/manageiq/messaging.rb".freeze, "lib/manageiq/messaging/client.rb".freeze, "lib/manageiq/messaging/common.rb".freeze, "lib/manageiq/messaging/kafka.rb".freeze, "lib/manageiq/messaging/kafka/background_job.rb".freeze, "lib/manageiq/messaging/kafka/client.rb".freeze, "lib/manageiq/messaging/kafka/common.rb".freeze, "lib/manageiq/messaging/kafka/queue.rb".freeze, "lib/manageiq/messaging/kafka/topic.rb".freeze, "lib/manageiq/messaging/null_logger.rb".freeze, "lib/manageiq/messaging/received_message.rb".freeze, "lib/manageiq/messaging/stomp.rb".freeze, "lib/manageiq/messaging/stomp/background_job.rb".freeze, "lib/manageiq/messaging/stomp/client.rb".freeze, "lib/manageiq/messaging/stomp/common.rb".freeze, "lib/manageiq/messaging/stomp/queue.rb".freeze, "lib/manageiq/messaging/stomp/topic.rb".freeze, "lib/manageiq/messaging/version.rb".freeze, "manageiq-messaging.gemspec".freeze]
  s.homepage = "http://github.com/ManageIQ/manageiq-messaging".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Client library for ManageIQ components to exchange messages through its internal message bus.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
      s.add_runtime_dependency(%q<ruby-kafka>.freeze, ["~> 0.7.0"])
      s.add_runtime_dependency(%q<stomp>.freeze, ["~> 1.4.4"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
      s.add_dependency(%q<ruby-kafka>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<stomp>.freeze, ["~> 1.4.4"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 4.2.2"])
    s.add_dependency(%q<ruby-kafka>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<stomp>.freeze, ["~> 1.4.4"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
