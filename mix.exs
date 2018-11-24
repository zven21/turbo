defmodule Turbo.MixProject do
  use Mix.Project

  @version "0.1.0"
  @github "https://github.com/zven21/turbo"

  def project do
    [
      app: :turbo,
      description: "A elixir lib for search, sort, paginate.",
      version: @version,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false},
      {:turbo_ecto, github: "zven21/turbo_ecto"},
      {:turbo_html, github: "zven21/turbo_html"},
      {:ex_machina, "~> 2.2"},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["zven21"],
      licenses: ["MIT"],
      links: %{"GitHub" => @github}
    ]
  end
end
