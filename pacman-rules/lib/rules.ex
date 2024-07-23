defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    cond do
      power_pellet_active? == false and touching_ghost? == true -> false
      power_pellet_active? == true and touching_ghost? == false -> false
      power_pellet_active? == false and touching_ghost? == false -> false 
      power_pellet_active? == true and touching_ghost? == true -> true
    end
  end

  def score?(touching_power_pellet?, touching_dot?) do
    cond do
      touching_power_pellet? == false and touching_dot? == false -> false
      touching_power_pellet? == true and touching_dot? == false -> true
      touching_power_pellet? == false and touching_dot? == true -> true  
    end
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    cond do
      power_pellet_active? == true and touching_ghost? == false -> false
      power_pellet_active? == true and touching_ghost? == true -> false
      power_pellet_active? == false and touching_ghost? == true -> true
    end
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    cond do
      has_eaten_all_dots? == true and power_pellet_active? == false and touching_ghost? == true -> false
      has_eaten_all_dots? == true and power_pellet_active? == false and touching_ghost? == false -> true
      has_eaten_all_dots? == true and power_pellet_active? == true and touching_ghost? == true -> true
    end
  end
end
