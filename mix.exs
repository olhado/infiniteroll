defmodule Infiniteroll.Mixfile do
  use Mix.Project

  def project do
    [app: :infiniteroll,
     version: "0.0.2",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Infiniteroll, []},
     applications: [:dicer, :phoenix, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "0.5.0"},
     {:cowboy, "~> 1.0"},
     { :exrm, "~> 0.14.11" },
     {:dicer, "0.4.0"}]
  end
end
