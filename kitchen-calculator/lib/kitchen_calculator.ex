defmodule KitchenCalculator do
  def get_volume(volume_pair), do: elem(volume_pair, 1)

  def to_milliliter({unit, volume}) do
    case unit do
      :milliliter -> {:milliliter, volume * 1}
      :cup -> {:milliliter, volume * 240}
      :fluid_ounce -> {:milliliter, volume * 30}
      :teaspoon -> {:milliliter, volume * 5}
      :tablespoon -> {:milliliter, volume * 15}
      _ -> {:error, "Unit not recognized"}
    end
  end

  def from_milliliter(volume_pair, unit) do
    case unit do
      :cup -> {:cup, elem(volume_pair, 1) / 240}
      :fluid_ounce -> {:fluid_ounce, elem(volume_pair, 1) / 30}
      :teaspoon -> {:teaspoon, elem(volume_pair, 1) / 5}
      :tablespoon -> {:tablespoon, elem(volume_pair, 1) / 15}
      :milliliter -> {:milliliter, elem(volume_pair, 1)}
    end
  end

  def convert(volume_pair, unit) do
    to_milliliter(volume_pair)
    |> from_milliliter(unit)
  end
end
