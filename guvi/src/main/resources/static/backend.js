function getuserinput(event){
    event.preventDefault();
    const admis = document.getElementById("Admission").value;
    const pass = document.getElementById("pass").value;

    fetch('/login', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: `admin_no=${encodeURIComponent(admis)}&pass=${encodeURIComponent(pass)}`
})
};