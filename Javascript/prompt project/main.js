//Code that prompts and does the math
function exponent(){
    let firstOperand = prompt("Enter your base number");
    let secondOperand = prompt("Enter your exponent");
    //displays the number
    document.getElementById("result").innerHTML = firstOperand ** secondOperand; 
}
//button
function refresh(){
    //sets button to non existence
    document.getElementById('button').style.display = 'none'
    //sets the output text to nothing
    document.getElementById("result").innerHTML = '';
    //re-adds the code used after button is pushed and adds buttun
    setTimeout(() => {
        exponent()
        document.getElementById('button').style.display = 'block'
    }, 100);
}