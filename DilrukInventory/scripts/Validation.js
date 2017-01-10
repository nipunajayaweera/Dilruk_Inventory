function validateForm() {
    var x = document.forms["form1"]["item"].value;
    if (x == "") {
        alert("Name must be filled out");
        return false;
    }
}