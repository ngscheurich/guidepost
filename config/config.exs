import Config

config :guidepost, env: config_env()

config :guidepost, GuidePost.Shortcut, client: if config_env() == :test do
  GuidePost.Shortcut.InMemoryClient
else
  GuidePost.Shortcut.HTTPClient
end
