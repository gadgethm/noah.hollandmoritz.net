---
title: contact
---


Please fill out this form to send me an email, or use any of the social media links below! 

<form name="contactform" id="contactform" enctype="text/plain" action="https://docs.google.com/forms/d/e/1FAIpQLSfhOfLg8ctEHzabdx-b2rhVpdcbUWisV4LieK8Oa21mvrz4UQ/formResponse?" target="hidden_iframe" onsubmit="submitted=true">
	<div class="field half first">
		<label for="name" id="test">Name</label>
		<input type="text" name="entry.1944699830" id="name" />
	</div>
	<div class="field half">
		<label for="email">Email</label>
		<input type="email" name="entry.714845393" id="email" />
	</div>
	<div class="field">
		<label for="message">Message</label>
		<textarea name="entry.1049577728" id="msg" rows="4"></textarea>
	</div>
	<ul class="actions">
		<li><input type="button" value="Send Message" class="special" onclick="submitForm()" /></li>
		<li><input type="reset" value="Reset" /></li>
		<li><div class="fade_div" id="submsg"></div></li>
	</ul>
</form>

<iframe name="hidden_iframe" id="hidden_iframe" style="display:none;" onload="if(submitted) {}"></iframe>

<script src="assets/js/jquery.min.js"></script>
<script type="text/javascript">var submitted=false;</script>
<script type="text/javascript">
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
  
</script>


***
<ul class="icons">
	
	{% if site.twitter_url %}
	<li><a href="{{ site.twitter_url }}" class="icon fa-twitter" target="_blank"><span class="label">Twitter</span></a></li>
	{% endif %}
				{% if site.googleplus_url %}
				<li><a href="{{ site.googleplus_url }}" class="icon fa-google-plus" target="_blank"><span class="label">Google+</span></a></li>
				{% endif %}
				{% if site.facebook_url %}
				<li><a href="{{ site.facebook_url }}" class="icon fa-facebook" target="_blank"><span class="label">Facebook</span></a></li>
				{% endif %}
				{% if site.instagram_url %}
				<li><a href="{{ site.instagram_url }}" class="icon fa-instagram" target="_blank"><span class="label">Instagram</span></a></li>
				{% endif %}
				{% if site.pinterest_url %}
				<li><a href="{{ site.pinterest_url }}" class="icon fa-pinterest" target="_blank"><span class="label">Pinterest</span></a></li>
				{% endif %}
				{% if site.gitlab_url %}
				<li><a href="{{ site.gitlab_url }}" class="icon fa-gitlab" target="_blank"><span class="label">GitLab</span></a></li>
				{% endif %}
				{% if site.github_url %}
				<li><a href="{{ site.github_url }}" class="icon fa-github" target="_blank"><span class="label">GitHub</span></a></li>
				{% endif %}
				{% if site.slack_url %}
				<li><a href="{{ site.slack_url }}" class="icon fa-slack" target="_blank"><span class="label">Slack</span></a></li>
				{% endif %}
				{% if site.linkedin_url %}
				<li><a href="{{ site.linkedin_url }}" class="icon fa-linkedin" target="_blank"><span class="label">LinkedIn</span></a></li>
				{% endif %}

</ul>
