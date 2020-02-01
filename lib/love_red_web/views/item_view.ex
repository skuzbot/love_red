defmodule LoveRedWeb.ItemView do
  use LoveRedWeb, :view

  def render("index.json", %{items: items}) do
    %{
      items: items
    }
  end
end
