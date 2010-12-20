require 'krb5_auth'

module Cms
  module Authentication
    module Kerberos
      def authenticated?(password, realm = nil)
        result = false
        krb5 = Krb5Auth::Krb5.new
        realm ||= krb5.get_default_realm
        user = login + "@#{realm}"

        begin
          krb5.get_init_creds_password(user, password)
        rescue Krb5Auth::Krb5::Exception => err
          case err.message
            when /client not found/i
              msg = "Invalid userid '#{user}'"
            when /integrity check failed/i
              msg = "Invalid password for '#{user}'"
            else
              msg = "Error attempting to validate userid and password"
          end

          if defined? logger
            logger.error "Krb5Auth::Krb5::Exception: #{err.message}"
          end
        else
          result = true
        ensure
          krb5.close
        end
        return result
      end
    end
  end
end
