

# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
public
ages = [24, 30, 18, 20, 41]
def standard_deviation_age
  ages = self
  how_many = ages.count
  mean = ages.reduce(:+) / how_many
  step4 = ages.map { |s| s - mean }
  step41 = step4.map { |s| s.round(1) }
  step5 = step41.map { |s| s ** 2 }
  step51 = step5.map { |s| s.round(2) }
  new_sum = step51.reduce(:+).round(1)
  step7 = new_sum / how_many
  step8 = Math.sqrt(step7)
  step81 = step8.round(2)
end

ages.standard_deviation_age
