# code here!
require "pry"
class School

attr_accessor :roster
attr_reader :name

def initialize(new)
   @roster = {}
   @school = new
 end

 def add_student(name, grade)
     @roster[grade]||= []
     @roster[grade] << name
 end

def grade(grade)
  @roster[grade]
end

def sort
  sorted = {}
  @roster.map do |key, value|
    sorted[key] = value.sort
  end
  sorted
end


end
