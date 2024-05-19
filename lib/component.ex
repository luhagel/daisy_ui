defmodule DaisyUi.Component do
  @moduledoc """
  Library of DaisyUI components for Phoenix LiveView.
  """
  use Phoenix.Component

  @doc section: :feedback
  @doc ~S"""
  An alert component.

  ## Examples

      <.alert>
        <p>This is an alert!</p>
      </.alert>

  ## Reference

  [DaisyUI Alert](https://daisyui.com/components/alert/)
  """
  attr :kind, :atom,
    default: nil,
    values: [nil, :info, :success, :warning, :error],
    doc: "The kind of alert to show"

  slot :inner_block, required: true, doc: "Alert Text/Content"
  slot :prefix, optional: true, doc: "Rendered before the main text, usually an icon"
  slot :suffix, optional: true, doc: "Rendered after the main text, usually used for buttons"

  def alert(assigns) do
    ~H"""
    <div
      role="alert"
      class={[
        "alert",
        @kind && "alert-#{@kind}"
      ]}
    >
      <%= render_slot(@prefix) %>
      <div><%= render_slot(@inner_block) %></div>
      <%= render_slot(@prefix) %>
    </div>
    """
  end

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
