defmodule ComponentCase do
  @moduledoc """
  Base test case for DaisyUi components.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      use DaisyUi

      import Phoenix.Component
      import Phoenix.LiveViewTest
    end
  end
end
