# -*- encoding: utf-8 -*-
# stub: manageiq-graphql 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-graphql".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Authors".freeze]
  s.date = "2019-05-08"
  s.description = "This project includes the Rails engine powering the GraphQL API for ManageIQ - https://github.com/ManageIQ/manageiq".freeze
  s.files = ["LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "app/controllers".freeze, "app/controllers/manageiq".freeze, "app/controllers/manageiq/graphql".freeze, "app/controllers/manageiq/graphql/application_controller.rb".freeze, "app/controllers/manageiq/graphql/graphql_controller.rb".freeze, "app/javascript".freeze, "app/javascript/graphql-explorer".freeze, "app/javascript/graphql-explorer/components".freeze, "app/javascript/graphql-explorer/components/GraphQLExplorer.js".freeze, "app/javascript/graphql-explorer/helpers".freeze, "app/javascript/graphql-explorer/helpers/graphQLFetcher.js".freeze, "app/javascript/graphql-explorer/index.js".freeze, "app/javascript/packs".freeze, "app/javascript/packs/graphql-explorer.js".freeze, "config/routes.rb".freeze, "config/settings.yml".freeze, "config/spring.rb".freeze, "lib/manageiq-graphql.rb".freeze, "lib/manageiq/graphql".freeze, "lib/manageiq/graphql.rb".freeze, "lib/manageiq/graphql/engine.rb".freeze, "lib/manageiq/graphql/field_name_camelizer.rb".freeze, "lib/manageiq/graphql/queue_service.rb".freeze, "lib/manageiq/graphql/rest_api_proxy.rb".freeze, "lib/manageiq/graphql/schema.rb".freeze, "lib/manageiq/graphql/types".freeze, "lib/manageiq/graphql/types/date_time.rb".freeze, "lib/manageiq/graphql/types/host.rb".freeze, "lib/manageiq/graphql/types/mutation.rb".freeze, "lib/manageiq/graphql/types/mutations".freeze, "lib/manageiq/graphql/types/mutations/add_tags.rb".freeze, "lib/manageiq/graphql/types/mutations/perform_vm_power_operation.rb".freeze, "lib/manageiq/graphql/types/mutations/remove_tags.rb".freeze, "lib/manageiq/graphql/types/provider.rb".freeze, "lib/manageiq/graphql/types/query.rb".freeze, "lib/manageiq/graphql/types/queue_result.rb".freeze, "lib/manageiq/graphql/types/service.rb".freeze, "lib/manageiq/graphql/types/tag.rb".freeze, "lib/manageiq/graphql/types/taggable.rb".freeze, "lib/manageiq/graphql/types/user.rb".freeze, "lib/manageiq/graphql/types/vm.rb".freeze, "lib/manageiq/graphql/types/vm_power_operation.rb".freeze, "lib/manageiq/graphql/version.rb".freeze, "lib/tasks/manageiq".freeze, "lib/tasks/manageiq/graphql_tasks.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-graphql".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "The GraphQL API for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<graphql>.freeze, ["~> 1.7"])
      s.add_runtime_dependency(%q<graphql-batch>.freeze, ["~> 0.3.8"])
      s.add_runtime_dependency(%q<graphql-preload>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<spring>.freeze, [">= 0"])
      s.add_development_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<graphql>.freeze, ["~> 1.7"])
      s.add_dependency(%q<graphql-batch>.freeze, ["~> 0.3.8"])
      s.add_dependency(%q<graphql-preload>.freeze, ["~> 1.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<spring>.freeze, [">= 0"])
      s.add_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<graphql>.freeze, ["~> 1.7"])
    s.add_dependency(%q<graphql-batch>.freeze, ["~> 0.3.8"])
    s.add_dependency(%q<graphql-preload>.freeze, ["~> 1.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<spring>.freeze, [">= 0"])
    s.add_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
  end
end
