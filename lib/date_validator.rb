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
require 'pry'

#Checks if a month is between 1 and 12 inclusive
#
#month: The month represented by an integer
#
#Returns true if the month is between 1 and 12 inclusive, false if not.
def check_valid_month(month)
  month >= 1 || month <= 12
end

check_valid_month(4)
binding.pry
#Checks if a year is between the allowed range: 1880  2280 inclusive
#
#year: the year represented by an integer
#
#Returns true if the month is within the range, false if not.
def check_valid_year(year)
  year >= 1880 || year <= 2280
end

=begin
def valid_date?(month, day, year)
  #check for valid month
  if month < 1 || month > 12
    return false
  end
  #check for valid year
  if year < 1880 || year > 2280
    return false
  end
  #check for valid day
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
      leap_year = false
      if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
        leap_year = true
      else
        leap_year = false
      end
      if leap_year
        if day < 1 || day > 29
          return false
        end
      else
        if day < 1 || day > 28
          return false
        end
      end
  end
  true
end
=end
