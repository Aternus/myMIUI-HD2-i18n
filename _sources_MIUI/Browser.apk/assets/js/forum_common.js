
function detectBodyAttr(attrName, name){
	var attr = document.body.getAttribute(attrName);
	window.forumDetector.onParamDetected(name, attr);
}

function isElementVisible(ele) {
	var e = ele;
	while(e!=null && e != document.body) {
		if(e.style.visibility=='hidden' || e.style.display=='none')
			return false;
			
		e = e.parentNode;
	}
	return true;
}

function hackForm(formEle, inputName, inputValue){
	var loginsubmitEle = document.createElement("input");
	loginsubmitEle.setAttribute("name", inputName);
	loginsubmitEle.setAttribute("value", inputValue);
	loginsubmitEle.setAttribute("type", "hidden");
	formEle.appendChild(loginsubmitEle);
}

// detect category data
function detectForumList(rule1, rule2){
	var rules1 = rule1.split(";");
	var categoryRule = rules1[0];
	var categoryTitleRule = rules1[1];
	var forumRule = rules1[2];
	var forumTitleRule = rules1[3];
    var forumLinkRule = rules1[4];
	var forumIconRule = rules1[5];
	var forumTodayNumRule = rules1[6];

	var rules2, forumRule2, forumTitleRule2, forumLinkRule2, forumIconRule2, forumTodayNumRule2;

	if (rule2 != ""){
		rules2 = rule2.split(";");
		forumRule2 = rules2[0];
		forumTitleRule2 = rules2[1];
		forumLinkRule2 = rules2[2];
		forumIconRule2 = rules2[3];
		forumTodayNumRule2 = rules2[4];
	}

	var categoryEles = getElementsFromXPath(document.body, categoryRule);	
	for (var i = 0; i < categoryEles.length; i++){
		if (getElementByXPathFromBaseElement(categoryEles[i], categoryTitleRule) == null)
			continue;
		
		var categoryTitle = getInnerHTMLFromXPath(categoryEles[i], categoryTitleRule);
		var forums = getElementsFromXPath(categoryEles[i], forumRule);
		if (forums.length > 0){
			window.forumDetector.onCategoryDetected(categoryTitle);				
		}

		var forumsString = "";
		for (var j = 0; j < forums.length; j++){
			var forumTitle = getInnerHTMLFromXPath(forums[j], forumTitleRule);
			var forumLink = getLinkHrefFromXPath(forums[j], forumLinkRule);
			var forumIcon = getImgSrcFromXPath(forums[j], forumIconRule);
			var forumTodayNum = getInnerHTMLFromXPath(forums[j], forumTodayNumRule);
			if (forumTitle != ""){
				var oneForumString = forumTitle + "=Field= " + forumLink + "=Field= " + forumIcon + "=Field= " + forumTodayNum;
				forumsString += "=Forum= " + oneForumString;
			}
		}
		if (forumsString == "" && rule2 != ""){
			// lets try another rule for the category
			forums = getElementsFromXPath(categoryEles[i], forumRule2);
			for (var j = 0; j < forums.length; j++){
				var forumTitle = getInnerHTMLFromXPath(forums[j], forumTitleRule2);
				var forumLink = getLinkHrefFromXPath(forums[j], forumLinkRule2);
				var forumIcon = getImgSrcFromXPath(forums[j], forumIconRule2);
				var forumTodayNum = getInnerHTMLFromXPath(forums[j], forumTodayNumRule2);
				if (forumTitle != ""){
					var oneForumString = forumTitle + "=Field= " + forumLink + "=Field= " + forumIcon + "=Field= " + forumTodayNum;
					forumsString += "=Forum= " + oneForumString;
				}
			}			
		}
		window.forumDetector.onForumsDetected(forumsString);
	}

	
	window.forumDetector.onAllDataReady();
}

// detect forum article list data
function detectArticleList(rule){
	var rules = rule.split(";");
	var pagingRule = rules[0];
	var newThreadRule = rules[1];
	var stickRule = rules[2];
	var normalRule = rules[3];
	var titleRule = rules[4];
	var linkRule = rules[5];
	var iconRule = rules[6];
	var authorRule = rules[7];
	var numsRule = rules[8];
	var lastpostRule = rules[9];
	var subforumContainerRule = rules[10];
	var subforumRule = rules[11];
	var subforumTitleRule = rules[12];
	var subforumLinkRule = rules[13];
	var subforumTodayNumRule = rules[14];

	window.forumDetector.addArticleListCommonData(getInnerHTMLFromXPath(document.body, pagingRule), getLinkHrefFromXPath(document.body, newThreadRule));

	var subforumContrainer = getElementFromXPath(subforumContainerRule);
	if (subforumContrainer != null){
		var subforumEles = getElementsFromXPath(subforumContrainer, subforumRule);
		for (var i = 0; i < subforumEles.length; i++){
			var subforumTitle = getInnerHTMLFromXPath(subforumEles[i], subforumTitleRule);	
			if (subforumTitle == "")
				continue;
			var subforumLink = 	getLinkHrefFromXPath(subforumEles[i], subforumLinkRule);
			var subforumTodayNum = getInnerHTMLFromXPath(subforumEles[i], subforumTodayNumRule);
			window.forumDetector.addSubforum(subforumTitle, subforumLink, subforumTodayNum);
		}
	}

	var stickThreadEles = getElementsFromXPath(document.body, stickRule);	
	for (var i = 0; i < stickThreadEles.length; i++){
		var titleEle = getElementByXPathFromBaseElement(stickThreadEles[i], titleRule);
		if (titleEle == null)
			continue;
		var title = titleEle.innerHTML;

		var link = getLinkHrefFromXPath(stickThreadEles[i], linkRule);	
		var icon = getImgSrcFromXPath(stickThreadEles[i], iconRule);
		var author = getInnerHTMLFromXPath(stickThreadEles[i], authorRule);
		var nums = getInnerHTMLFromXPath(stickThreadEles[i], numsRule);
		var lastpost = getInnerHTMLFromXPath(stickThreadEles[i], lastpostRule);
		
		window.forumDetector.addStickThread(title, link, icon, author, nums, lastpost);
	}

	var normalThreadEles = getElementsFromXPath(document.body, normalRule);	
	for (var i = 0; i < normalThreadEles.length; i++){
		var titleEle = getElementByXPathFromBaseElement(normalThreadEles[i], titleRule);
		if (titleEle == null)
			continue;
		var title = titleEle.innerHTML;

		var link = getLinkHrefFromXPath(normalThreadEles[i], linkRule);	
		var icon = getImgSrcFromXPath(normalThreadEles[i], iconRule);	
		var author = getInnerHTMLFromXPath(normalThreadEles[i], authorRule);		
		var nums = getInnerHTMLFromXPath(normalThreadEles[i], numsRule);		
		var lastpost = getInnerHTMLFromXPath(normalThreadEles[i], lastpostRule);
		
		window.forumDetector.addNormalThread(title, link, icon, author, nums, lastpost);
	}
	window.forumDetector.onAllDataReady();
}

// detect article detail page data
function detectArticleDetail(rule){
	var rules = rule.split(";");	
	var pagingRule = rules[0];
	var replyBtnRule = rules[1];
	var postRule = rules[2];
	var contentRule = rules[3];
	var authorIDRule = rules[4];
	var authorIconRule = rules[5];
	var authorTitleRule = rules[6];
	var floorNumRule = rules[7];
	var postTimeRule = rules[8];
	var fastReplyRule = rules[9];
	var fastPostFormRule = rules[10];
	var fastPostTextRule = rules[11];
	
	var paging = getInnerHTMLFromXPath(document.body, pagingRule);	
	var replyBtn = getLinkHrefFromXPath(document.body, replyBtnRule);
	window.forumDetector.setArticleDetailCommonData(paging, replyBtn);

	var postEles = getElementsFromXPath(document.body, postRule);
	for (var i = 0; i < postEles.length; i++){		
		var content = getInnerHTMLFromXPath(postEles[i], contentRule);	
		var authorID = getInnerHTMLFromXPath(postEles[i], authorIDRule);
		var authorIcon = "";
		var authorIconOnError = "";
		var imgEle = getElementByXPathFromBaseElement(postEles[i], authorIconRule);
		if (imgEle != null){
			authorIcon = imgEle.src;
			authorIconOnError = imgEle.getAttribute("onerror");
		}
	
		var authorTitle = getInnerHTMLFromXPath(postEles[i], authorTitleRule);		
		var floorNum = getInnerHTMLFromXPath(postEles[i], floorNumRule);	
		var postTime = getInnerHTMLFromXPath(postEles[i], postTimeRule);
		var fastReply = getLinkHrefFromXPath(postEles[i], fastReplyRule);
		window.forumDetector.addPost(content, authorID, authorIcon, authorIconOnError, authorTitle, floorNum, postTime, fastReply);		
	}	
	
	var fastPostEle = getElementFromXPath(fastPostFormRule);
	var fastPostInput = getElementFromXPath(fastPostTextRule);
	if (fastPostEle != null && fastPostInput != null){
		
		window.forumDetector.showFastPost();	
	}

	window.forumDetector.onAllDataReady();
	
}

function detectCommonData(rule){
	var rules = rule.split(";");
	var userMenuRule = rules[0];
	var navBarRule = rules[1];
	var fastLoginRule = rules[2];
	var searchBtnRule = rules[3];	
	if (fastLoginRule != ""){
		var fastLoginEle = getElementFromXPath(fastLoginRule);
		if (fastLoginEle != null){
			window.forumDetector.onFastLoginDetected();
		}
	}
	
	var userMenu = getInnerHTMLFromXPath(document.body, userMenuRule);
	var navBar = getInnerHTMLFromXPath(document.body, navBarRule);
	var searchBtn = "";
	if (searchBtnRule != ""){
		searchBtn = getLinkHrefFromXPath(document.body, searchBtnRule);	
	}
	window.forumDetector.setCommonData(userMenu, navBar, searchBtn);	
}

function doLogging(userName, password, rule){	
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

	formEle.submit();
}

function doFastPosting(content, rule){
	var rules = rule.split(";");
	var formRule = rules[0];
	var textRule = rules[1];
	var formEle = getElementFromXPath(formRule);
	var textEle = getElementFromXPath(textRule);
	
	textEle.value = content;
	formEle.submit();
}

function detectLoginShowMessage(rule){
	var showMsg = getInnerHTMLFromXPath(document.body, rule);
	if (showMsg != "" && showMsg.indexOf('<script>') != -1){
		// 过滤内嵌的javascript, 以免当页跳转
		var part1 = showMsg.substring(0, showMsg.indexOf('<script>'));
		var part2 = showMsg.substring(showMsg.indexOf('</script>') + '</script>'.length, showMsg.length);
		showMsg = part1 + part2;
	}
	window.forumDetector.setShowMessage(showMsg);
}

function detectSearchData(rule){
	var rules = rule.split(";");
	var searchFormRule = rules[0];
	var loginFormRule = rules[1];
	var resultContainerRule = rules[2];
	var resultArticleRule = rules[3];
	var titleRule = rules[4];
	var linkRule = rules[5];
	var authorRule = rules[6];
	var numsRule = rules[7];
	var lastPostRule = rules[8];
	var errorAlertRule = rules[9];
	var resultStringRule = rules[10];
	var resultPagingRule = rules[11];
	var showMessageRule = rules[12];	

	var loginFormEle = getElementFromXPath(loginFormRule);
	if (loginFormEle != null && isElementVisible(loginFormEle)){
		var errorAlert = getInnerHTMLFromXPath(document.body, errorAlertRule);
		window.forumDetector.shouldLoginFirst(errorAlert);
		return;
	}

	var showMessage = getInnerHTMLFromXPath(document.body, showMessageRule);
	if (showMessage != ""){
		window.forumDetector.setShowMessage(showMessage);
		return;	
	}
	
	var searchForm = getElementFromXPath(searchFormRule);
	if (searchForm != null){
		window.forumDetector.showSearch();	
	}	
	window.forumDetector.showSearchResultString(
		getInnerHTMLFromXPath(document.body, resultStringRule), 
		getInnerHTMLFromXPath(document.body, resultPagingRule)
	);
	
	var resultsContainer = getElementFromXPath(resultContainerRule);
	if (resultsContainer != null){
		var results = getElementsFromXPath(resultsContainer, resultArticleRule);
		for (var i = 0; i < results.length; i++){
			if (results[i] != null){
				var titleEle = getElementByXPathFromBaseElement(results[i], titleRule);
				if (titleEle == null)
					continue;
				var title = titleEle.innerHTML;

				var link = getLinkHrefFromXPath(results[i], linkRule);
				var author = getInnerHTMLFromXPath(results[i], authorRule);
				var nums = getInnerHTMLFromXPath(results[i], numsRule);
				var lastpost = getInnerHTMLFromXPath(results[i], lastPostRule);
		
				window.forumDetector.addOneSearchResult(title, link, author, nums, lastpost);
			}		
		}
	}	
}

function doSearch(keyword, rule){
	var rules = rule.split(";");
	var formRule = rules[0];
	var keywordRule = rules[1];

	var formEle = getElementFromXPath(formRule);
	var keywordEle = getElementFromXPath(keywordRule);
	keywordEle.value = keyword;

	if (formEle.searchsubmit != null){		
		hackForm(formEle, "searchsubmit", "true");
	}
	formEle.submit();
}

function doPosting(subject, content, rule){
	var rules = rule.split(";");
	var formRule = rules[0];
	var subjectRule = rules[1];
	var contentRule = rules[2];
	var formEle = getElementFromXPath(formRule);
	var subjectEle = getElementFromXPath(subjectRule);
	var contentEle = getElementFromXPath(contentRule);
	
	subjectEle.value = subject;
	contentEle.value = content;

	formEle.submit();
}

function detectPostingData(rule){
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
	var subjectEle = getElementFromXPath(subjectRule);
	if (subjectEle == null){
		window.forumDetector.shouldLoginFirst("请先登录");
		return;
	}
	var showMsg = getInnerHTMLFromXPath(document.body, resultMsgRule);
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

