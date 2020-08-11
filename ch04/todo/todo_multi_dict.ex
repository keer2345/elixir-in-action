defmodule MultiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    Map.update(dict, key, [value], &[value | &1])
  end

  def get(dict, key) do
    Map.get(dict, key, [])
  end
end

defmodule TodoList do
  def new(), do: MultiDict.new()

  def add_entry(todo_list, date, title) do
    todo_list |> MultiDict.add(date, title)
  end

  def entries(todo_list, date) do
    todo_list |> MultiDict.get(date)
  end
end
