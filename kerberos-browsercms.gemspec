require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'kerberos-browsercms'
  spec.version    = '0.1.0'
  spec.license    = 'Artistic 2.0'
  spec.authors    = ["Daniel J. Berger", "Charlie O'Keefe"]
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://www.github.com'
  spec.summary    = 'Use a Kerberos backend for BrowserCMS authentication'
  spec.test_files = Dir['test/test*']
  spec.has_rdoc   = true
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') }

  spec.rubyforge_project = 'N/A'
  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.add_dependency('krb5_auth')
  spec.add_dependency('rack-auth-kerberos')

  spec.description = <<-EOF
    The kerberos-browsercms gem overrides the standard BrowserCMS
    authentication system and replaces it with a Kerberos backend.
  EOF
end
