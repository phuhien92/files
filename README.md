#Interview Collection

- Write a function that outputs 7 in the two following situations:

	add(3)(4); // 7
	add(3,4); // 7

	function sum(first, second) {
		return first + second;
	}

	function add(x,y) {
		var iadd = function(other){
			return x + other;
		};
		if(typeof y === 'undefined'){
			return iadd;
		}else{
			return iadd(y);
		}
	}

- Write a function that takes an array as a parameter. The array contains non-negative numbers. Every number in the array appears an even number of times, except for one number that appears an odd number of times. The function should return the number that appears an odd number of times.

	a = [1,3,1,3,5]

	def find_odd_number(array)
		odds = Set.new 

	    a.each do |element|
		if odds.includes? element
			odds.delete(element)
		else
			odds.add(element)
		end
	     end

	    return odds.to_s
	end 
