module UsersHelper

# Calculate fairways and greens in regulation, sandies, and up and downs.

  def yes_no_total(array)
    array.count { |x| x == "Yes" || x == "No" }
  end

  def yes_count(array)
    array.count("Yes")
  end

  def total_percentage(array)
    calculate_percentage = array.count("Yes").to_f/yes_no_total(array)
    if calculate_percentage.to_s == "NaN"
      0
    else
      (calculate_percentage*100).round(2)
    end
  end

  def sum_full_array(array)
    array.inject(:+)
  end
end
