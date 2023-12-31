defmodule Guidepost.MixProject do
  use Mix.Project

  def project do
    [
      app: :guidepost,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:castore, "~> 1.0"},
      {:mint, "~> 1.0"}
    ]
  end
end
