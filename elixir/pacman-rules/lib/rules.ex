defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    if power_pellet_active? and touching_ghost? do
      true
    else
      false
    end
  end

  def score?(touching_power_pellet?, touching_dot?) do
    if touching_power_pellet? or touching_dot? do
      true
    else
      false
    end
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    if touching_ghost? and not power_pellet_active? do
      true
    else
      false
    end
  end
  
  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    if lose?(power_pellet_active?, touching_ghost?) do
      false
    else
      has_eaten_all_dots?
    end
  end

end
