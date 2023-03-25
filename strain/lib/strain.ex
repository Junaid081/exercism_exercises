defmodule Strain do

  @spec keep(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def keep(list, fun) do
    lis = []
    get_list(list, lis, fun)  
  end
  defp get_list([head | tail], lis, fun) do
    if fun.(head) do
      lis = lis ++ [head]
      get_list(tail, lis, fun)
    else  
      get_list(tail, lis, fun)
    end
  end
  defp get_list([], lis, fun) do
    lis
  end


  @spec discard(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def discard(list, fun) do
  lis = []
    get_discard(list, lis, fun)  
  end
  defp get_discard([head | tail], lis, fun) do
    if fun.(head) do
      get_discard(tail, lis, fun)
      else  
      lis = lis ++ [head]
      get_discard(tail, lis, fun)    
    end
  end
  defp get_discard([], lis, fun) do
    lis
  end
end
