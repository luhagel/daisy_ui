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
        This is an alert!
      </.alert>

  ## Reference

  [DaisyUI Alert](https://daisyui.com/components/alert/)
  """
  attr :kind, :atom,
    default: nil,
    values: [nil, :info, :success, :warning, :error],
    doc: "The kind of alert to show"

  slot :inner_block, required: true, doc: "Alert Text/Content"
  slot :prefix, doc: "Rendered before the main text, usually an icon"
  slot :suffix, doc: "Rendered after the main text, usually used for buttons"

  def alert(assigns) do
    ~H"""
    <div
      role="alert"
      class={[
        "alert",
        @kind && "alert-#{@kind}"
      ]}
    >
      {render_slot(@prefix)}
      <div>{render_slot(@inner_block)}</div>
      {render_slot(@prefix)}
    </div>
    """
  end

  @doc section: :action
  @doc ~S"""
  A button component.

  ## Examples

      <.button>Click Me</.button>

  ## Reference

  [DaisyUI Button](https://daisyui.com/components/button/)
  """
  slot :inner_block, required: true, doc: "Button Text/Content"

  def button(assigns) do
    ~H"""
    <button class="btn btn-primary">{render_slot(@inner_block)}</button>
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
      <span class="label-text">{render_slot(@inner_block)}</span>
    </div>
    """
  end
end
