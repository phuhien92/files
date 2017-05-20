/*
OF.FER.UP
        *        
       ***       
      *****      
       ***       
      *****      
     *******     
      *****      
     *******     
    *********    
     *******     
    *********    
   ***********   
    *********    
   ***********   
  *************  
   ***********   
  *************  
 *************** 
  *************  
 *************** 
*****************
        *        
        *        
 *************** 

*/
function loopStr(n,str) {
    var result = "";
    for (var i = 0; i < n; i++) {
        result += str;
    }
    return result;
}
    
function root(max,reduce) {
    star = max - reduce;
    space= (max - star) / 2;
    console.log(loopStr(space," ") + loopStr(star,"*") + loopStr(space," "));
}

// pine tree 
function drawPineTree(n,m) {
    var max  = 2*(m+1) + 1;
    for (var row = 0; row < m; row++) {
        
        var star = 1 + row*2;
        var space= (max - star)/2; 
        
        for (var i = 0; i < n; i++) {
          console.log(loopStr(space," ") + loopStr(star,"*") + loopStr(space," "));
          star  = star + 2;
          space = space - 1;
        }
    }
    
    root(max,max-1);
    root(max,max -1);
    root(max,2);
}

console.log(drawPineTree(3,4))
