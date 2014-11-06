use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, Infiniteroll.Router,
  url: [host: "infiniteroll.supahmove.com"],
  http: [port: System.get_env("PORT"), proxy_port: "80"],
  secret_key_base: "VEn9fCSbJRqcZ+QJz8JCoBzOJXDX9A2EFKqIjLv1fX8rxaWSDV3Mn02itHuImZYEmAbMtENx6A6U6GhzOAPq6A=="

config :logger, :console,
  level: :info
