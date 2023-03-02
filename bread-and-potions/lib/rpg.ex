defmodule RPG do
  defmodule Character do
    defstruct health: 100, mana: 0
  end

  defmodule LoafOfBread do
    defstruct []
  end

  defmodule ManaPotion do
    defstruct strength: 10
  end

  defmodule Poison do
    defstruct []
  end

  defmodule EmptyBottle do
    defstruct []
  end

  # Add code to define the protocol and its implementations below here...
defprotocol Edible do
    def eat(item, character)
end
defimpl Edible, for: LoafOfBread do
    def eat(_item, character) do
      sum = character.health + 5
      character = %{character | health: sum}
      {nil, character}
    end
end
defimpl Edible, for: ManaPotion do
    def eat(item, character) do
      sum = item.strength + character.mana
      character = %{character | mana: sum}
      {%RPG.EmptyBottle{}, character}
    end
end
defimpl Edible, for: Poison do
    def eat(_item, character) do
      character = %{character | health: 0}
      {%RPG.EmptyBottle{}, character}
    end
end
end
