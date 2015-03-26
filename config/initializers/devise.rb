# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  
  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.omniauth :google_oauth2, "408330227086-onadkt6688ve5i3qnltar3srdetdpa8l.apps.googleusercontent.com", "Gf2ioEweRUtTu8zFMsaenrkb", { :scope => "email, profile, openid" }
  config.omniauth :github, '64f0f24ed394a2f20496', '665a1cd6e815afe20fb7b0a7b2783ae07580c983', scope: 'user,public_repo'
  config.omniauth :mit, 'be029808-8a55-402c-b086-9d7a6abc934b', 'BISY_QlsZyzkb-4FYUZRK2E25zk20JVEwEdhx6SRopv4P5fXL2qJdSabLX_BU4DLoy7Df8QYCyes3jmIKiET3w'
#   config.omniauth :openid_connect, {
#   scope: [:openid, :email, :profile, :address],
#   response_type: :code,
#   client_options: {
#     port: 443,
#     scheme: "https",
#     host: "www.googleapis.com",
#     identifier: ENV["408330227086-onadkt6688ve5i3qnltar3srdetdpa8l.apps.googleusercontent.com"],
#     secret: ENV["OP_SECRET_408330227086-onadkt6688ve5i3qnltar3srdetdpa8l.apps.googleusercontent.comKEY"],
#     redirect_uri: "http://127.0.0.1/users/auth/openid_connect/callback",
#   },
# }
  

  # ==> Mountable engine configurations
  # When using Devise inside an engine, let's call it `MyEngine`, and this engine
  # is mountable, there are some extra configurations to be taken into account.
  # The following options are available, assuming the engine is mounted as:
  #
  #     mount MyEngine, at: '/my_engine'
  #
  # The router that invoked `devise_for`, in the example above, would be:
  # config.router_name = :my_engine
  #
  # When using omniauth, Devise cannot automatically set Omniauth path,
  # so you need to do it manually. For the users scope, it would be:
  # config.omniauth_path_prefix = '/my_engine/users/auth'
end
