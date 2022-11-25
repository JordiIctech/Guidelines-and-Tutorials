//Dynamic Variables
for(let i = 1; i < 5; i++) { //let makes the variable a local variable
    eval('var ' + `value${i}` + '= ' + i + ';'); //String interpolation, needs to use backticks (`)
    console.log(eval("value" + i)); //eval defines the variable based on the name and added number
}

//if and
if (coordsX < 265 && coordsY < 750){  
    console.log("X", coordsX) 
    console.log("Y", coordsY) }
