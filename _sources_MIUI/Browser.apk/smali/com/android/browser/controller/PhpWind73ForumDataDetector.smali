.class public Lcom/android/browser/controller/PhpWind73ForumDataDetector;
.super Lcom/android/browser/controller/PhpWindForumDataDetector;
.source "PhpWind73ForumDataDetector.java"


# direct methods
.method public constructor <init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/controller/PhpWindForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 19
    return-void
.end method


# virtual methods
.method public doLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 28
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

    .line 29
    .local v0, scriptFiles:[Ljava/lang/String;
    const-string v1, "doLoggingPhpWind73"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/browser/controller/PhpWind73ForumDataDetector;->doLoggingImp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "userMenu"
    .parameter "navBar"
    .parameter "searchBtn"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/controller/ForumController;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
