module UsersHelper
  # find_yes_no_stat(stat)
  #   array = Array.new
  #   number = 1
  #   until number == 18
  #     hole = @current_round_user.holes.where(hole_number: number).first
  #     array << hole.try(stat)
  #   end
  #   array.count("Yes")/(array.count { |x| x == "Yes" || x == "No" })
  # end

  def add_stat_to_array_string(array, stat)
    hole = @current_round_user.holes.where(hole_number: @number).first
    array << hole.try(stat)
    hole.try(stat)
  end

  def add_stat_to_array_integer(array, stat)
    hole = @current_round_user.holes.where(hole_number: @number).first
    array << hole.try(stat).to_i
    hole.try(stat)
  end

  def yes_no_total(array)
    array.count { |x| x == "Yes" || x == "No" }
  end

  def back_nine_total(array)
    array[9..17].count { |x| x == "Yes" || x == "No" }
  end

  def find_each_hole(current_round_user, number)
    current_round_user.holes.where(hole_number: number).first
  end

# Calculate sandies and up and downs.

  def total_percentage(array)
    calculate_percentage = array.count("Yes").to_f/yes_no_total(array)
    if calculate_percentage.to_s == "NaN"
      0
    else
      (calculate_percentage*100).round(2)
    end
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

  def link_hole_number(number)
    if round_hole = @current_round_user.holes.where(hole_number: number).first
      link_to number, edit_round_hole_path(@round, round_hole)
    else
      link_to number, new_round_hole_path(@round, hole_number: number)
    end
  end

  def print_hole
    
    
  end
end
