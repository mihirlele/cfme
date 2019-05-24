# -*- encoding: utf-8 -*-
# stub: transaction-simple 1.4.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "transaction-simple".freeze
  s.version = "1.4.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Austin Ziegler".freeze]
  s.date = "2012-06-21"
  s.description = "Transaction::Simple provides a generic way to add active transaction support to\nobjects. The transaction methods added by this module will work with most\nobjects, excluding those that cannot be Marshal-ed (bindings, procedure\nobjects, IO instances, or singleton objects).\n\nThe transactions supported by Transaction::Simple are not associated with any\nsort of data store. They are \"live\" transactions occurring in memory on the\nobject itself. This is to allow \"test\" changes to be made to an object before\nmaking the changes permanent.\n\nTransaction::Simple can handle an \"infinite\" number of transaction levels\n(limited only by memory). If I open two transactions, commit the second, but\nabort the first, the object will revert to the original version.\n\nTransaction::Simple supports \"named\" transactions, so that multiple levels of\ntransactions can be committed, aborted, or rewound by referring to the\nappropriate name of the transaction. Names may be any object except nil.\n\nTransaction groups are also supported. A transaction group is an object wrapper\nthat manages a group of objects as if they were a single object for the purpose\nof transaction management. All transactions for this group of objects should be\nperformed against the transaction group object, not against individual objects\nin the group.\n\nVersion 1.4.0 of Transaction::Simple adds a new post-rewind hook so that\ncomplex graph objects of the type in tests/tc_broken_graph.rb can correct\nthemselves.\n\nVersion 1.4.0.1 just fixes a simple bug with #transaction method handling\nduring the deprecation warning.\n\nVersion 1.4.0.2 is a small update for people who use Transaction::Simple in\nbundler (adding lib/transaction-simple.rb) and other scenarios where having Hoe\nas a runtime dependency (a bug fixed in Hoe several years ago, but not visible\nin Transaction::Simple because it has not needed a re-release). All of the\nfiles internally have also been marked as UTF-8, ensuring full Ruby 1.9\ncompatibility.".freeze
  s.email = ["austin@rubyforge.org".freeze]
  s.extra_rdoc_files = ["History.rdoc".freeze, "Licence.rdoc".freeze, "Manifest.txt".freeze, "README.rdoc".freeze]
  s.files = ["History.rdoc".freeze, "Licence.rdoc".freeze, "Manifest.txt".freeze, "README.rdoc".freeze]
  s.homepage = "http://trans-simple.rubyforge.org/".freeze
  s.rdoc_options = ["--main".freeze, "README.rdoc".freeze]
  s.rubyforge_project = "trans-simple".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Transaction::Simple provides a generic way to add active transaction support to objects".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 3.10"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.10"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.0"])
  end
end
