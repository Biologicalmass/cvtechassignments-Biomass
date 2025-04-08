function calculate(){
    let fName = document.getElementById('fName').value//User first name
    let lName = document.getElementById('lName').value//User last name
    let grade1 = parseFloat(document.getElementById('grade1').value)//User's first grade
    let grade2 = parseFloat(document.getElementById('grade2').value)//User's second grade
    let grade3 = parseFloat(document.getElementById('grade3').value)//User's third grade

        //alerts the user if any textbox isn't filled or filled with wrong information
    if(fName==""||lName==""||grade1 != parseFloat(grade1) ||grade2 != parseFloat(grade2)|| grade3 != parseFloat(grade3)){
            alert('You need to fill in all text boxes!');
            clear();
    }
    //If grade values are negative alert the user that it can't happen
    else if(grade1 < 0||grade2 < 0|| grade3 < 0){
        alert('Cannot use a negative number');
        clear();
    }
    //If grade values are over 100 then alert user that grades cannot be over 100
    else if(grade1 >parseFloat(100)|| grade2 >parseFloat(100)||grade3 >parseFloat(100)){
        alert('Cannot be over 100')
    }
    //Play all other functions
    else {
        average();
        display();
        letterGrade();
    }
}
    //Redefine user input and then find the average to the hundreth decimal point
    function average() {
    let grade1 = parseFloat(document.getElementById('grade1').value)
    let grade2 = parseFloat(document.getElementById('grade2').value)
    let grade3 = parseFloat(document.getElementById('grade3').value)
    let avOutput = document.getElementById('average').value

            avOutput = ((grade1 + grade2 + grade3)/3).toFixed(2)
            document.getElementById('average').innerHTML = 'Average:' + ' ' + avOutput + '%'
            //Allows other functions to call the average function for their own use
            return avOutput
    }
    //Redefines user input and then displays user name as full first and last alongside User grades
    function display(){

        let fName = document.getElementById('fName').value
        let lName = document.getElementById('lName').value
        let grade1 = parseFloat(document.getElementById('grade1').value)
        let grade2 = parseFloat(document.getElementById('grade2').value)
        let grade3 = parseFloat(document.getElementById('grade3').value)
        document.getElementById('stringOutput').innerHTML = 'Full Name:' + ' ' + fName + ' ' + lName
        document.getElementById('grades').innerHTML = "Grade 1:" + " " + grade1 + "<br>" + "Grade 2:" + " " + grade2 +"<br>"+ "Grade 3:" +" "+ grade3
    }
    //Calls upon the average functions value in an attempt to deduce what letter grade it would be
    function letterGrade(){
        //if average is greater than or equal to 90, the letter grade is A
        if(average() >= 90){
            document.getElementById('letterG').innerHTML = "Letter Grade: A"
        }
        //if average is less than 90 and greater than or equal to 80, the letter grade is B
        else if(average() < 90 && average() >=80){
           document.getElementById('letterG').innerHTML = "Letter Grade: B"
        }
        //if average is less than 80 and greater than or equal to 70, the letter grade is c
        else if(average() < 80 && average() >=70){
           document.getElementById('letterG').innerHTML = "Letter Grade: C"
        }
        //if average is less than 70 and greater than or equal to 60, the letter grade is D
        else if(average() < 70 && average() >=60){
            document.getElementById('letterG').innerHTML = "Letter Grade: D"
         }
         //if average is none of the values above, the letter grade is F
         else{
            document.getElementById('letterG').innerHTML = "Letter Grade: F"
         }
    }
    //Sets all html values to undefined, or nothing, clearing the page
    function clear(){
        document.getElementById('stringOutput').innerHTML = ""
        document.getElementById('grades').innerHTML = ""
        document.getElementById('average').innerHTML = ""
    }
// const date = new Date();
// let text = date.toDateString()
// document.getElementById('date').innerHTML = "Today's Date " + text
