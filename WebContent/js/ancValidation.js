function validateForm() {
  var x = document.forms["myForm"]["fullName"].value;
  var y = document.forms["myForm"]["motherID"].value;
  var z = document.forms["myForm"]["email"].value;
  var a = document.forms["myForm"]["maritalStatus"].value;
  var b = document.forms["myForm"]["adharNumber"].value;
  var c = document.forms["myForm"]["position"].value;
  var d = document.forms["myForm"]["confpassword"].value;
  var e = document.forms["myForm"]["phoneNumber"].value;
  var f = document.forms["myForm"]["optPhoneNumber"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }else
  if (y == "") {
	    alert("username must be filled out");
	    return false;
	  }else
		  if (z == "") {
			    alert("email must be filled out");
			    return false;
			  }else
				  if (c == "-1") {
					    alert("position must be filled out");
					    return false;
				  }/*else
							  if (b =="" ) {
								    alert("Enter your adhar Number");
								    return false;
								  
					  }
							   else
						  if ((b.length<12) || (b.length>12) ){
							    alert("Enter your adhar Number Properly.Should have 12 digits");
							    return false;
							  }*/else
								  if (a == "" ) {
									    alert("Password Cant be Empty");
									    return false;
									  }else
							  if (a.length<8 ) {
								    alert("Password cant be less than 8 letters");
								    return false;
								  }else
									  if (e=="") {
										    alert("Fill the Phone Number");
										    return false;
										  }else
									  if (isNaN(e) ) {
										    alert("Enter valid phone Number (like : 7875812237)");
										    return false;
										  }else
											  if (isNaN(f) ) {
												    alert("Enter valid Optional phone Number (like : 7875812237)");
												    return false;
												  }else
													  if (a.length !=d.length ) {
														    alert("Password doesnt Match!");
														    return false;
														  }
}