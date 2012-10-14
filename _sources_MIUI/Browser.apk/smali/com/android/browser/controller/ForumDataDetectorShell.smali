.class public final Lcom/android/browser/controller/ForumDataDetectorShell;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/ForumDataDetectorShell$1;,
        Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final sFieldDivider:Ljava/lang/String; = "=Field="

.field private static final sForumDivider:Ljava/lang/String; = "=Forum="


# instance fields
.field private mController:Lcom/android/browser/controller/ForumController;

.field private mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

.field private mJSInterface:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

.field protected mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

.field public post:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.android.browser.controller.ForumDataDetectorShell"

    sput-object v0, Lcom/android/browser/controller/ForumDataDetectorShell;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 3
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 43
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;

    .line 44
    new-instance v0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell;Lcom/android/browser/controller/ForumDataDetectorShell$1;)V

    iput-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mJSInterface:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    .line 45
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mJSInterface:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    const-string v2, "forumDetector"

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/controller/ForumDataDetectorShell;)Lcom/android/browser/controller/ForumController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;

    return-object v0
.end method

.method private checkState()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/browser/controller/ForumDataDetectorShell;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Inner detector is null, the forum identity is not valid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paging"
    .parameter "newThread"

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public detectArticleDetailData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->detectArticleDetailData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;)V

    goto :goto_0
.end method

.method public detectArticleListData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->detectArticleListData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;)V

    goto :goto_0
.end method

.method public detectCommonData(Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->detectCommonData(Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;)V

    goto :goto_0
.end method

.method public detectForumListData(Lcom/android/browser/model/ForumRuleProvider$ForumListRule;Lcom/android/browser/model/ForumRuleProvider$ForumListRule;)V
    .locals 1
    .parameter "rule1"
    .parameter "rule2"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->detectForumListData(Lcom/android/browser/model/ForumRuleProvider$ForumListRule;Lcom/android/browser/model/ForumRuleProvider$ForumListRule;)V

    goto :goto_0
.end method

.method public detectPageType()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->post:Z

    .line 79
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumDataDetector;->detectPageType()V

    goto :goto_0
.end method

.method public detectPostingData(Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->detectPostingData(Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;)V

    goto :goto_0
.end method

.method public detectSearchData(Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->detectSearchData(Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;)V

    goto :goto_0
.end method

.method public detectShowMsg(Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->detectShowMsg(Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;)V

    goto :goto_0
.end method

.method public doFastPosting(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->post:Z

    .line 114
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->doFastPosting(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->doLogging(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doLoginBeforePosting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "password"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumDataDetector;->isFastLoginSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->doQuickLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->doLoginBeforePosting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doLoginBeforeSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "password"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->doLoginBeforeSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doPosting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "subject"
    .parameter "content"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->post:Z

    .line 157
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->doPosting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doQuickLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "password"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->doQuickLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "keyword"

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetector;->doSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPageType()Lcom/android/browser/controller/ForumController$ForumPageType;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumDataDetector;->getPageType()Lcom/android/browser/controller/ForumController$ForumPageType;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFastLoginDetected()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumDataDetector;->onFastLoginDetected()V

    goto :goto_0
.end method

.method public onIdentityDetected(I)Z
    .locals 2
    .parameter "identity"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;

    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-static {p1, v0, v1}, Lcom/android/browser/controller/ForumDataDetector;->createInstance(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)Lcom/android/browser/controller/ForumDataDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    .line 59
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumController;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V

    .line 68
    return-void
.end method

.method public onParamDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->onParamDetected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetWebView(Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eq v0, p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mJSInterface:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    const-string v1, "forumDetector"

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 53
    :cond_0
    return-void
.end method

.method public setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paging"
    .parameter "replyBtn"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetector;->setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "userMenu"
    .parameter "navBar"
    .parameter "searchBtn"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/browser/controller/ForumDataDetectorShell;->checkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell;->mForumDataDetector:Lcom/android/browser/controller/ForumDataDetector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/controller/ForumDataDetector;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
