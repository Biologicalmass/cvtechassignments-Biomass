//alert("Hello World")

// Start of Even/Odd project
let input = document.getElementById("evenodd")
let answer = document.getElementById("answer")
function tellTale(){
    let newInput = input.value % 2
    if (newInput == 0){
        answer.innerHTML = "Even"
    } else if (newInput == 1){
        answer.innerHTML = "Odd"
    }else {
        answer.innerHTML = "How did you even do this?"
    }
}

// function container(){
// document.getElementById("Even/Odd").value = function tellTale(){
//     if (number % 2 !== 0){
//         return "Odd"
//     } else if (number % 2 === 0){
//         return "Even"
//     }else {
//         return "How did you even do this?"
//     }
// }
// }