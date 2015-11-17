$stdout.sync = true
print "Enter name:"
name = gets.chomp
print "Enter D.O.B:"
dob = gets.chomp
print "Enter age:"
age = gets.chomp
print "Enter height:"
height = gets.chomp

new_hash = {name: name, dateofBirth: dob, age: age, Height: height}
new_hash.each do |k, v|
	puts "key:#{k} Value: #{v}"
end

def add_fam
	print "Add a relative"
family = Array.new(5){|r| (r=gets.chomp).to_s}

	family.each {|fam| puts "Family member:" + fam.to_s}
	
end
add_fam