function submitForm() {
		var frm = $('#contactform');
		var submsg = document.getElementById("submsg")
		var name = document.getElementById("name").value;
		var email = document.getElementById("email").value;
		var msg = document.getElementById("msg").value;
		if (name != "" || email != "" || msg != "")  {
			frm[0].submit();
			frm[0].reset();
			submsg.textContent = "Successfully submitted!";
			submsg.style.color = 'green'
			$(".fade_div").finish().fadeIn("fast").delay(3000).fadeOut("slow");
		} else {
			submsg.textContent = "Please fill out at least one field.";
			submsg.style.color = 'white'
			$(".fade_div").finish().fadeIn("fast").delay(2000).fadeOut("slow");
		}
	};

window.onload = function() {
    var iframe = document.createElement('iframe');
    iframe.style.display = "none";
	iframe.name = "hidden_iframe";
	iframe.id = "hidden_iframe";
    document.body.appendChild(iframe);
};