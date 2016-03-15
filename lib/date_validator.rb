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


#Checks if a month is between 1 and 12 inclusive
#
#month: integer representing the month
#
#Returns true if the month is between 1 and 12 inclusive, false if not.
def check_valid_month(month)
  month >= 1 && month <= 12
end

#Checks if a year is between the allowed range: 1880  2280 inclusive
#
#year: integer representing the year
#
#Returns true if the month is within the range, false if not.
def check_valid_year(year)
  year >= 1880 && year <= 2280
end

#Checks for valid days in months with 31 days.
#
#day: integer representing the day of the months
#
#Returns true if the day is between 1 and 31.
def check_31_days(day)
  day >= 1 && day <= 31
end

#Checks for valid days in months with 30 days.
#
#day: integer representing the day of the months
#
#Returns true if the day is between 1 and 30.
def check_30_days(day)
  day >= 1 && day <= 30
end

#Checks if a year is a leap year.
#
#year: integer representing a year
#
#Returns true if the year is a leap year
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

#Checks if the day in february is between 1 & 29 days (leap year)
#
#day: integer representing a day of the month
#
#Returns true if the day is between 1 and 29
def check_feb_29_days(day)
  day >= 1 && day <= 29
end

#Checks if the day in february is between 1 & 28 days (non-leap year)
#
#day: integer representing a day of the month
#
#Returns true if the day is between 1 and 28
def check_feb_28_days(day)
  day >= 1 && day <= 28
end

#If the year is a leap year it calls the correct day check method
#
#day: integer representing a day of the month
#year: integer representing a year
#
#Returns true if the day checks come back true, false if the day is out of range
def check_feb_days(day, year)
  if leap_year?(year)
    check_feb_29_days(day)
  else
    check_feb_28_days(day)
  end
end

#Call the correct day check for each month's number of days
#
#month: integer representing the month of the year
#day: integer representing a day of the month
#year: integer representing a year
#
#Returns true if the day checks come back true, false if the day is out of range
def determine_number_days(month, day, year)
  case month
    when 1, 3, 5, 7, 8, 10, 12
      check_31_days(day)
    when 4, 6, 9, 11
      check_30_days(day)
    when 2
      check_feb_days(day, year)
  end
end

#Pull together all checks to make final date validity determination
#
#month: integer representing the month of the year
#day: integer representing a day of the month
#year: integer representing a year
#
#Returns true if all checks come back true and the date is valid
def valid_date?(month, day, year)
determine_number_days(month, day, year) && check_valid_month(month) && check_valid_year(year)
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
