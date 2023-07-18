const $ = document
const eyeElem = $.querySelector('.bi-eye')
const eyeElemSlash = $.querySelector('.bi-eye-slash')
const userName = $.querySelector('#username')
const phoneNumber = $.querySelector('#phone')
const email = $.querySelector('#email')
const password = $.querySelector('#password')
const rePassword = $.querySelector('#password2')
const registerForm = $.querySelector('#form')


registerForm.addEventListener('submit',(event) => {
    event.preventDefault()
    checkInputs()
})


function checkInputs(){
    const userNameValue = userName.value.trim()
    const phoneNumberValue = phoneNumber.value.trim()    
    const emailValue = email.value.trim()
    const passwordValue = password.value.trim()
    const rePasswordValue = rePassword.value.trim()

    if(userNameValue === ''){
        setErrorFor(userName,'.فیلد را پر کنید')
    }
    else if(userNameValue.length < 3 || userNameValue.length > 15){
 
        setErrorFor(userName,'.نام کاربری باید بین 3 تا 15 کاراکتر باشد')
    }
    else{
        setSuccessFor(userName)
    }

    if(phoneNumberValue === ''){
        setErrorFor(phoneNumber,'.فیلد را پر کنید')
    }
    else if(!(isPhoneNumber(phoneNumberValue))){
    setErrorFor(phoneNumber,'.شماره معتبر نیست')
    }
    else{
        setSuccessFor(phoneNumber)
    }
    if(emailValue === ''){
        setErrorFor(email,'.فیلد را پر کنید')
    }
    else if(!(isEmail(emailValue))){
        setErrorFor(email,'.ایمیل معتبر نیست')
    }
    else{
        setSuccessFor(email)
    }
    if(passwordValue === ''){
        setErrorFor(password,'.فیلد را پر کنید')
    }
    else if(!(isPassword(passwordValue))){
        setErrorFor(password,'.رمز باید ترکیبی از حروف و اعداد و علائم باشد')
    }
    else{
        setSuccessFor(password)
    }
    if(rePasswordValue === ''){

        setErrorFor(rePassword,'.فیلد را پر کنید')
    }
    else if(!(rePasswordValue === passwordValue)){
        setErrorFor(rePassword,'.رمز وارد شده مطابقت ندارد')
    }
    else{
        setSuccessFor(rePassword)
    }
}



function setErrorFor(input,message){

    input.classList.remove('border-green-400')
    input.classList.add('border-red-400')
    input.nextElementSibling.innerHTML = message
    input.nextElementSibling.style.display = 'block'
}

function setSuccessFor(input){

    input.classList.remove('border-red-400')
    input.classList.add('border-green-400')
    input.nextElementSibling.style.display = 'none'
}

function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}

function isPhoneNumber (phone){
    return /09(1[0-9]|3[1-9]|2[1-9])-?[0-9]{3}-?[0-9]{4}/.test(phone);
}

function isPassword(pass){
    return /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,16})/.test(pass);
}

// Hidden & show password
eyeElem.addEventListener('click', () => {
    eyeElem.classList.add('hidden')
    eyeElemSlash.classList.remove('hidden')
    password.type = 'text'
    rePassword.type = 'text'
})

eyeElemSlash.addEventListener('click',() => {
    eyeElemSlash.classList.add('hidden')
    eyeElem.classList.remove('hidden')
    password.type = 'password'
    rePassword.type = 'password'
})

rePassword.addEventListener('paste',(event) => {
    event.preventDefault()
})


