class Students
attr_accessor :name
@@all = []

def initialize(name)
    self.name = name
    @@all << self
end

def self.all
    @@all
end 

def add_boating_test(test, status, instructor)
    new_test = BoatingTest.new(self, test, status, instructor)
end

def self.find_student(student)
    Students.all.filter do |students|
        students.name == student
    end
end

def boating_test 
    BoatingTest.all.select do |tests|
        tests.student == self
    end
end

def instructors
    boating_test.map do |tests|
        tests.instructor
    end
end

end