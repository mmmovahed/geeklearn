import { Alert } from "../../components/Alert/alert.js";

window.customElements.define('my-alert', Alert)
const $ = document;
const registerForm = $.querySelector("#form");
const eyeIcon = $.querySelector("#eye");
const password = $.querySelector("#password");
const email = $.querySelector("#email");

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
  const emailValue = email.value.trim();
  const passwordValue = password.value.trim();

  if (emailValue === "") {
    setErrorFor(email, ".فیلد را پر کنید");
  } else if (!isEmail(emailValue)) {
    setErrorFor(email, ".ایمیل معتبر نیست");
  } else {
    setSuccessFor(email);
  }
  if (passwordValue === "") {
    setErrorFor(password, ".فیلد را پر کنید");
  } else {
    setSuccessFor(password);
  }
}

function setErrorFor(input, message) {
  input.classList.add("border-red", "error");
  input.nextElementSibling.innerHTML = message;
  input.nextElementSibling.style.display = "block";
}

function setSuccessFor(input) {
  input.classList.remove("border-red", "error");
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

// Hidden & show password
let isHide = true;
eyeIcon.addEventListener("click", () => {
  if (isHide) {
    eyeIcon.className += "-slash";
    password.type = "text";
    isHide = false;
  } else {
    eyeIcon.classList = "fa-solid fa-eye";
    password.type = "password";
    isHide = true;
  }
});
