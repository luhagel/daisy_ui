defmodule Components.LabelTest do
  use ComponentCase

  describe "label/1" do
    test "renders a label" do
      assigns = %{}

      assert "<div class=\"label\">\n  <span class=\"label-text\">E-Mail Address</span>\n</div>" =
               rendered_to_string(~H"<.label>E-Mail Address</.label>")
    end
  end
end
