.class public Lcom/android/browser/controller/Discuz6xForumDataDetector;
.super Lcom/android/browser/controller/ForumDataDetector;
.source "Discuz6xForumDataDetector.java"


# direct methods
.method public constructor <init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/controller/ForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 21
    return-void
.end method

.method private getPageTypeFromUrl()Lcom/android/browser/controller/ForumController$ForumPageType;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/browser/controller/Discuz6xForumDataDetector;->getUrlFileName()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, fileName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 32
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    .line 51
    :goto_0
    return-object v1

    .line 35
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "index.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    :cond_1
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Category:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "forumdisplay.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "forum(-\\d+)+.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    :cond_3
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleList:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 41
    :cond_4
    const-string v1, "viewthread.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "thread(-\\d+)+.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 42
    :cond_5
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleDetail:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 44
    :cond_6
    const-string v1, "logging.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Logging:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 47
    :cond_7
    const-string v1, "post.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 48
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Posting:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 51
    :cond_8
    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0
.end method


# virtual methods
.method public detectPageType()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/browser/controller/Discuz6xForumDataDetector;->getPageTypeFromUrl()Lcom/android/browser/controller/ForumController$ForumPageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/controller/Discuz6xForumDataDetector;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V

    .line 26
    return-void
.end method
