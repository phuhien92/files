Write a function that outputs 7 in the two following situations:

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
