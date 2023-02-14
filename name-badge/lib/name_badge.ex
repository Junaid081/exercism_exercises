defmodule NameBadge do
    # Upcase function
    defp forupcase(depart) do
      String.upcase(depart)
    end
    
    # Task 3
    def print(nil, name, nil) do   
    "#{name} - OWNER"
    end
    def print(id, name, nil) do   
    "[#{id}] - #{name} - OWNER"
    end    

      # Task 1 and 2
      def print(id, name, department) do   
    if id == nil do
      department = forupcase(department)
     "#{name} - #{department}"
    else
     department = forupcase(department)
    "[#{id}] - #{name} - #{department}"
    end
  end
end
