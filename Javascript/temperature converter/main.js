function convert(){
    let input = document.getElementById("input").value //Takes user input value
    let result = document.getElementById("result").value//defines the output after calculation
    let temp1 = document.getElementById("temp1").value//First dropdown box
    let temp2 = document.getElementById("temp2").value//second dropdown box
    let blank1 = document.getElementById("blank1").value//simple blankspace option in dropdown box
    let blank2 = document.getElementById("blank2").value//second blankspace option in dropdown box
    let C1 = document.getElementById("C1").value//Celsius value in first dropdown box
    let F1 = document.getElementById("F1").value//Fahrenheit value in first dropdown box
    let K1 = document.getElementById("K1").value//Kelvin value in first dropdown box
    let C2 = document.getElementById("C2").value//Celsius value in second dropdown box
    let F2 = document.getElementById("F2").value//Fahrenheit value in second dropdown box
    let K2 = document.getElementById("K2").value//Kelvin value in second dropdown box

    if(temp1 == blank1 || temp2 == blank2 || input == ""){//if textboxes boxes are empty, alert user to input textbox values
        alert("You need to fill all text boxes!");
    }
    // Celsius to Fahrenheit
    else if(temp1 == C1 && temp2 == F2){//if first dropdown is celsius and second dropdown is Fahrenheit do the equation below
        result = (input*9/5)+32
        if(Number.isInteger(result) == false){//if the result of that equation is a decimal/float do this instead
             result = ((input*9/5)+32).toFixed(2)
            document.getElementById("result").innerHTML = result + '\u00b0' + ' ' +'Fahrenheit'
        }
        else{
        document.getElementById("result").innerHTML = result + '\u00b0' + ' ' + "Fahrenheit"
        }
    }
    //Celsius to Kelvin
    else if(temp1 == C1 && temp2 == K2){//If first dropdown is celsius and second dropdown is Kelvin do equation below

        result = (parseFloat(input) + 273.15).toFixed(2)

        document.getElementById("result").innerHTML = result + ' ' + "Kelvin"
    }
    //Celsius to Celsius
    else if(temp1 == C1 && temp2 == C2){//If first dropdown is the same as the second dropdown, make no changes
        result = input

         document.getElementById("result").innerHTML = result + '\u00b0' + ' ' +'Celsius'
    }
    //Fahrenheit to Celsius
    else if(temp1 == F1 && temp2 == C2){//if first dropdown is Fahrenheit and second dropdown is Celsius do the equation below
        result = ((input-32)*5/9)
        if(Number.isInteger(result) == false){//if the result of that equation is a decimal/float do this instead
            result =  ((input-32)*5/9).toFixed(2) 
            document.getElementById("result").innerHTML = result + '\u00b0' + ' ' +'Celsius'
        }
        else{
        document.getElementById("result").innerHTML = result + '\u00b0' + ' ' +'Celsius'
        }
    }
    //Fahrenheit to Kelvin
    else if(temp1 == F1 && temp2 == K2){//if first dropdown is Fahrenheit and second dropdown is Kelvin do the equation below
        result = ((input-32)*5/9 +273.15)
        if(Number.isInteger(result) == false){//if the result of that equation is a decimal/float do this instead
            result =  ((input-32)*5/9 +273.15).toFixed(2) 
            document.getElementById("result").innerHTML = result + ' ' +'Kelvin'
        }
        else{
        document.getElementById("result").innerHTML = result + ' ' +'Kelvin'
        }
    }
    //Fahrenheit to Fahrenheit
    else if(temp1 == F1 && temp2 == F2){//If first dropdown is the same as the second dropdown, make no changes
        result = input

         document.getElementById("result").innerHTML = result + '\u00b0' + ' ' + "Fahrenheit"
    }
    //Kelvin to Fahrenheit
    else if(temp1 == K1 && temp2 == F2){//if first dropdown is Kelvin and second dropdown is Fahrenheit do the equation below
        result = ((input-273.15)*9/5 +32).toFixed(2)
        document.getElementById("result").innerHTML = result + '\u00b0' + ' ' + "Fahrenheit"
    }
    //Kelvin to Celsius
    else if(temp1 == K1 && temp2 == C2){//if first dropdown is Kelvin and second dropdown is Celsius do the equation below
        result = (parseFloat(input) - 273.15).toFixed(2)

         document.getElementById("result").innerHTML = result + '\u00b0' + ' ' +'Celsius'
    }
    //Kelvin to Kelvin
    else if(temp1 == K1 && temp2 == K2){//If first dropdown is the same as the second dropdown, make no changes
        result = input

         document.getElementById("result").innerHTML = result + ' ' + "Kelvin"
    }
}
