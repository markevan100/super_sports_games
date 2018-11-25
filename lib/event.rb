class Event

  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max_by { |s| s }
  end

  def min_age
    ages.min_by { |s| s }
  end

  def average_age
    (ages.reduce(:+) / ages.count.to_f)
  end

  def standard_deviation_age
    step1 = ages.map { |s| (s - (ages.reduce(:+) / ages.count.to_f)) ** 2 }
    Math.sqrt((step1.reduce(:+) / ages.count)).round(2)
  end
end
