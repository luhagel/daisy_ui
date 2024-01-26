defmodule DaisyUi.MixProject do
  use Mix.Project

  def project do
    [
      app: :daisy_ui,
      version: "0.1.0",
      elixir: "~> 1.16",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "DaisyUI",
      description: description(),
      source_url: "https://github.com/luhagel/daisy_ui",
      homepage_url: "http://hexdocs.pm/daisy_ui",
      docs: [
        # The main page in the docs
        main: "readme",
        logo: "priv/static/daisyui.png",
        extras: ["README.md", "LICENSE.txt"],
        groups_for_functions: [
          "Data Input": &(&1[:section] == :data_input)
        ]
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

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

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
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:phoenix_html, "~> 3.3"},
      {:phoenix_live_view, "~> 0.19"}
    ]
  end

  defp package() do
    [
      maintainers: ["Luca Hagel"],
      licenses: ["GPL-3.0-or-later"],
      links: %{"GitHub" => "https://github.com/luhagel/daisy_ui"}
    ]
  end
end
