defmodule HouWeb.PageLiveTest do
  use HouWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Welcome to Central juridica!"
    assert render(page_live) =~ "Welcome to Central juridica!"
  end
end
