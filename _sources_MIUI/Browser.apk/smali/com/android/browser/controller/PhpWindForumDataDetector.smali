.class public Lcom/android/browser/controller/PhpWindForumDataDetector;
.super Lcom/android/browser/controller/ForumDataDetector;
.source "PhpWindForumDataDetector.java"


# direct methods
.method public constructor <init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/controller/ForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 23
    return-void
.end method

.method private detectBodyId()V
    .locals 6

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v1, "js/forum_common.js"

    const-string v2, "detectBodyAttr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "bodyid"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromAsset(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private getPageTypeFromUrl()Lcom/android/browser/controller/ForumController$ForumPageType;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/browser/controller/PhpWindForumDataDetector;->getUrlFileName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, fileName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    .line 131
    :goto_0
    return-object v1

    .line 114
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "index.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "home.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "index-htm.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :cond_1
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Category:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "thread.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "thread-htm-fid-.*.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    :cond_3
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleList:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 121
    :cond_4
    const-string v1, "read.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "read-htm-tid-.*.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    :cond_5
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleDetail:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 124
    :cond_6
    const-string v1, "login.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 125
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Logging:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 127
    :cond_7
    const-string v1, "post.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "gsdgersgf.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "post-htm-fid-.*.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 128
    :cond_8
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Posting:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 131
    :cond_9
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0
.end method

.method private processPaging(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "paging"

    .prologue
    const/4 v7, -0x1

    const-string v8, "<a "

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "<a "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, links:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 80
    aget-object v4, v2, v1

    const-string v5, "</a>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, en:I
    if-eq v0, v7, :cond_1

    .line 82
    add-int/lit8 v0, v0, 0x4

    .line 91
    :goto_1
    const-string v4, "<a "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    aget-object v4, v2, v1

    const-string v5, "/>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 85
    if-eq v0, v7, :cond_0

    .line 86
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 93
    .end local v0           #en:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "paging"
    .parameter "newThread"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0, p1}, Lcom/android/browser/controller/PhpWindForumDataDetector;->processPaging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/controller/ForumController;->addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public detectPageType()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/browser/controller/PhpWindForumDataDetector;->detectBodyId()V

    .line 28
    return-void
.end method

.method public detectPostingData(Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;)V
    .locals 7
    .parameter "rule"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    .line 99
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "js/phpwind.js"

    aput-object v2, v1, v3

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v4

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v5

    .line 101
    .local v1, scriptFiles:[Ljava/lang/String;
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->resultMsgXPath:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->subjectXPath:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->contentXPath:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->errorAlertXPath:Ljava/lang/String;

    aput-object v2, v0, v6

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginFormXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 103
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "detectPostingDataPhpWind"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onParamDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 37
    const-string v0, "bodyid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/android/browser/controller/PhpWindForumDataDetector;->getPageTypeFromUrl()Lcom/android/browser/controller/ForumController$ForumPageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/controller/PhpWindForumDataDetector;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    invoke-virtual {p0, v0}, Lcom/android/browser/controller/PhpWindForumDataDetector;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V

    goto :goto_0
.end method

.method public setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "paging"
    .parameter "replyBtn"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0, p1}, Lcom/android/browser/controller/PhpWindForumDataDetector;->processPaging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/controller/ForumController;->setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "userMenu"
    .parameter "navBar"
    .parameter "searchBtn"

    .prologue
    const/4 v6, 0x2

    const-string v7, "<a "

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v3, newMenu:Ljava/lang/StringBuilder;
    const-string v4, "<a "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, links:[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v6, :cond_0

    .line 53
    aget-object v4, v2, v6

    const-string v5, "/a>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, ind:I
    aget-object v4, v2, v6

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, link:Ljava/lang/String;
    const-string v4, "<a "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local v0           #ind:I
    .end local v1           #link:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/browser/controller/ForumController;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
