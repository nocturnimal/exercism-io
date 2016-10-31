
class Year

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400

  def self.leap?(date)
    # date % 400 == 0 ? true : date % 100 == 0 ? false : date % 4 == 0 ? true : false
    # The nested ternary expression works, however the readability is poor.
    # The style guide recommends against nested ternary operations.

    # The following is easier to compare vs the rules for leap years.
    case
     when date % 400 == 0
      true
     when date % 100 == 0
      false
     when date % 4 == 0
      true
     else
      false
   end
  end
end

module BookKeeping
  VERSION = 2
end
