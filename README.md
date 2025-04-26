# DaisyUi

[![.github/workflows/ci.yml](https://github.com/luhagel/daisy_ui/actions/workflows/ci.yml/badge.svg)](https://github.com/luhagel/daisy_ui/actions/workflows/ci.yml)

## This repo has been archived in favour of the official implmentation arriving with Phoenix 1.8

DaisyUI component library for Phoenix LiveView

Early WIP, don't use it yet.

## Installation

Tthe package can be installed
by adding `daisy_ui` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:daisy_ui, "~> 0.1.1"}
  ]
end
```

## Usage

Add a `use DaisyUi` to your LiveView component or directly in your liveview macro.

in `libs/your_app_web.ex`

```elixir
  ...

  def live_view do
    quote do
      use Phoenix.LiveView,
        layout: {YourAppWeb.Layouts, :app}

      use DaisyUi # <--- Add this line

      unquote(html_helpers())
    end
  end

  ...
```

The docs can be found at <https://hexdocs.pm/daisy_ui>.
