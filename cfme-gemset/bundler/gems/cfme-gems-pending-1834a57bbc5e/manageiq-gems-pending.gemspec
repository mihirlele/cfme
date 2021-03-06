# -*- encoding: utf-8 -*-
# stub: manageiq-gems-pending 0.1.0 ruby lib lib/gems/pending lib/gems/pending/util

Gem::Specification.new do |s|
  s.name = "manageiq-gems-pending".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "lib/gems/pending".freeze, "lib/gems/pending/util".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-05-08"
  s.description = "Classes pending extraction to their own gems.".freeze
  s.files = [".codeclimate.yml".freeze, ".gitignore".freeze, ".rspec".freeze, ".rspec_ci".freeze, ".rubocop.yml".freeze, ".rubocop_cc.yml".freeze, ".rubocop_local.yml".freeze, ".travis.yml".freeze, ".yamllint".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "bin/console".freeze, "bin/setup".freeze, "lib/gems/pending/.gitignore".freeze, "lib/gems/pending/util/MiqSockUtil.rb".freeze, "lib/gems/pending/util/MiqSshUtil.rb".freeze, "lib/gems/pending/util/SyncDebug.rb".freeze, "lib/gems/pending/util/duplicate_blocker.rb".freeze, "lib/gems/pending/util/duplicate_blocker/dedup_handler.rb".freeze, "lib/gems/pending/util/duplicate_blocker/duplicate_found_exception.rb".freeze, "lib/gems/pending/util/extensions/aws-sdk/s3_upload_stream_patch.rb".freeze, "lib/gems/pending/util/extensions/miq-array.rb".freeze, "lib/gems/pending/util/extensions/miq-benchmark.rb".freeze, "lib/gems/pending/util/extensions/miq-deep.rb".freeze, "lib/gems/pending/util/extensions/miq-hash.rb".freeze, "lib/gems/pending/util/extensions/miq-kernel.rb".freeze, "lib/gems/pending/util/extensions/miq-object.rb".freeze, "lib/gems/pending/util/extensions/miq-to_i_with_method.rb".freeze, "lib/gems/pending/util/extensions/miq_stats.rb".freeze, "lib/gems/pending/util/miq-encode.rb".freeze, "lib/gems/pending/util/miq-exception.rb".freeze, "lib/gems/pending/util/miq-extensions.rb".freeze, "lib/gems/pending/util/miq-hash_struct.rb".freeze, "lib/gems/pending/util/miq-ipmi.rb".freeze, "lib/gems/pending/util/miq-metakit.rb".freeze, "lib/gems/pending/util/miq-password.rb".freeze, "lib/gems/pending/util/miq-process.rb".freeze, "lib/gems/pending/util/miq-system.rb".freeze, "lib/gems/pending/util/miq-unicode.rb".freeze, "lib/gems/pending/util/miq-uuid.rb".freeze, "lib/gems/pending/util/miq-xml.rb".freeze, "lib/gems/pending/util/miq_file_storage.rb".freeze, "lib/gems/pending/util/miq_ftp_lib.rb".freeze, "lib/gems/pending/util/miq_logger_processor.rb".freeze, "lib/gems/pending/util/miq_object_storage.rb".freeze, "lib/gems/pending/util/miq_tempfile.rb".freeze, "lib/gems/pending/util/miq_winrm.rb".freeze, "lib/gems/pending/util/mount/miq_generic_mount_session.rb".freeze, "lib/gems/pending/util/mount/miq_glusterfs_session.rb".freeze, "lib/gems/pending/util/mount/miq_local_mount_session.rb".freeze, "lib/gems/pending/util/mount/miq_nfs_session.rb".freeze, "lib/gems/pending/util/mount/miq_smb_session.rb".freeze, "lib/gems/pending/util/object_storage/miq_ftp_storage.rb".freeze, "lib/gems/pending/util/object_storage/miq_s3_storage.rb".freeze, "lib/gems/pending/util/object_storage/miq_swift_storage.rb".freeze, "lib/gems/pending/util/postgres_admin.rb".freeze, "lib/gems/pending/util/require_with_logging.rb".freeze, "lib/gems/pending/util/runcmd.rb".freeze, "lib/gems/pending/util/test/SyncDebugTest.rb".freeze, "lib/gems/pending/util/test/SyncDebug_watchdogTest.rb".freeze, "lib/gems/pending/util/vmdb-logger.rb".freeze, "lib/gems/pending/util/win32/miq-powershell.rb".freeze, "lib/gems/pending/util/win32/miq-psd.ps1".freeze, "lib/gems/pending/util/win32/miq-wmi-linux.rb".freeze, "lib/gems/pending/util/win32/miq-wmi-mswin.rb".freeze, "lib/gems/pending/util/win32/miq-wmi.rb".freeze, "lib/gems/pending/util/win32/nt_util.rb".freeze, "lib/gems/pending/util/win32/wim_parser.rb".freeze, "lib/gems/pending/util/xml/miq_nokogiri.rb".freeze, "lib/gems/pending/util/xml/miq_rexml.rb".freeze, "lib/gems/pending/util/xml/test/xml_diff_test.rb".freeze, "lib/gems/pending/util/xml/xml_diff.rb".freeze, "lib/gems/pending/util/xml/xml_hash.rb".freeze, "lib/gems/pending/util/xml/xml_patch.rb".freeze, "lib/gems/pending/util/xml/xml_utils.rb".freeze, "lib/manageiq-gems-pending.rb".freeze, "lib/manageiq/gems/pending.rb".freeze, "lib/manageiq/gems/pending/version.rb".freeze, "manageiq-gems-pending.gemspec".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-gems-pending/".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new("> 2.2.2".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Core utility classes for ManageIQ.".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>.freeze, ["< 5.2", ">= 5.0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, ["< 5.2", ">= 5.0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
      s.add_runtime_dependency(%q<awesome_spawn>.freeze, ["~> 1.4"])
      s.add_runtime_dependency(%q<aws-sdk>.freeze, ["~> 2.9.7"])
      s.add_runtime_dependency(%q<binary_struct>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<bundler>.freeze, [">= 1.8.4"])
      s.add_runtime_dependency(%q<fog-openstack>.freeze, ["~> 0.1.22"])
      s.add_runtime_dependency(%q<linux_admin>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<manageiq-password>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<mime-types>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<more_core_extensions>.freeze, ["~> 3.4"])
      s.add_runtime_dependency(%q<net-scp>.freeze, ["~> 1.2.1"])
      s.add_runtime_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
      s.add_runtime_dependency(%q<net-ssh>.freeze, ["~> 4.2.0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
      s.add_runtime_dependency(%q<rake>.freeze, [">= 11.0"])
      s.add_runtime_dependency(%q<sys-proctable>.freeze, ["~> 1.1.5"])
      s.add_runtime_dependency(%q<sys-uname>.freeze, ["~> 1.0.1"])
      s.add_runtime_dependency(%q<uuidtools>.freeze, ["~> 2.1.3"])
      s.add_runtime_dependency(%q<winrm>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<winrm-elevated>.freeze, ["~> 1.0.1"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
      s.add_development_dependency(%q<xml-simple>.freeze, ["~> 1.1.0"])
      s.add_development_dependency(%q<ftpd>.freeze, ["~> 2.1.0"])
      s.add_development_dependency(%q<pg>.freeze, ["~> 0.18.2"])
    else
      s.add_dependency(%q<actionpack>.freeze, ["< 5.2", ">= 5.0"])
      s.add_dependency(%q<activerecord>.freeze, ["< 5.2", ">= 5.0"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
      s.add_dependency(%q<awesome_spawn>.freeze, ["~> 1.4"])
      s.add_dependency(%q<aws-sdk>.freeze, ["~> 2.9.7"])
      s.add_dependency(%q<binary_struct>.freeze, ["~> 2.1"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.8.4"])
      s.add_dependency(%q<fog-openstack>.freeze, ["~> 0.1.22"])
      s.add_dependency(%q<linux_admin>.freeze, ["~> 1.0"])
      s.add_dependency(%q<manageiq-password>.freeze, ["~> 0.1"])
      s.add_dependency(%q<mime-types>.freeze, ["~> 3.0"])
      s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.4"])
      s.add_dependency(%q<net-scp>.freeze, ["~> 1.2.1"])
      s.add_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
      s.add_dependency(%q<net-ssh>.freeze, ["~> 4.2.0"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
      s.add_dependency(%q<rake>.freeze, [">= 11.0"])
      s.add_dependency(%q<sys-proctable>.freeze, ["~> 1.1.5"])
      s.add_dependency(%q<sys-uname>.freeze, ["~> 1.0.1"])
      s.add_dependency(%q<uuidtools>.freeze, ["~> 2.1.3"])
      s.add_dependency(%q<winrm>.freeze, ["~> 2.1"])
      s.add_dependency(%q<winrm-elevated>.freeze, ["~> 1.0.1"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
      s.add_dependency(%q<xml-simple>.freeze, ["~> 1.1.0"])
      s.add_dependency(%q<ftpd>.freeze, ["~> 2.1.0"])
      s.add_dependency(%q<pg>.freeze, ["~> 0.18.2"])
    end
  else
    s.add_dependency(%q<actionpack>.freeze, ["< 5.2", ">= 5.0"])
    s.add_dependency(%q<activerecord>.freeze, ["< 5.2", ">= 5.0"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5.2", ">= 5.0"])
    s.add_dependency(%q<awesome_spawn>.freeze, ["~> 1.4"])
    s.add_dependency(%q<aws-sdk>.freeze, ["~> 2.9.7"])
    s.add_dependency(%q<binary_struct>.freeze, ["~> 2.1"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.8.4"])
    s.add_dependency(%q<fog-openstack>.freeze, ["~> 0.1.22"])
    s.add_dependency(%q<linux_admin>.freeze, ["~> 1.0"])
    s.add_dependency(%q<manageiq-password>.freeze, ["~> 0.1"])
    s.add_dependency(%q<mime-types>.freeze, ["~> 3.0"])
    s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.4"])
    s.add_dependency(%q<net-scp>.freeze, ["~> 1.2.1"])
    s.add_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
    s.add_dependency(%q<net-ssh>.freeze, ["~> 4.2.0"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
    s.add_dependency(%q<rake>.freeze, [">= 11.0"])
    s.add_dependency(%q<sys-proctable>.freeze, ["~> 1.1.5"])
    s.add_dependency(%q<sys-uname>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<uuidtools>.freeze, ["~> 2.1.3"])
    s.add_dependency(%q<winrm>.freeze, ["~> 2.1"])
    s.add_dependency(%q<winrm-elevated>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
    s.add_dependency(%q<xml-simple>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<ftpd>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<pg>.freeze, ["~> 0.18.2"])
  end
end
