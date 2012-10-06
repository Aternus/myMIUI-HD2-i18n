
function detectPostingDataPhpWind(rule){
	var rules = rule.split(";");
	var resultMsgRule = rules[0];
	var subjectRule = rules[1];
	var contentRule = rules[2];
	var errorAlertRule = rules[3];
	var loginFormRule = rules[4];	
	var loginFormEle = getElementFromXPath(loginFormRule);	
	if (loginFormEle != null && isElementVisible(loginFormEle)){
		var errorAlert = getInnerHTMLFromXPath(document.body, errorAlertRule);
		window.forumDetector.shouldLoginFirst(errorAlert);
		return;
	}
	
	var showMsg = getInnerHTMLFromXPath(document.body, resultMsgRule);
	var subjectEle = getElementFromXPath(subjectRule);
	if (subjectEle == null){
		window.forumDetector.setPostingData(showMsg, null, null);
		return;
	}
	
	var subject = subjectEle.innerHTML;
	if (subject != "" && subject.indexOf('<a') != -1){
		// 过滤链接
		var part1 = subject.substring(0, subject.indexOf('<a'));
		var part2 = subject.substring(subject.indexOf('/a>') + '/a>'.length, subject.length);
		subject = part1 + part2;	
	}
	var content = getInnerHTMLFromXPath(document.body, contentRule);
	window.forumDetector.setPostingData(showMsg, subject, content);
}


function doLoggingPhpWind73(userName, password, rule){	
	var rules = rule.split(";");
	var formRule = rules[0];
	var accountRule = rules[1];
	var passwordRule = rules[2];
	var formEle = getElementFromXPath(formRule);
	var accountEle = getElementFromXPath(accountRule);
	var passwordEle = getElementFromXPath(passwordRule);

	var cookietime = getElementFromXPath("//input[@id=\"cookietime*\"]");
	if (cookietime != null)
		cookietime.checked = true;
	
	accountEle.value = userName;
	passwordEle.value = password;

	if (formEle.loginsubmit != null){		
		hackForm(formEle, "loginsubmit", "true");
	}
	
	// submit is not a method any more
	formEle.submit.click();

}

function doPostingPhpWind75Sp3(subject, content, rule){
	var rules = rule.split(";");
	var formRule = rules[0];
	var subjectRule = rules[1];
	var contentRule = rules[2];
	var formEle = getElementFromXPath(formRule);
	var subjectEle = getElementFromXPath(subjectRule);
	var contentEle = getElementFromXPath(contentRule);
	
	subjectEle.value = subject;
	contentEle.innerHtml = content;
	contentEle.removeAttribute("haserror");

	formEle.Submit.click();
}

function doFastPostingPhpWind75Sp3(content, rule){
	var rules = rule.split(";");
	var formRule = rules[0];
	var textRule = rules[1];
	var formEle = getElementFromXPath(formRule);
	var textEle = getElementFromXPath(textRule);
	
	textEle.value = content;
	formEle.Submit.click();
}
