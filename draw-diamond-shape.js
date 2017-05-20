/*
OF.FER.UP
   *   
  ***  
 ***** 
*******
 ***** 
  ***  
   *   

*/

function drawDiamond(n) {
    var reduce = 2;
    var star = 1, space = (n - 1)/2;
    
    for (var i = 0; i < n; i++) {
    console.log(loopStr(space," ") + loopStr(star,"*") + loopStr(space," "));
    star  = star + reduce;
    space = ((n - star)/2);
    if (star == n) reduce = -2;
    }
}

function loopStr(n,str) {
    var result = "";
    for (var i = 0; i < n; i++) {
        result += str;
    }
    return result;
}

console.log(drawDiamond(7))
