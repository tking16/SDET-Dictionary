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
	if family.nil?
	family = []
	end
	print "Add a relative"
	name = gets.chomp
	family.push(name.to_s)
	unless name == "Theo"
	family.each {|fam| puts "Family member: " + fam.to_s}
	end
end
add_fam