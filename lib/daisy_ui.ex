defmodule DaisyUi do
  @moduledoc ~S"""
  <p>
  An implementation of <a href="https://daisyui.com" target="blank">DaisyUI</a> for Phoenix LiveView.
  </p>

  <p>
  All DaisyUi components accept the <code>class</code> attribute for customisations (and often the <code>classes</code> struct to address inner elements). <a href="https://tailwindcss.com/docs/installation" target="blank">TailwindCSS utility classes</a> allow a wide range of customisations without having to write custom styles.
  </p>

  <p>
  DaisyUi components can be used in <a href="https://github.com/phoenixframework/phoenix_live_view" target="_blank">Phoenix LiveView pages</a> and regular (non-LiveView) views in Phoenix applications.
  </p>

  ## Documentation

  - [Component documentation](`DaisyUi.Component`)

  ## Resources

  - [DaisyUI Website](https://daisyui.com)
  - [DaisyUI Storybook and Demo](daisyui.luhagel.com)
  - [Source code](https://github.com/luhagel/daisy_ui)
  """

  defmacro __using__(_) do
    quote do
      import DaisyUi.Component
      alias DaisyUi.Theme
    end
  end
end
