defmodule Components.AlertTest do
  use ComponentCase

  describe "alert/1" do
    test "renders an alert" do
      assigns = %{}

      assert "<div role=\"alert\" class=\"alert \">\n  \n  <div>New Mail</div>\n  \n</div>" =
               rendered_to_string(~H"<.alert>New Mail</.alert>")
    end

    test "renders an info alert" do
      assigns = %{}

      assert "<div role=\"alert\" class=\"alert alert-info\">\n  \n  <div>New Mail</div>\n  \n</div>" =
               rendered_to_string(~H"<.alert kind={:info}>New Mail</.alert>")
    end

    test "renders an warning alert" do
      assigns = %{}

      assert "<div role=\"alert\" class=\"alert alert-warning\">\n  \n  <div>Syncing Issue</div>\n  \n</div>" =
               rendered_to_string(~H"<.alert kind={:warning}>Syncing Issue</.alert>")
    end

    test "renders an error alert" do
      assigns = %{}

      assert "<div role=\"alert\" class=\"alert alert-error\">\n  \n  <div>Invalid Username/Password Combination</div>\n  \n</div>" =
               rendered_to_string(
                 ~H"<.alert kind={:error}>Invalid Username/Password Combination</.alert>"
               )
    end

    test "renders a success alert" do
      assigns = %{}

      assert "<div role=\"alert\" class=\"alert alert-success\">\n  \n  <div>Welcome!</div>\n  \n</div>" =
               rendered_to_string(~H"<.alert kind={:success}>Welcome!</.alert>")
    end
  end
end
