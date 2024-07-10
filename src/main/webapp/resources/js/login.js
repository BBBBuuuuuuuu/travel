function regist() {
	console.log("login.js====== regist()");
	
	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "/travel/join.do");
	
	var id = document.querySelector('input[name="id"]').value;
	var password = document.querySelector('input[name="password"]').value;
	var email = document.querySelector('input[name="email"]').value;
	var name = document.querySelector('input[name="name"]').value;
	var phone = document.querySelector('input[name="phone"]').value;
	
	form.appendChild(createHiddenInput("id", id));	
	form.appendChild(createHiddenInput("password", password));	
	form.appendChild(createHiddenInput("email", email));	
	form.appendChild(createHiddenInput("name", name));	
	form.appendChild(createHiddenInput("phone", phone));	
	
	document.body.appendChild(form);
	form.submit();
}

function createHiddenInput(name, value){
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", name);
	input.setAttribute("value", value);
	return input;
}