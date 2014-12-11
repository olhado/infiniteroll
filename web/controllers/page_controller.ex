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
        json conn, JSON.encode!(%{"status" => "ok", "rolls"=> [%{"result" => value, "roll" => parsed_roll}]})
      {:error, messages} ->
        json conn, JSON.encode!(%{"status" => "error", "messages" => messages})
    end
  end

  def roll(conn, _params) do
    json conn, JSON.encode!(%{"status" => "error", "messages" => ["Invalid input!"]})
  end

  def index(conn, _params) do
    render conn, "index"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    json conn, JSON.encode!(%{"status" => "error", "messages" => ["Unexpected error!"]})
  end
end