defmodule Danny.PageControllerTest do
  use Danny.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Danny"
  end
end
