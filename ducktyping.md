
Lets see how objects in ruby treat each other and what ducktyping is all about.

```ruby
class Course
  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def print_students
    puts "Students: " + @students.join(', ')
  end
end```

```ruby
class Student
  attr_accessor :fname, :lname, :age

  def initialize(fname, lname, age)
    @fname = fname
    @lname = lname
    @age = age
  end

  def to_s
    "#{@fname} #{@lname} (age: #{@age})"
  end
end```


#  1: [1,2,3,4,5]
#  2: ['a', 'b', 'c']
#  3: [1, 'a', :c, 4]
#  4: arr = [1, 'a', :c, 4]
#  5: arr[4]
#  6: arr[3]
#  7: arr[2]
#  8: arr
#  9: soumya = { :name => 'ray', :age => 30, 'lee' => :TA }
# 10: soumya[:name]
# 11: soumya['lee']
# 12: soumya.first
# 13: soumya[0]
# 14: soumya[1]
# 15: :age
# 16: 'age'
# 17: 'Age'
# 18: :Age
# 19: :Age == :age
# 20: soumya
# 21: soumya << {'rebecca' => :director }
# 22: soumya['rebecca'] = :director
# 23: soumya
# 24: soumya['lee']
# 25: :age.methods
# 26: :age.methods - Object.methods
# 27: ls
# 28: '12' + 4
# 29: '12'.to_i + 4
# 30: '12' + 4.to_s
# 31: ray
# 32: arr
# 33: arr << 99
# 34: '12' + 4
# 35: 'asdf' << 'foo'
# 36: @students << 'me'
# 37: arr
# 38: puts arr
# 39: puts arr.each { |e| e.to_s }
# 40: puts arr.join
# 41: puts arr.join(', ')
# 42: class Test
# 43: end
# 44: Test
# 45: puts Test
# 46: Test.to_s
#
# 60: servsec = Course.new
# 61: puts servsec
# 62: servsec.add_student('Lee')
# 63: servsec.add_student('Cesar')
# 64: servsec.print_students

# 84: Student.new
# 85: cesar = Student.new('Cesar', 'Ordonez', 24)
# 86: puts cesar
# 87: servsec.add_student(cesar)
# 88: servsec.print_students
# 89: arr
# 90: hist
# 91: arr
# 92: arr.each { |e| puts e }
# 93: arr.each { |e| print "#{e}, " }
# 94: arr.each { |e| print "#{e}, " };
# 95: arr.each { |e| print "#{e}, " }
# 96: arr.each { |e| if e.to_s.length > 1; puts "#{e} is long!"; end }
# 97: arr.reduce { |first, second| first.to_s + ", " + second.to_s }
# 98: puts arr.reduce { |first, second| first.to_s + ", " + second.to_s }
# 99: arr.map { |e| e.to_s.upcase }
