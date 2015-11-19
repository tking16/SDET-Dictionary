#External Data

###How do we open external files?

	file = File.open('names.txt')

	file.each do |line|
	puts line
	end
	
how would we add an 

	File.open('newfile.txt', 'w') do |file|
	file.write "some text"
	end
the 'w' allows us to write to the new file

- A more succinct way...

		File.write('newfile.txt, "some text")
how to append instead of overwriting?

	File.open('newfile.txt', 'a') do |file|
	file.write "some text"
	end
just change the 'w' to an 'a' which stands for append

##YAML (Yet Another Markup Language)
human readable language for storing key-value pairs
-structured
-white space sensitive 

example:
	*person1: (this is the key; everything under it is the value)
		fname: Joe
		surname: Bloggs
		dob: 1 Jan 1990
		emails: 1 Jan 1990
			-joe@example.com
			-joe.bloggs.com
		phones:
			-07712345678*
In this example, the tabs matter as it tells the program what is categorized under what
-the tabs must be consistent

if we wanted to create more than one person this is the best way. Just put a "-" before each key to tell it thats a number in a list

##Reading a YAML file with Ruby


**key terms**