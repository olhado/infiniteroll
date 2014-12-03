defmodule Infiniteroll.PageController do
  use Phoenix.Controller
  alias Poison, as: JSON
  require Logger
  require Dicer

  plug :action

  def roll(conn, %{"roll_expr" => expr}) when is_binary(expr) do
    result =
      expr |> Dicer.roll

    case result do
      {:ok, parsed_roll, value} ->
        json conn, JSON.encode!(%{"ok" => value, "details" => parsed_roll})
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
