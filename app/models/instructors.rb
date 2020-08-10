class Instructors
attr_accessor :name
@@all 

def initialize(name)
    @name = name
end

def self.all
    @@all
end

def boating_test
    BoatingTest.all.select do |tests|
        tests.instructor == self
    end
end

def students 
    boating_test.map do |tests|
        tests.student
    end
end

# def passed_student(boating_test, student)
#     if boating_test.student == self
#         boating_test.status = "passed"
#         else
#             BoatingTest.new(boating_test, student, self, status = "pending")
#         end
#     end
 

# def passed_students
#     boating_test.select do |tests|
#         tests.status == "passed"
#     end
# end


end