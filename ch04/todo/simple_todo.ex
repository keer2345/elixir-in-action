defmodule TodoList do
  def new(), do: %{}

  def add_entry(todo_list, date, title) do
    todo_list |> Map.update(date, [title], fn titles -> [title | titles] end)
  end

  def entries(todo_list, date) do
    todo_list |> Map.get(date, [])
  end
end
