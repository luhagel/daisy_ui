defmodule DaisyUi.Component do
  @moduledoc """
  Library of DaisyUI components for Phoenix LiveView.
  """
  use Phoenix.Component
  use Phoenix.HTML

  @doc section: :data_input

  @doc ~S"""
  A label component.

  ## Examples

      <.label>
        E-Mail Address
      </.label>

  ## Reference

  [DaisyUI Label](https://daisyui.com/components/input/)
  """
  slot :inner_block, required: true, doc: "Label Text/Content"

  def label(assigns) do
    ~H"""
    <div class="label">
      <span class="label-text"><%= render_slot(@inner_block) %></span>
    </div>
    """
  end
end
