.class public Lcom/android/browser/controller/PhpWind75Sp3ForumDataDetector;
.super Lcom/android/browser/controller/PhpWindForumDataDetector;
.source "PhpWind75Sp3ForumDataDetector.java"


# direct methods
.method public constructor <init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/controller/PhpWindForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 18
    return-void
.end method


# virtual methods
.method public doFastPosting(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 51
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js/phpwind.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "js/forum_common.js"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "js/xpath.js"

    aput-object v2, v0, v1

    .line 52
    .local v0, scriptFiles:[Ljava/lang/String;
    const-string v1, "doFastPostingPhpWind75Sp3"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/browser/controller/PhpWind75Sp3ForumDataDetector;->doFastPostingImp(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public doLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 39
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js/phpwind.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "js/forum_common.js"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "js/xpath.js"

    aput-object v2, v0, v1

    .line 40
    .local v0, scriptFiles:[Ljava/lang/String;
    const-string v1, "doLoggingPhpWind73"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/browser/controller/PhpWind75Sp3ForumDataDetector;->doLoggingImp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public doPosting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "subject"
    .parameter "content"

    .prologue
    .line 45
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js/phpwind.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "js/forum_common.js"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "js/xpath.js"

    aput-object v2, v0, v1

    .line 46
    .local v0, scriptFiles:[Ljava/lang/String;
    const-string v1, "doPostingPhpWind75Sp3"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/browser/controller/PhpWind75Sp3ForumDataDetector;->doPostingImp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 47
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

    .line 22
    const-string v4, "\u9000\u51fa"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v3, newMenu:Ljava/lang/StringBuilder;
    const-string v4, "<a "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, links:[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v6, :cond_0

    .line 26
    aget-object v4, v2, v6

    const-string v5, "/a>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, ind:I
    aget-object v4, v2, v6

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, link:Ljava/lang/String;
    const-string v4, "<a "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .end local v0           #ind:I
    .end local v1           #link:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/browser/controller/ForumController;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .end local v2           #links:[Ljava/lang/String;
    .end local v3           #newMenu:Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v4, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/browser/controller/ForumController;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
