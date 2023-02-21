defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
      Enum.sort_by(inventory,  fn(x) -> x.price end)
  end
  def with_missing_price(inventory) do
      case inventory do
            [] -> []
            _  -> Enum.filter(inventory, fn(x) -> x.price == nil end)
      end
  end
  def update_names(inventory, old_word, new_word) do
      Enum.map(inventory, fn(x) -> Map.update!(x, :name, fn(a) -> String.replace(x.name, old_word, new_word, global: true) end) end) 

  end
  def increase_quantity(item, count) do
      Map.update!(item, :quantity_by_size, fn(x)-> for {k, v} <- x, into: %{}, do:       {k, v + count} end)
  end
  def total_quantity(item) do
        Map.values(item.quantity_by_size)
        |> Enum.sum()
  end
end