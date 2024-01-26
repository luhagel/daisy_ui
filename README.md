# DaisyUi

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

```elixir
  # libs/your_app_web.ex
  def live_view do
    quote do
      use Phoenix.LiveView,
        layout: {YourAppWeb.Layouts, :app}

      use DaisyUi # <--- Add this line

      unquote(html_helpers())
    end
  end
```

The docs can be found at <https://hexdocs.pm/daisy_ui>.

