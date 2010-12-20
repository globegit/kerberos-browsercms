klass = Cms::Authentication::Model::InstanceMethods

klass.module_eval do
  # If the 'AUTH_USER' environment variable is set then
  # the user has successfully authenticated.
  #
  # AUTH_USER is set (or not) via rack-auth-kerberos.
  #
  def authenticated?(password)
    ENV['AUTH_USER'] ? true : false
  end
end
