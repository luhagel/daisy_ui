defmodule DaisyUi.MixProject do
  use Mix.Project

  def project do
    [
      app: :daisy_ui,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "DaisyUI",
      description: description(),
      source_url: "https://github.com/luhagel/daisy_ui",
      homepage_url: "http://hexdocs.pm/daisy_ui",
      docs: [
        # The main page in the docs
        main: "DaisyUi",
        logo: "priv/static/daisyui.png",
        extras: ["README.md"]
      ],
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    DaisyUI component library for Phoenix LiveView
    """
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      licenses: ["GPL-3.0-or-later"],
      links: %{"GitHub" => "https://github.com/luhagel/daisy_ui"}
    ]
  end
end
