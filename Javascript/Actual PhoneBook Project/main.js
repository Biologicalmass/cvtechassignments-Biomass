// document.getElementById("button").addEventListener("click", fish);
function fish(){
if (document.getElementById("info1") || document.getElementById("info2") || document.getElementById("info3") != " "){
    // let taco1 = document.getElementById("info1").value;

    // let taco2 = document.getElementById("info2").value;

    // let taco3 = document.getElementById("info3").value;

    // //Table row and cell values/ locations
    i=1
    j=0
    f=1
    k=2
    console.log('ooga');
    //New table row and cells
    var table = document.getElementById("table1");
    var row = table.insertRow(i++);
    console.log(row);
    var cell1 = row.insertCell(j);
    var cell2 = row.insertCell(f);
    var cell3 = row.insertCell(k);
    cell1.innerHTML = document.getElementById("info1").value
    cell2.innerHTML = document.getElementById("info2").value
    cell3.innerHTML = document.getElementById("info3").value
    // cell1.innerHTML = taco1
    // cell2.innerHTML = taco2
    // cell3.innerHTML = taco3
}
}

//Credit to Landon and Cameron for making this work