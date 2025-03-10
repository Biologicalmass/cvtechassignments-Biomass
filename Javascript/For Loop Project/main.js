function loopy() {
    // //the variable that is responsible for any test displayed on screen
    let  text =""
    let startNum = parseInt(document.getElementById('inforb1').value);
    let endNum = parseInt(document.getElementById('inforb2').value);
    let incNum = parseInt(document.getElementById('inforb3').value);
    // Just declares that the text in orb1 is undefined
        document.getElementById('orb1').innerHTML = '';

//Code that didn't work, and had some issues
    // if(startNum > endNum){
    //     for(startNum; startNum > endNum; startNum -= incNum)
    //         {
    //             text = startNum -= incNum
    //             if(startNum > endNum){
    //                 break;
    //             }
    //             document.getElementById('orb1').innerHTML += text += ' ';
    //         }

    //         }
    // else{
    //     for(startNum; startNum < endNum; startNum += incNum)
    //     {
    //         text = startNum += incNum
    //         if(startNum > endNum){
    //             break;
    //         }
    //         document.getElementById('orb1').innerHTML += text += ' ';
    //     }

    // }

//Start of fixed code thanks to chatGPT
    if (startNum > endNum) {
        // Decrement loop
        for (let i = startNum; i >= endNum; i -= incNum) {
            text += i + ' '; // Add the number to the text
        }
    } else {
        // Increment loop
        for (let i = startNum; i <= endNum; i += incNum) {
            text += i + ' '; // Add the number to the text
        }
    }

    // Display the final result in orb1
    document.getElementById('orb1').innerHTML = text.trim(); // Remove trailing space
}