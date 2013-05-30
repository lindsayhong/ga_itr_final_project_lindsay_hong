module RoundsHelper
  def find_hole_stat(user, number, array, stat, hole)
    hole = user.holes.where(hole_number: number).first
   
    array << hole.try(stat)
  end

  def yes_no_total(array)
    array.count { |x| x == "Yes" || x == "No"}
  end

  def back_nine_total(array)
    array[9..17].count { |x| x == "Yes" || x == "No"}
  end

  def find_each_hole(current_round_user, number)
    current_round_user.holes.where(hole_number: number).first
  end

# Calculate sandies and up and downs.
  def calculate_sandies(sandies)
    sandies.count("Yes").to_f/yes_no_total(sandies)
  end

  def yes_count(array)
    array.count("Yes")
  end

  def back_nine_yes_count(array)
    array[9..17].count("Yes")
  end

  def sum_full_array(array)
    array.inject(:+)
  end

  def sum_back_nine(array)
    array[9..17].inject(:+)
  end

end
