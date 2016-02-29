#Key ruby Terminology :gem:

**Block** - Just an unnamed block of code

**Symbol** - A way to save memory by re-using the same key instead creating multiple strings or instances

**yield** - used to enter out of a method to run a block of code. Once that block is finished the method will continue being run

**Proc** - A way to save a block so you can use it multiple times. Called by putting '&' at the beggining

**Proc Example:** 

              cube = Proc.new { |x| x ** 3 }

              puts [1, 2, 3].collect!(&cube)

**lambda** - the only major differences from Procs are lambdas count how many arguments are passed to it and thus will throw an error if incorrect amount of arguments. When a lamda returns it will give control to the calling method first unlike a Proc which will return immediately. Also called using '&'

**lamda Example:**

              my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
              symbol_filter = lambda {|v| v.is_a? Symbol}
              symbols = my_array.select(&symbol_filter)
              
>Code copyright of CodeAcademy.com. I do not own anything