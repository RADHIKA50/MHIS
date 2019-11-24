						<form id="regForm" action="#" style="margin-top:29px">

  <!-- One "tab" for each step in the form: -->
  <div class="tab"><h1>Personal Details:</h1>
    <p><input placeholder="Mother ID" oninput="this.className = ''" name="motherId"></p>
    <p><input placeholder="Full Name." oninput="this.className = ''" name="fullName"></p>
    <p><input placeholder="Address." oninput="this.className = ''" name="address"></p>
    <p><input placeholder="Birthday date." oninput="this.className = ''" name="dob"></p>
    <p><input placeholder="husband." oninput="this.className = ''" name="husband"></p>
    <p><input placeholder="Phone Number." oninput="this.className = ''" name="phoneNumber"></p>
    <p><input placeholder="Email." oninput="this.className = ''" name="email"></p>
   
  </div>
  <div class="tab"><h1>Pregnancy Details:</h1>
   <p><input placeholder="Prepregnancy Description." oninput="this.className = ''" name="prepregnancy"></p>
    <p><input placeholder="Pregnancy Loss." oninput="this.className = ''" name="pregnancyLoss"></p>
    <p><input placeholder="Last Child Age." oninput="this.className = ''" name="lastChildAge"></p>
  </div>
  <div class="tab"><h1>Measurement:</h1>
    <p><input placeholder="height" oninput="this.className = ''" name="height" type="number"></p>
    <p><input placeholder="weight" oninput="this.className = ''" name="weight"></p>
    <p><input placeholder="Weekly Pregnancy Age" oninput="this.className = ''" name="weeklyPregnancyAge"></p>
  </div>
  <div class="tab"><h1>Login Info:</h1>
    <p><input placeholder="Username..." oninput="this.className = ''" name="uname"></p>
    <p><input placeholder="Password..." oninput="this.className = ''" name="pword" type="password"></p>
  </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
</form>
<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>



#regForm {
  border:3px solid #4acdd1;
  margin: 100px auto;
  font-family: Raleway;
  padding: 10px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;
  color:#4acdd1;  
  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 15px;
  color:#4acdd1;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}