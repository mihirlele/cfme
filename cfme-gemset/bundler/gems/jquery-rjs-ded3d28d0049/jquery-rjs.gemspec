# -*- encoding: utf-8 -*-
# stub: jquery-rjs 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery-rjs".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aaron Eisenberger".freeze]
  s.date = "2019-05-08"
  s.email = "aaronchi@gmail.com".freeze
  s.files = ["Gemfile".freeze, "README".freeze, "Rakefile".freeze, "lib/action_view".freeze, "lib/action_view/helpers".freeze, "lib/action_view/helpers/jquery_helper.rb".freeze, "lib/action_view/helpers/jquery_ui_helper.rb".freeze, "lib/action_view/template".freeze, "lib/action_view/template/handlers".freeze, "lib/action_view/template/handlers/rjs.rb".freeze, "lib/jquery-rjs".freeze, "lib/jquery-rjs.rb".freeze, "lib/jquery-rjs/javascript_helper.rb".freeze, "lib/jquery-rjs/on_load_action_controller.rb".freeze, "lib/jquery-rjs/on_load_action_view.rb".freeze, "lib/jquery-rjs/renderers.rb".freeze, "lib/jquery-rjs/rendering.rb".freeze, "lib/jquery-rjs/selector_assertions.rb".freeze, "test/abstract_unit.rb".freeze, "test/assert_select_test.rb".freeze, "test/controller".freeze, "test/controller/caching_test.rb".freeze, "test/controller/content_type_test.rb".freeze, "test/controller/mime_responds_test.rb".freeze, "test/controller/new_base".freeze, "test/controller/new_base/content_type_test.rb".freeze, "test/controller/new_base/render_rjs_test.rb".freeze, "test/controller/render_js_test.rb".freeze, "test/fixtures".freeze, "test/fixtures/functional_caching".freeze, "test/fixtures/functional_caching/_partial.erb".freeze, "test/fixtures/functional_caching/formatted_fragment_cached.js.rjs".freeze, "test/fixtures/functional_caching/js_fragment_cached_with_partial.js.rjs".freeze, "test/fixtures/old_content_type".freeze, "test/fixtures/old_content_type/render_default_for_rjs.rjs".freeze, "test/fixtures/respond_to".freeze, "test/fixtures/respond_to/all_types_with_layout.js.rjs".freeze, "test/fixtures/respond_to/layouts".freeze, "test/fixtures/respond_to/layouts/standard.html.erb".freeze, "test/fixtures/respond_to/using_defaults.js.rjs".freeze, "test/fixtures/respond_to/using_defaults_with_type_list.js.rjs".freeze, "test/fixtures/respond_with".freeze, "test/fixtures/respond_with/using_resource.js.rjs".freeze, "test/fixtures/test".freeze, "test/fixtures/test/_one.html.erb".freeze, "test/fixtures/test/_partial.html.erb".freeze, "test/fixtures/test/_partial.js.erb".freeze, "test/fixtures/test/_two.html.erb".freeze, "test/fixtures/test/delete_with_js.rjs".freeze, "test/fixtures/test/enum_rjs_test.rjs".freeze, "test/fixtures/test/greeting.js.rjs".freeze, "test/fixtures/test/render_explicit_html_template.js.rjs".freeze, "test/fixtures/test/render_implicit_html_template.js.rjs".freeze, "test/javascript_helper_test.rb".freeze, "test/lib".freeze, "test/lib/controller".freeze, "test/lib/controller/fake_models.rb".freeze, "test/render_other_test.rb".freeze, "test/template".freeze, "test/template/jquery_helper_test.rb".freeze, "test/template/jquery_ui_helper_test.rb".freeze, "test/template/render_test.rb".freeze, "vendor/assets".freeze, "vendor/assets/javascripts".freeze, "vendor/assets/javascripts/jquery_rjs.js".freeze]
  s.homepage = "http://github.com/aaronchi/jquery-rjs".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "jQuery and RJS for Ruby on Rails".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.2"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.2"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.2"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
  end
end
