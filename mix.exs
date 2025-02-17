defmodule Daisy.MixProject do
  use Mix.Project

  def project do
    [
      app: :daisy_ui,
      version: "0.2.0",
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
        groups_for_docs: [
          Actions: &(&1[:section] == :actions),
          "Data Display": &(&1[:section] == :data_display),
          Navigation: &(&1[:section] == :navigation),
          Feedback: &(&1[:section] == :user_feedback),
          "Data Input": &(&1[:section] == :data_input),
          Layout: &(&1[:section] == :layout),
          Mockup: &(&1[:section] == :mockup)
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

    Early WIP, don't use it yet.
    """
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.7.19"},
      {:ex_doc, "~> 0.36", only: :dev, runtime: false},
      {:phoenix_live_view, "~> 1.0"},
      {:phoenix_storybook, "~> 0.8"},
      {:gettext, "~> 0.26", optional: true}
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
