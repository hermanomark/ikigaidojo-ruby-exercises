1. Copy your file to a new file: cp arrays_2-3.rb arrays_2-4.rb, then open this new file.

Now change your code so that you get the following output:

	["One <3", "Three <3<3<3", "Five <3<3<3<3<3"]
	
2. Copy your file to a new file: cp arrays_2-4.rb arrays_2-5.rb, then open this new file.

Now change your code so that you get the following output 

(hint: again, that’s now a string, not an array):	

	One <3, Three <3<3<3, Five <3<3<3<3<3
	
3. Copy your file to a new file: cp arrays_2-5.rb arrays_2-6.rb, then open this new file.

Now change your code so that you get the following output, using the newline character "\n":	

	One <3
	Three <3<3<3
	Five <3<3<3<3<3
	
4. Copy your file to a new file: cp arrays_2-6.rb arrays_2-7.rb, then open this new file.

Now change your code so that you get the following output, aligning the second column:

	One   <3
	Three <3<3<3
	Five  <3<3<3<3<3
	
As you may guess, strings have a method that is helpful for this. Ask Google: “ruby string align”.	

5. Make a new file nested_arrays-1.rb, and fill in the following line:

	numbers = [
  		[1, 2, 3],
  		[4, 5, 6],
  		[7, 8, 9]
	]
	
	# your code goes here
	p sums
	
So that you get the following output:

	[6, 15, 24]	
	
6. Make a new file nested_arrays-2.rb, and fill in the following line:

   numbers = [
      [1, 2, 3],
  	  [2, 2, 2],
      [3, 2, 1]
   ]
    
   # your code goes here
   lines.each { |line| puts line }
		
	* ** ***
	** ** **
	*** ** *	
		
7. Make a new file hashes_2-1.rb, and dd the following lines:


	languages = {
  		:de => 'German',
  		:en => 'English',
  		:es => 'Spanish',
	}

	dictionary = {
  		:de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
  		:en => { :one => 'one', :two => 'two', :three => 'three' },
  		:es => { :one => 'uno', :two => 'dos', :three => 'tres' }
	}
	
Now, at the end of the file, add code that prints out the following:

	In German, eins means one, zwei means two, drei means three.
	In Spanish, uno means one, duo means two, tres means three.	
	
8. Copy your file to a new file cp hashes_2-2.rb hashes_2-3.rb and change your code 
so that it aligns the table columns:	

	de eins zwei drei
	en one  two  three
	es uno  dos  tres
	
9. Copy your file to a new file cp hashes_2-3.rb hashes_2-4.rb and change your 
code so that it adds delimiters:	

	| de | eins | zwei | drei  |
	| en | one  | two  | three |
	| es | uno  | dos  | tres  |
	
10. This exercise is about validating what we’ve learned about truthiness.
You have the following array:

	objects = [true, false, 0, 1, "", [], Object.new, Class.new, Module.new]
	
Add some code that outputs the following table. The last column should be filled in with 
by either true or false depending what the operation !!object, which is the same asnot 
not object` for each of the objects returns:

	object                     | !!object
	true                       | [true|false]
	false                      | [true|false]
	nil                        | [true|false]
	0                          | [true|false]
	1                          | [true|false]
	""                         | [true|false]
	[]                         | [true|false]
	#<Object:0x007fb3dc0ea1b8> | [true|false]
	#<Class:0x007fb3dc0e2cd8>  | [true|false]
	#<Module:0x007fb3dc0d9ea8> | [true|false]	
	
You can use the method inspect in order to, for each of the values, get a representation 
that looks like the code.

Of course you will get different object ids for the object, class, and module instances 
everytime you run your code.
	

So let’s prettify this table by removing the object ids. You can do this calling 
sub(/:.*>/, ">") on whatever inspect returns.	

Your table should now look like this:	

object    | !!object
true      | true
false     | false
nil       | false
0         | true
1         | true
""        | true
[]        | true
#<Object> | true
#<Class>  | true
#<Module> | true
		