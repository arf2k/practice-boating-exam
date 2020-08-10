require_relative "./app/models/instructors.rb"
require_relative "./app/models/students.rb"
require_relative "./app/models/boatingtest.rb"
require "pry"


spongebob = Students.new("Spongebob")
patrick= Students.new("Patrick")
alex = Students.new("Alex")

puff= Instructors.new("Ms.Puff")
krabs= Instructors.new("Mr.Krabs")
tom= Instructors.new("Tom")
harry = Instructors.new("Harry")

dont_crash = BoatingTest.new("Don't Crash 101", "pending", puff, spongebob)
power_steering = BoatingTest.new("Power Steering", "failed", krabs, patrick)
stop = BoatingTest.new("Stop", "passed", tom, alex)
go = BoatingTest.new("Go", "passed", harry, patrick)

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

