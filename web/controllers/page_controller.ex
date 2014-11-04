defmodule Infiniteroll.PageController do
  use Phoenix.Controller
  alias Poison, as: JSON

  plug :action

  def roll(conn, %{"roll_expr" => expr}) do
    result =
      expr |> Dicer.roll

    case result do
      {:ok, _parsed_roll, value} ->
        json conn, JSON.encode!(%{"ok" => value})
      {:error, messages} ->
        json conn, JSON.encode!(%{"error" => messages})
    end
  end

  def roll(conn, _params) do
    json conn, JSON.encode!(%{"error" => ["Invalid input!"]})
  end

  def index(conn, _params) do
    render conn, "index"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
