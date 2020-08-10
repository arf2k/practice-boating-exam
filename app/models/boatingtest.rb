class BoatingTest
attr_accessor :student, :instructor, :name, :status 
@@all = []

def initialize(name, status, instructor, student)
    self.name = name
    self.status = status
    self.instructor = instructor
    self.student = student  
    @@all << self
end

def self.all
    @@all
end


end