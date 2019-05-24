# -*- encoding: utf-8 -*-
# stub: ruport 1.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruport".freeze
  s.version = "1.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregory Brown".freeze, "Mike Milner".freeze, "Andrew France".freeze]
  s.date = "2011-01-07"
  s.description = "      Ruby Reports is a software library that aims to make the task of reporting\n      less tedious and painful. It provides tools for data acquisition,\n      database interaction, formatting, and parsing/munging.\n".freeze
  s.email = "gregory.t.brown@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["AUTHORS".freeze, "COPYING".freeze, "HACKING".freeze, "LICENSE".freeze, "README.rdoc".freeze, "Rakefile".freeze, "examples/RWEmerson.jpg".freeze, "examples/add_row_table.rb".freeze, "examples/anon.rb".freeze, "examples/btree/commaleon/commaleon.rb".freeze, "examples/btree/commaleon/sample_data/ticket_count.csv".freeze, "examples/btree/commaleon/sample_data/ticket_count2.csv".freeze, "examples/centered_pdf_text_box.rb".freeze, "examples/data/tattle.dump".freeze, "examples/data/wine.csv".freeze, "examples/example.csv".freeze, "examples/line_plotter.rb".freeze, "examples/pdf_grouping.rb".freeze, "examples/pdf_report_with_common_base.rb".freeze, "examples/pdf_table.rb".freeze, "examples/pdf_table_from_csv.rb".freeze, "examples/pdf_table_simple.rb".freeze, "examples/png_embed.rb".freeze, "examples/roadmap.png".freeze, "examples/row_renderer.rb".freeze, "examples/simple_pdf_lines.rb".freeze, "examples/simple_templating_example.rb".freeze, "examples/tattle_ruby_version.rb".freeze, "examples/tattle_rubygems_version.rb".freeze, "examples/trac_ticket_status.rb".freeze, "lib/ruport.rb".freeze, "lib/ruport/controller.rb".freeze, "lib/ruport/controller/grouping.rb".freeze, "lib/ruport/controller/table.rb".freeze, "lib/ruport/data.rb".freeze, "lib/ruport/data/feeder.rb".freeze, "lib/ruport/data/grouping.rb".freeze, "lib/ruport/data/record.rb".freeze, "lib/ruport/data/table.rb".freeze, "lib/ruport/extensions.rb".freeze, "lib/ruport/formatter.rb".freeze, "lib/ruport/formatter/csv.rb".freeze, "lib/ruport/formatter/html.rb".freeze, "lib/ruport/formatter/pdf.rb".freeze, "lib/ruport/formatter/prawn_pdf.rb".freeze, "lib/ruport/formatter/template.rb".freeze, "lib/ruport/formatter/text.rb".freeze, "lib/ruport/version.rb".freeze, "lib/uport.rb".freeze, "test/controller_test.rb".freeze, "test/csv_formatter_test.rb".freeze, "test/data_feeder_test.rb".freeze, "test/grouping_test.rb".freeze, "test/helpers.rb".freeze, "test/html_formatter_test.rb".freeze, "test/pdf_formatter_test.rb".freeze, "test/record_test.rb".freeze, "test/samples/addressbook.csv".freeze, "test/samples/data.csv".freeze, "test/samples/data.tsv".freeze, "test/samples/dates.csv".freeze, "test/samples/erb_test.sql".freeze, "test/samples/query_test.sql".freeze, "test/samples/ruport_test.sql".freeze, "test/samples/sales.csv".freeze, "test/samples/test.sql".freeze, "test/samples/test.yaml".freeze, "test/samples/ticket_count.csv".freeze, "test/table_pivot_test.rb".freeze, "test/table_test.rb".freeze, "test/template_test.rb".freeze, "test/text_formatter_test.rb".freeze, "util/bench/data/record/bench_as_vs_to.rb".freeze, "util/bench/data/record/bench_constructor.rb".freeze, "util/bench/data/record/bench_indexing.rb".freeze, "util/bench/data/record/bench_reorder.rb".freeze, "util/bench/data/record/bench_to_a.rb".freeze, "util/bench/data/table/bench_column_manip.rb".freeze, "util/bench/data/table/bench_dup.rb".freeze, "util/bench/data/table/bench_init.rb".freeze, "util/bench/data/table/bench_manip.rb".freeze, "util/bench/formatter/bench_csv.rb".freeze, "util/bench/formatter/bench_html.rb".freeze, "util/bench/formatter/bench_pdf.rb".freeze, "util/bench/formatter/bench_text.rb".freeze, "util/bench/samples/tattle.csv".freeze, "util/release/freshmeat.rb".freeze, "util/release/raa.rb".freeze]
  s.homepage = "http://rubyreports.org".freeze
  s.rdoc_options = ["--title".freeze, "Ruport Documentation".freeze, "--main".freeze, "README.rdoc".freeze, "-q".freeze]
  s.rubyforge_project = "ruport".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "A generalized Ruby report generation and templating engine.".freeze
  s.test_files = ["examples/add_row_table.rb".freeze, "examples/anon.rb".freeze, "examples/btree/commaleon/commaleon.rb".freeze, "examples/centered_pdf_text_box.rb".freeze, "examples/line_plotter.rb".freeze, "examples/pdf_grouping.rb".freeze, "examples/pdf_report_with_common_base.rb".freeze, "examples/pdf_table.rb".freeze, "examples/pdf_table_from_csv.rb".freeze, "examples/pdf_table_simple.rb".freeze, "examples/png_embed.rb".freeze, "examples/row_renderer.rb".freeze, "examples/simple_pdf_lines.rb".freeze, "examples/simple_templating_example.rb".freeze, "examples/tattle_ruby_version.rb".freeze, "examples/tattle_rubygems_version.rb".freeze, "examples/trac_ticket_status.rb".freeze, "test/controller_test.rb".freeze, "test/csv_formatter_test.rb".freeze, "test/data_feeder_test.rb".freeze, "test/grouping_test.rb".freeze, "test/helpers.rb".freeze, "test/html_formatter_test.rb".freeze, "test/pdf_formatter_test.rb".freeze, "test/record_test.rb".freeze, "test/table_pivot_test.rb".freeze, "test/table_test.rb".freeze, "test/template_test.rb".freeze, "test/text_formatter_test.rb".freeze]

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pdf-writer>.freeze, ["= 1.1.8"])
    else
      s.add_dependency(%q<pdf-writer>.freeze, ["= 1.1.8"])
    end
  else
    s.add_dependency(%q<pdf-writer>.freeze, ["= 1.1.8"])
  end
end
