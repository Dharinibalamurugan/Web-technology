function validateForm() {

  // Clear all previous errors
  clearErrors();

  let isValid = true;

  // --- 1. FIRST NAME ---
  let firstName = document.getElementById("firstName").value.trim();
  let nameRegex = /^[A-Za-z]+$/;
  if (firstName === "") {
    showError("errFirstName", "First name cannot be empty.");
    isValid = false;
  } else if (!nameRegex.test(firstName)) {
    showError("errFirstName", "First name must contain alphabets only.");
    isValid = false;
  } else if (firstName.length < 6) {
    showError("errFirstName", "First name must be at least 6 characters.");
    isValid = false;
  }

  // --- 2. LAST NAME ---
  let lastName = document.getElementById("lastName").value.trim();
  if (lastName === "") {
    showError("errLastName", "Last name cannot be empty.");
    isValid = false;
  }

  // --- 3. EMAIL ---
  let email = document.getElementById("email").value.trim();
  let emailRegex = /^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$/;
  if (email === "") {
    showError("errEmail", "Email cannot be empty.");
    isValid = false;
  } else if (!emailRegex.test(email)) {
    showError("errEmail", "Enter a valid email like name@domain.com");
    isValid = false;
  }

  // --- 4. MOBILE NUMBER ---
  let mobile = document.getElementById("mobile").value.trim();
  let mobileRegex = /^[0-9]{10}$/;
  if (mobile === "") {
    showError("errMobile", "Mobile number cannot be empty.");
    isValid = false;
  } else if (!mobileRegex.test(mobile)) {
    showError("errMobile", "Mobile number must contain exactly 10 digits.");
    isValid = false;
  }

  // --- 5. PASSWORD ---
  let password = document.getElementById("password").value.trim();
  if (password === "") {
    showError("errPassword", "Password cannot be empty.");
    isValid = false;
  } else if (password.length < 6) {
    showError("errPassword", "Password must be at least 6 characters.");
    isValid = false;
  }

  // --- 6. ADDRESS ---
  let address = document.getElementById("address").value.trim();
  if (address === "") {
    showError("errAddress", "Address cannot be empty.");
    isValid = false;
  }

  // If all valid — show success
  if (isValid) {
    document.getElementById("successMsg").style.display = "block";
  }

  return false; // Prevent page reload
}

function showError(id, message) {
  document.getElementById(id).textContent = message;
}

function clearErrors() {
  let errors = document.querySelectorAll(".error");
  errors.forEach(function(e) { e.textContent = ""; });
  document.getElementById("successMsg").style.display = "none";
}
