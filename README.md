# single files collection
// add(3)(4) => 7 
// add(3,4)

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
