require 'krb5_auth'
require 'rack/auth/kerberos'

module Cms
  module Authentication
    module Model
      module InstanceMethods
        def authenticated?(password)
          # TODO: Override this
        end
      end
    end
  end
end
