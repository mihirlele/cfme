# -*- encoding: utf-8 -*-
# stub: sys-proctable 1.1.5 universal-linux lib lib/linux

Gem::Specification.new do |s|
  s.name = "sys-proctable".freeze
  s.version = "1.1.5"
  s.platform = "universal-linux".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "lib/linux".freeze]
  s.authors = ["Daniel J. Berger".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDcDCCAligAwIBAgIBATANBgkqhkiG9w0BAQUFADA/MREwDwYDVQQDDAhkamJl\ncmc5NjEVMBMGCgmSJomT8ixkARkWBWdtYWlsMRMwEQYKCZImiZPyLGQBGRYDY29t\nMB4XDTE2MTAzMTE4NTcyNVoXDTE3MTAzMTE4NTcyNVowPzERMA8GA1UEAwwIZGpi\nZXJnOTYxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmSJomT8ixkARkWA2Nv\nbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALwqllig3Tyc29Y3SZgK\nfFaApRB5R3l8KkOog3rwqr4Rr8bc8MfAMwHOzfqUMQRF7bPIyd5jLu24tPSC2X8D\nSKDS3069iTzTEDSPin90MVes+nd/ngys93lgmJ9DSwpGXQzZ7sWqdaJjzqLqDMhZ\n3LhTRZeMpDA8hyEiX7GmVp+VvhAXQ1pjfoFBmMNrzibUmYXcyllzqfEFcbI31/EK\nvlkEmcTKdNyd4aIOFLadZpzVvLxWsxFqi6qwteAwlNk3zxaik6O82iAXq2tcnk8p\nasWidshXCiRunncPhVogVYNCS4ISfYD6b/f85T9DsxJ6tsADNfeXnMTRxQcQv+1x\n0l0CAwEAAaN3MHUwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFC3D\np9cyKtYtWUAefeMpMh4kMUP4MB0GA1UdEQQWMBSBEmRqYmVyZzk2QGdtYWlsLmNv\nbTAdBgNVHRIEFjAUgRJkamJlcmc5NkBnbWFpbC5jb20wDQYJKoZIhvcNAQEFBQAD\nggEBAEYzyGzoleAO3i6mOBi/Px1yWdVuU4ejvxrj8axHRK+wHQ+bYvx9eEosuRHB\nmXjRvpN9UnOiY7wYbK36MpAALBq3swpcBpYXyfBOdv0JQvjMEGmKqXJS7AbNHNPc\nZbpPrVSdJJ+aTWEDvybl693eEUvEuiSkVIz8w4yNcJP1zOBRBKxG2viJdMKz5Ho7\n2M9INmGCv3GCv4bljYlIIg4YYAyOaBbSQeAb2/F5XAlOR2oEB8ipB+RKGZXR8rq5\nEkhPwYAx+jZ4KyPve9JKm34Du9veVFEzq3aW+opaveK167NEorK7xLpmdEcdo9bR\n9CkYV0lClarK7w1ykAePuEeXD7k=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2017-08-10"
  s.description = "    The sys-proctable library provides an interface for gathering information\n    about processes on your system, i.e. the process table. Most major\n    platforms are supported and, while different platforms may return\n    different information, the external interface is identical across\n    platforms.\n".freeze
  s.email = "djberg96@gmail.com".freeze
  s.extra_rdoc_files = ["CHANGES".freeze, "README".freeze, "MANIFEST".freeze, "doc/top.txt".freeze]
  s.files = ["CHANGES".freeze, "MANIFEST".freeze, "README".freeze, "doc/top.txt".freeze]
  s.homepage = "http://github.com/djberg96/sys-proctable".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "An interface for providing process table information".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
