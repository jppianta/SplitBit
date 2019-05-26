defmodule Lomekwi.MixProject do
  use Mix.Project

  def project do
    [
      app: :lomekwi,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: CoverModule],
      deps: deps(),
      name: "Lomekwi",
      source_url: "https://github.com/jppianta/Lomekwi",
      docs: [
        # The main page in the docs
        main: "Lomekwi",
        logo: "assets/lomekwi_no_name.png",
        extras: ["README.md"]
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
      {:ex_crypto, "~> 0.10.0"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
