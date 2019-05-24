# -*- encoding: utf-8 -*-
# stub: rufus-scheduler 3.1.10.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rufus-scheduler".freeze
  s.version = "3.1.10.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Mettraux".freeze]
  s.date = "2019-05-08"
  s.description = "job scheduler for Ruby (at, cron, in and every jobs).".freeze
  s.email = ["jmettraux@gmail.com".freeze]
  s.files = ["CHANGELOG.txt".freeze, "CREDITS.txt".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "TODO.txt".freeze, "lib/rufus-scheduler.rb".freeze, "lib/rufus/scheduler.rb".freeze, "lib/rufus/scheduler/cronline.rb".freeze, "lib/rufus/scheduler/job_array.rb".freeze, "lib/rufus/scheduler/jobs.rb".freeze, "lib/rufus/scheduler/locks.rb".freeze, "lib/rufus/scheduler/util.rb".freeze, "lib/rufus/scheduler/zones.rb".freeze, "lib/rufus/scheduler/zotime.rb".freeze, "rufus-scheduler.gemspec".freeze]
  s.homepage = "http://github.com/jmettraux/rufus-scheduler".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "rufus".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "job scheduler for Ruby (at, cron, in and every jobs)".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.13.0"])
      s.add_development_dependency(%q<chronic>.freeze, [">= 0"])
      s.add_development_dependency(%q<tzinfo>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 2.13.0"])
      s.add_dependency(%q<chronic>.freeze, [">= 0"])
      s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.13.0"])
    s.add_dependency(%q<chronic>.freeze, [">= 0"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
  end
end
