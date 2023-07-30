const $ = document;
const registerForm = $.querySelector("#form");
const eyeIcon = $.querySelector("#eye");
const userName = $.querySelector("#username");
const phoneNumber = $.querySelector("#phone");
const email = $.querySelector("#email");
const password = $.querySelector("#password");
const rePassword = $.querySelector("#password2");

registerForm.addEventListener("submit", (event) => {
  checkInputs();
  if (isFormValid() == true) {
    registerForm.submit();
  } else {
    event.preventDefault();
  }
});

function isFormValid() {
  const inputs = registerForm.querySelectorAll("input");
  let result = true;
  inputs.forEach((input) => {
    if (input.classList.contains("error")) {
      result = false;
    }
  });
  return result;
}

function checkInputs() {
  const userNameValue = userName.value.trim();
  const phoneNumberValue = phoneNumber.value.trim();
  const emailValue = email.value.trim();
  const passwordValue = password.value.trim();
  const rePasswordValue = rePassword.value.trim();

  if (userNameValue === "") {
    setErrorFor(userName, ".فیلد را پر کنید");
  } else if (userNameValue.length < 3 || userNameValue.length > 15) {
    setErrorFor(userName, ".نام کاربری باید بین 3 تا 15 کاراکتر باشد");
  } else {
    setSuccessFor(userName);
  }

  if (phoneNumberValue === "") {
    setErrorFor(phoneNumber, ".فیلد را پر کنید");
  } else if (!isPhoneNumber(phoneNumberValue)) {
    setErrorFor(phoneNumber, ".شماره معتبر نیست");
  } else {
    setSuccessFor(phoneNumber);
  }
  if (emailValue === "") {
    setErrorFor(email, ".فیلد را پر کنید");
  } else if (!isEmail(emailValue)) {
    setErrorFor(email, ".ایمیل معتبر نیست");
  } else {
    setSuccessFor(email);
  }
  if (passwordValue === "") {
    setErrorFor(password, ".فیلد را پر کنید");
  } else if (!isPassword(passwordValue)) {
    setErrorFor(password, ".رمز باید ترکیبی از حروف و اعداد و علائم باشد");
  } else {
    setSuccessFor(password);
  }
  if (rePasswordValue === "") {
    setErrorFor(rePassword, ".فیلد را پر کنید");
  } else if (!(rePasswordValue === passwordValue)) {
    setErrorFor(rePassword, ".رمز وارد شده مطابقت ندارد");
  } else {
    setSuccessFor(rePassword);
  }
}

function setErrorFor(input, message) {
  input.classList.remove("border-green");
  input.classList.add("border-red","error");
  input.nextElementSibling.innerHTML = message;
  input.nextElementSibling.style.display = "block";
}

function setSuccessFor(input) {
  input.classList.remove("border-red","error");
  input.classList.add("border-green");
  input.nextElementSibling.style.display = "none";
}

function isEmail(email) {
  return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(
    email
  );
}

function isPassword(pass) {
  return /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,16})/.test(
    pass
  );
}
function isPhoneNumber(phone) {
  return /09(1[0-9]|3[1-9]|2[1-9])-?[0-9]{3}-?[0-9]{4}/.test(phone);
}

// Hidden & show password
let isHide = true;
eyeIcon.addEventListener("click", () => {
  if (isHide) {
    eyeIcon.className += "-slash";
    password.type = "text";
    rePassword.type = "text";
    isHide = false;
  } else {
    eyeIcon.className = "fa-solid fa-eye";
    password.type = "password";
    rePassword.type = "password";
    isHide = true;
  }
});

rePassword.addEventListener("paste", (event) => {
  event.preventDefault();
});
