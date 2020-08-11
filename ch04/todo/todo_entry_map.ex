defmodule MultiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    dict |> Map.update(key, value, &[value | &1])
  end

  def get(dict, key) do
    dict |> Map.get(key, [])
  end
end

defmodule TodoList do
  def new(), do: MultiDict.new()

  def add_entry(todo_list, entry) do
    todo_list |> MultiDict.add(entry.date, entry)
  end

  def entries(todo_list, date) do
    todo_list |> MultiDict.get(date)
  end
end
