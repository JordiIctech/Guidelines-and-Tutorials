//Dynamic Variables
for(let i = 1; i < 5; i++) { //let makes the variable a local variable
    eval('var ' + "value" + i + '= ' + i + ';');
    console.log(eval("value" + i)); //eval defines the variable based on the name and added number
}
