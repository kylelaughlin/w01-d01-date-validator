# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:
#
# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#
# This method should, in its final form, not do any output.

def valid_date?(month, day, year)
  if month < 1 || month > 12
    return false
  end
  if year < 1880 || year > 2280
    return false
  end
  case month
  when 1, 3, 5, 7, 8, 10, 12
    if day < 1 || day > 31
      return false
    end
  when 4, 6, 9, 11
    if day < 1 || day > 30
      return false
    end
  end


end

=begin
#handle february leap year posibility
  if month = 2
    if year % 4 != 0
      leap_year = 0
    elsif year % 100 != 0
      leap_year = 1
    elsif year % 400 != 0
      leap_year = 0
    else
      leap_year = 1
    end
    if leap_year = 1
      if day < 1 || day > 29
        return false
      end
    else
      if day < 1 || day > 28
        return false
      end
    end
  else
    #handle number of days in any other month
    case month
    when 1, 3, 5, 7, 8, 10, 12
      if day < 1 || day > 31
        return false
      end
    when 4, 6, 9, 11
      if day < 1 || day > 30
        return false
      end
    when 2

    end
  end
  return true
end

valid_date?(3,40,2006)
=end
