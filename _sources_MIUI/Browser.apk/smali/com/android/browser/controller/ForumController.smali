.class public Lcom/android/browser/controller/ForumController;
.super Ljava/lang/Object;
.source "ForumController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/ForumController$6;,
        Lcom/android/browser/controller/ForumController$CommonData;,
        Lcom/android/browser/controller/ForumController$PostData;,
        Lcom/android/browser/controller/ForumController$ArticleDetailData;,
        Lcom/android/browser/controller/ForumController$ArticleData;,
        Lcom/android/browser/controller/ForumController$ArticleListData;,
        Lcom/android/browser/controller/ForumController$ForumData;,
        Lcom/android/browser/controller/ForumController$ForumCategoryData;,
        Lcom/android/browser/controller/ForumController$ForumJSInterface;,
        Lcom/android/browser/controller/ForumController$ForumPageType;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

.field private mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

.field private mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

.field private mCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/controller/ForumController$ForumCategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

.field private mEnterDirectly:Z

.field private mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

.field private mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

.field private mPreUrlsProvider:Lcom/android/browser/model/ForumPredictionUrlsProvider;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "com.android.browser.controller.ForumController"

    sput-object v0, Lcom/android/browser/controller/ForumController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 3
    .parameter "webView"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    iput-object v0, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    .line 55
    iput-object p1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    .line 56
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v1, Lcom/android/browser/controller/ForumController$ForumJSInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/ForumController$ForumJSInterface;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    const-string v2, "forum"

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/android/browser/controller/ForumTypeDetector;

    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/ForumTypeDetector;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    .line 59
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/ForumPredictionUrlsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ForumController;->mPreUrlsProvider:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/controller/ForumTypeDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/browser/controller/ForumController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/controller/ForumController$ForumPageType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/controller/ForumController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/controller/ForumController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumController;->detectForum(Lcom/android/browser/ui/MiRenWebViewBase;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/browser/controller/ForumController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/browser/controller/ForumController;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method private detectForum(Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ArticleListData;->stickArticleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ArticleListData;->stickArticleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ArticleListData;->normalArticleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ArticleListData;->normalArticleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ArticleDetailData;->posts:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ArticleDetailData;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumTypeDetector;->detectForum()V

    .line 122
    return-void
.end method


# virtual methods
.method public addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "paging"
    .parameter "newThread"

    .prologue
    const-string v6, "\\\\\'"

    const-string v5, "\'"

    const-string v4, "\n"

    const-string v3, ""

    .line 467
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v2, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleList:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v1, v2, :cond_0

    .line 484
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v2, ""

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v2, "\\\\\'"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v2, ""

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v2, "\\\\\'"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 472
    iget-boolean v1, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v1, :cond_1

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v0, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v1, "setArticleListCommonData(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    .end local v0           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    if-nez v1, :cond_2

    .line 479
    new-instance v1, Lcom/android/browser/controller/ForumController$ArticleListData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/ForumController$ArticleListData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    iput-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iput-object p1, v1, Lcom/android/browser/controller/ForumController$ArticleListData;->paging:Ljava/lang/String;

    .line 482
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iput-object p2, v1, Lcom/android/browser/controller/ForumController$ArticleListData;->newThread:Ljava/lang/String;

    goto :goto_0
.end method

.method public addNewNormalThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "link"
    .parameter "icon"
    .parameter "author"
    .parameter "nums"
    .parameter "lastpost"

    .prologue
    const/4 v7, 0x0

    const-string v6, "\', \'"

    const-string v5, "\n"

    const-string v4, ""

    .line 550
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v3, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleList:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v2, v3, :cond_0

    .line 577
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v2, :cond_1

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v1, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v2, "addNormalThread(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {p4, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {p5, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {p6, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    .end local v1           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    if-nez v2, :cond_2

    .line 563
    new-instance v2, Lcom/android/browser/controller/ForumController$ArticleListData;

    invoke-direct {v2, p0, v7}, Lcom/android/browser/controller/ForumController$ArticleListData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    iput-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    .line 565
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->normalArticleList:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 566
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->normalArticleList:Ljava/util/ArrayList;

    .line 567
    :cond_3
    new-instance v0, Lcom/android/browser/controller/ForumController$ArticleData;

    invoke-direct {v0, p0, v7}, Lcom/android/browser/controller/ForumController$ArticleData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    .line 568
    .local v0, data:Lcom/android/browser/controller/ForumController$ArticleData;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->title:Ljava/lang/String;

    .line 569
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->link:Ljava/lang/String;

    .line 570
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->icon:Ljava/lang/String;

    .line 571
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->author:Ljava/lang/String;

    .line 572
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->nums:Ljava/lang/String;

    .line 573
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->lastpost:Ljava/lang/String;

    .line 575
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->normalArticleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public addNewStickThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "link"
    .parameter "icon"
    .parameter "author"
    .parameter "nums"
    .parameter "lastpost"

    .prologue
    const/4 v4, 0x0

    const-string v7, "\', \'"

    const-string v6, "\n"

    const-string v5, ""

    .line 517
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v3, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleList:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v2, v3, :cond_0

    .line 544
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v2, :cond_1

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v1, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v2, "addStickThread(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v4, ""

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v4, ""

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v4, ""

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    .end local v1           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    if-nez v2, :cond_2

    .line 530
    new-instance v2, Lcom/android/browser/controller/ForumController$ArticleListData;

    invoke-direct {v2, p0, v4}, Lcom/android/browser/controller/ForumController$ArticleListData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    iput-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    .line 532
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->stickArticleList:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 533
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->stickArticleList:Ljava/util/ArrayList;

    .line 534
    :cond_3
    new-instance v0, Lcom/android/browser/controller/ForumController$ArticleData;

    invoke-direct {v0, p0, v4}, Lcom/android/browser/controller/ForumController$ArticleData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    .line 535
    .local v0, data:Lcom/android/browser/controller/ForumController$ArticleData;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->title:Ljava/lang/String;

    .line 536
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->link:Ljava/lang/String;

    .line 537
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->icon:Ljava/lang/String;

    .line 538
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->author:Ljava/lang/String;

    .line 539
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->nums:Ljava/lang/String;

    .line 540
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ArticleData;->lastpost:Ljava/lang/String;

    .line 542
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->stickArticleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public addOneSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "link"
    .parameter "author"
    .parameter "nums"
    .parameter "lastPost"

    .prologue
    const-string v5, "\n"

    const-string v4, ""

    const-string v3, "\', \'"

    .line 757
    iget-boolean v1, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v1, :cond_0

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .local v0, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v1, "addOneSearchResult(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    const-string v2, ""

    invoke-virtual {p3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    const-string v2, ""

    invoke-virtual {p4, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    const-string v2, ""

    invoke-virtual {p5, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 772
    .end local v0           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public addPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "content"
    .parameter "authorID"
    .parameter "authorIcon"
    .parameter "authorIconOnError"
    .parameter "authorTitle"
    .parameter "floor"
    .parameter "postTime"
    .parameter "fastReply"

    .prologue
    .line 609
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 611
    const-string v2, "\'"

    const-string v3, "\""

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 612
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 613
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 614
    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 615
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 616
    iget-boolean v2, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v2, :cond_0

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v1, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v2, "addPost(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 641
    .end local v1           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    if-nez v2, :cond_1

    .line 625
    new-instance v2, Lcom/android/browser/controller/ForumController$ArticleDetailData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/browser/controller/ForumController$ArticleDetailData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    iput-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleDetailData;->posts:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/browser/controller/ForumController$ArticleDetailData;->posts:Ljava/util/ArrayList;

    .line 630
    :cond_2
    new-instance v0, Lcom/android/browser/controller/ForumController$PostData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/browser/controller/ForumController$PostData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    .line 631
    .local v0, data:Lcom/android/browser/controller/ForumController$PostData;
    iput-object p1, v0, Lcom/android/browser/controller/ForumController$PostData;->content:Ljava/lang/String;

    .line 632
    iput-object p2, v0, Lcom/android/browser/controller/ForumController$PostData;->authorID:Ljava/lang/String;

    .line 633
    iput-object p3, v0, Lcom/android/browser/controller/ForumController$PostData;->authorIcon:Ljava/lang/String;

    .line 634
    iput-object p4, v0, Lcom/android/browser/controller/ForumController$PostData;->authorIconOnError:Ljava/lang/String;

    .line 635
    iput-object p5, v0, Lcom/android/browser/controller/ForumController$PostData;->authorTitle:Ljava/lang/String;

    .line 636
    iput-object p6, v0, Lcom/android/browser/controller/ForumController$PostData;->floor:Ljava/lang/String;

    .line 637
    iput-object p7, v0, Lcom/android/browser/controller/ForumController$PostData;->postTime:Ljava/lang/String;

    .line 638
    iput-object p8, v0, Lcom/android/browser/controller/ForumController$PostData;->fastReply:Ljava/lang/String;

    .line 639
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleDetailData;->posts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSubforum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "link"
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    const-string v7, "\', \'"

    const-string v6, "\n"

    const-string v5, ""

    .line 490
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v3, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleList:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v2, v3, :cond_0

    .line 511
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v2, :cond_1

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v1, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v2, "addSubforum(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v4, ""

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v1           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    if-nez v2, :cond_2

    .line 500
    new-instance v2, Lcom/android/browser/controller/ForumController$ArticleListData;

    invoke-direct {v2, p0, v4}, Lcom/android/browser/controller/ForumController$ArticleListData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    iput-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    .line 502
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->subforumList:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 503
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->subforumList:Ljava/util/ArrayList;

    .line 504
    :cond_3
    new-instance v0, Lcom/android/browser/controller/ForumController$ForumData;

    invoke-direct {v0, p0, v4}, Lcom/android/browser/controller/ForumController$ForumData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    .line 505
    .local v0, data:Lcom/android/browser/controller/ForumController$ForumData;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ForumData;->title:Ljava/lang/String;

    .line 506
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ForumData;->link:Ljava/lang/String;

    .line 507
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/browser/controller/ForumController$ForumData;->todayNum:Ljava/lang/String;

    .line 509
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ArticleListData;->subforumList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public beginTransform()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-virtual {v2}, Lcom/android/browser/controller/ForumTypeDetector;->getForumRule()Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    move-result-object v1

    .line 167
    .local v1, rule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v3, "clearAllData();"

    invoke-static {v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-virtual {v2}, Lcom/android/browser/controller/ForumTypeDetector;->getForumDataDetectorShell()Lcom/android/browser/controller/ForumDataDetectorShell;

    move-result-object v0

    .line 176
    .local v0, forumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;
    if-eqz v0, :cond_0

    .line 179
    iget-object v2, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->commonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

    invoke-virtual {v0, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectCommonData(Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;)V

    .line 182
    sget-object v2, Lcom/android/browser/controller/ForumController$6;->$SwitchMap$com$android$browser$controller$ForumController$ForumPageType:[I

    iget-object v3, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    invoke-virtual {v3}, Lcom/android/browser/controller/ForumController$ForumPageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object v2, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->forumListRule:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;

    iget-object v3, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->forumListRuleStyle2:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;

    invoke-virtual {v0, v2, v3}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectForumListData(Lcom/android/browser/model/ForumRuleProvider$ForumListRule;Lcom/android/browser/model/ForumRuleProvider$ForumListRule;)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v2, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->articleListRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;

    invoke-virtual {v0, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectArticleListData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v2, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->articleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

    invoke-virtual {v0, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectArticleDetailData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;)V

    goto :goto_0

    .line 193
    :pswitch_3
    if-eqz v0, :cond_0

    .line 194
    iget-object v2, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->loggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    invoke-virtual {v0, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectShowMsg(Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;)V

    goto :goto_0

    .line 197
    :pswitch_4
    if-eqz v0, :cond_0

    .line 198
    iget-object v2, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->postingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    invoke-virtual {v0, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectPostingData(Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;)V

    goto :goto_0

    .line 201
    :pswitch_5
    if-eqz v0, :cond_0

    .line 202
    iget-object v2, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->searchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    invoke-virtual {v0, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectSearchData(Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public checkForumAvailable(Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    .line 98
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumTypeDetector;->resetWebView(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 100
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ForumController;->mTitle:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumController;->detectForum(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 102
    return-void
.end method

.method public enterForumModeDirectly(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-static {v0}, Lcom/android/browser/util/MiRenWebViewUtils;->createBackgroundWebView(Lcom/android/browser/ui/MiRenWebViewCore;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 338
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v1, Lcom/android/browser/controller/ForumController$3;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumController$3;-><init>(Lcom/android/browser/controller/ForumController;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 373
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v1, Lcom/android/browser/controller/ForumController$4;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumController$4;-><init>(Lcom/android/browser/controller/ForumController;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 390
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v1, Lcom/android/browser/controller/ForumController$ForumJSInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/ForumController$ForumJSInterface;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    const-string v2, "forum"

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/ForumTypeDetector;->resetWebView(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    .line 395
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 396
    iput-object p1, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public insertNewCategory(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v2, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Category:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v1, v2, :cond_0

    .line 425
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCategory(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    .line 421
    :cond_2
    new-instance v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/ForumController$ForumCategoryData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    .line 422
    .local v0, data:Lcom/android/browser/controller/ForumController$ForumCategoryData;
    iput-object p1, v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;->title:Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public insertNewForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "link"
    .parameter "icon"
    .parameter "todayNum"

    .prologue
    const-string v5, "\', \'"

    .line 432
    iget-object v3, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v4, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Category:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v3, v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-boolean v3, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v3, :cond_2

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v2, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v3, "addForum(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v3, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    .end local v2           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 447
    new-instance v1, Lcom/android/browser/controller/ForumController$ForumData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/browser/controller/ForumController$ForumData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    .line 448
    .local v1, data:Lcom/android/browser/controller/ForumController$ForumData;
    iput-object p1, v1, Lcom/android/browser/controller/ForumController$ForumData;->title:Ljava/lang/String;

    .line 449
    iput-object p2, v1, Lcom/android/browser/controller/ForumController$ForumData;->link:Ljava/lang/String;

    .line 450
    iput-object p3, v1, Lcom/android/browser/controller/ForumController$ForumData;->icon:Ljava/lang/String;

    .line 451
    iput-object p4, v1, Lcom/android/browser/controller/ForumController$ForumData;->todayNum:Ljava/lang/String;

    .line 453
    iget-object v3, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;

    .line 454
    .local v0, currentCategory:Lcom/android/browser/controller/ForumController$ForumCategoryData;
    iget-object v3, v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;->forums:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 455
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;->forums:Ljava/util/ArrayList;

    .line 457
    :cond_3
    iget-object v3, v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;->forums:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isForumModeDataAvailable()Z
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumTypeDetector;->getForumRule()Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForumSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mPreUrlsProvider:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    invoke-virtual {v0, p1}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->isForumUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAllDataReady()V
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->showForumPage()V

    .line 777
    :cond_0
    return-void
.end method

.method public onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    .line 127
    iget-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumController$1;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumController$1;-><init>(Lcom/android/browser/controller/ForumController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v0, v1, :cond_2

    .line 140
    iget-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Logging:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Posting:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v1, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Search:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->onForumModeAvailable(Z)V

    .line 159
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/controller/ForumController;->beginTransform()V

    goto :goto_0

    .line 148
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumController$2;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumController$2;-><init>(Lcom/android/browser/controller/ForumController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumTypeDetector;->setForumNotAvailable()V

    goto :goto_0
.end method

.method public onWebViewDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->destroy()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 87
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumTypeDetector;->setForumNotAvailable()V

    .line 91
    iput-object v1, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/android/browser/controller/ForumController;->mTitle:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "paging"
    .parameter "replyBtn"

    .prologue
    const-string v4, "\n"

    const-string v3, ""

    .line 585
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    sget-object v2, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleDetail:Lcom/android/browser/controller/ForumController$ForumPageType;

    if-eq v1, v2, :cond_0

    .line 602
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v2, ""

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v2, ""

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\\\\\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 590
    iget-boolean v1, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v1, :cond_1

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .local v0, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v1, "setArticleDetailCommonData(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    .end local v0           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    if-nez v1, :cond_2

    .line 597
    new-instance v1, Lcom/android/browser/controller/ForumController$ArticleDetailData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/ForumController$ArticleDetailData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    iput-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    .line 599
    :cond_2
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iput-object p1, v1, Lcom/android/browser/controller/ForumController$ArticleDetailData;->paging:Ljava/lang/String;

    .line 600
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iput-object p2, v1, Lcom/android/browser/controller/ForumController$ArticleDetailData;->replyBtn:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "userMenu"
    .parameter "navBar"
    .parameter "searchBtn"

    .prologue
    const-string v8, "\\\\\'"

    const-string v7, "\', \'"

    const-string v6, "\'"

    const-string v5, "\n"

    const-string v4, ""

    .line 697
    iget-boolean v1, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v1, :cond_1

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v0, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v1, "setCommonData(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v3, "\\\\\'"

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 716
    .end local v0           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/android/browser/controller/ForumController$5;

    invoke-direct {v2, p0}, Lcom/android/browser/controller/ForumController$5;-><init>(Lcom/android/browser/controller/ForumController;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 722
    return-void

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    if-nez v1, :cond_0

    .line 710
    new-instance v1, Lcom/android/browser/controller/ForumController$CommonData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/ForumController$CommonData;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V

    iput-object v1, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    .line 711
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v3, "\\\\\'"

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/controller/ForumController$CommonData;->userMenu:Ljava/lang/String;

    .line 712
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/controller/ForumController$CommonData;->navBar:Ljava/lang/String;

    .line 713
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    iput-object p3, v1, Lcom/android/browser/controller/ForumController$CommonData;->searchBtn:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLoginMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "newMsg"

    .prologue
    .line 654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v1, "showLogging(\'\')"

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoginMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 15

    .prologue
    const-string v14, ""

    const-string v13, "\');"

    const-string v12, "\', \'"

    .line 217
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setBaseUrl(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\');"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v5, jsCodeBuilder:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    if-eqz v9, :cond_0

    .line 223
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$CommonData;->userMenu:Ljava/lang/String;

    if-nez v9, :cond_2

    const-string v9, ""

    move-object v8, v14

    .line 224
    .local v8, userMenu:Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$CommonData;->navBar:Ljava/lang/String;

    if-nez v9, :cond_3

    const-string v9, ""

    move-object v6, v14

    .line 225
    .local v6, navBar:Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$CommonData;->searchBtn:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v9, ""

    move-object v7, v14

    .line 226
    .local v7, searchBtn:Ljava/lang/String;
    :goto_2
    const-string v9, "setCommonData(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 236
    .end local v6           #navBar:Ljava/lang/String;
    .end local v7           #searchBtn:Ljava/lang/String;
    .end local v8           #userMenu:Ljava/lang/String;
    :cond_0
    sget-object v9, Lcom/android/browser/controller/ForumController$6;->$SwitchMap$com$android$browser$controller$ForumController$ForumPageType:[I

    iget-object v10, p0, Lcom/android/browser/controller/ForumController;->mPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    invoke-virtual {v10}, Lcom/android/browser/controller/ForumController$ForumPageType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 330
    :cond_1
    :goto_3
    return-void

    .line 223
    :cond_2
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$CommonData;->userMenu:Ljava/lang/String;

    move-object v8, v9

    goto :goto_0

    .line 224
    .restart local v8       #userMenu:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$CommonData;->navBar:Ljava/lang/String;

    move-object v6, v9

    goto :goto_1

    .line 225
    .restart local v6       #navBar:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCommonData:Lcom/android/browser/controller/ForumController$CommonData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$CommonData;->searchBtn:Ljava/lang/String;

    move-object v7, v9

    goto :goto_2

    .line 238
    .end local v6           #navBar:Ljava/lang/String;
    .end local v8           #userMenu:Ljava/lang/String;
    :pswitch_0
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 241
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;

    .line 243
    .local v0, categoryData:Lcom/android/browser/controller/ForumController$ForumCategoryData;
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addCategory(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\');"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 245
    iget-object v9, v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;->forums:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    .line 246
    iget-object v9, v0, Lcom/android/browser/controller/ForumController$ForumCategoryData;->forums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/controller/ForumController$ForumData;

    .line 247
    .local v2, forumData:Lcom/android/browser/controller/ForumController$ForumData;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #jsCodeBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .restart local v5       #jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v9, "addForum(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/browser/controller/ForumController$ForumData;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/browser/controller/ForumController$ForumData;->link:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/browser/controller/ForumController$ForumData;->icon:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/browser/controller/ForumController$ForumData;->todayNum:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_4

    .line 262
    .end local v0           #categoryData:Lcom/android/browser/controller/ForumController$ForumCategoryData;
    .end local v2           #forumData:Lcom/android/browser/controller/ForumController$ForumData;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mPreUrlsProvider:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    iget-object v10, p0, Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->addForumIndexPage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 265
    :pswitch_1
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    if-eqz v9, :cond_1

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #jsCodeBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .restart local v5       #jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v9, "setArticleListCommonData(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v10, v10, Lcom/android/browser/controller/ForumController$ArticleListData;->paging:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v10, v10, Lcom/android/browser/controller/ForumController$ArticleListData;->newThread:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 275
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleListData;->subforumList:Ljava/util/ArrayList;

    if-eqz v9, :cond_7

    .line 277
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleListData;->subforumList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/ForumController$ForumData;

    .line 278
    .local v1, data:Lcom/android/browser/controller/ForumController$ForumData;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #jsCodeBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .restart local v5       #jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v9, "addSubforum(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ForumData;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ForumData;->link:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ForumData;->todayNum:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_5

    .line 285
    .end local v1           #data:Lcom/android/browser/controller/ForumController$ForumData;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleListData;->stickArticleList:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    .line 287
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleListData;->stickArticleList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/ForumController$ArticleData;

    .line 288
    .local v1, data:Lcom/android/browser/controller/ForumController$ArticleData;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #jsCodeBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .restart local v5       #jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v9, "addStickThread(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->link:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->icon:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->author:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->nums:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->lastpost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_6

    .line 295
    .end local v1           #data:Lcom/android/browser/controller/ForumController$ArticleData;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_8
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleListData;->normalArticleList:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 297
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleListData:Lcom/android/browser/controller/ForumController$ArticleListData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleListData;->normalArticleList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/ForumController$ArticleData;

    .line 298
    .restart local v1       #data:Lcom/android/browser/controller/ForumController$ArticleData;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #jsCodeBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .restart local v5       #jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v9, "addNormalThread(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->link:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->icon:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->author:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->nums:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$ArticleData;->lastpost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_7

    .line 308
    .end local v1           #data:Lcom/android/browser/controller/ForumController$ArticleData;
    .end local v3           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleDetailData;->posts:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #jsCodeBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .restart local v5       #jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v9, "setArticleDetailCommonData(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v10, v10, Lcom/android/browser/controller/ForumController$ArticleDetailData;->paging:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v10, v10, Lcom/android/browser/controller/ForumController$ArticleDetailData;->replyBtn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 319
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mArticleDetailData:Lcom/android/browser/controller/ForumController$ArticleDetailData;

    iget-object v9, v9, Lcom/android/browser/controller/ForumController$ArticleDetailData;->posts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/ForumController$PostData;

    .line 320
    .local v1, data:Lcom/android/browser/controller/ForumController$PostData;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #jsCodeBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .restart local v5       #jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v9, "addPost(\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->content:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->authorID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->authorIcon:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->authorIconOnError:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->authorTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->floor:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->postTime:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/browser/controller/ForumController$PostData;->fastReply:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v9, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_8

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showFastLogin()V
    .locals 2

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v1, "showFastLogin();"

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 728
    :cond_0
    return-void
.end method

.method public showFastPost()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v1, "showFastPost()"

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public showLoginBeforePosting(Ljava/lang/String;)V
    .locals 3
    .parameter "alertMessage"

    .prologue
    .line 686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v1, "showLogging(\'\')"

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLogging(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showPosting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "resultMessage"
    .parameter "subject"
    .parameter "content"

    .prologue
    const-string v3, "\'"

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v0, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v1, "showPosting(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    if-nez p2, :cond_0

    .line 669
    const-string v1, "null,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :goto_0
    if-nez p3, :cond_1

    .line 674
    const-string v1, "null);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :goto_1
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 680
    return-void

    .line 671
    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 676
    :cond_1
    const-string v1, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public showSearchForm()V
    .locals 2

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v1, "showSearchForm();"

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void
.end method

.method public showSearchResultStringAndPaging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "searchResult"
    .parameter "paging"

    .prologue
    const-string v6, "\n"

    const-string v5, ""

    .line 743
    iget-boolean v1, p0, Lcom/android/browser/controller/ForumController;->mEnterDirectly:Z

    if-eqz v1, :cond_0

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .local v0, jsCodeBuilder:Ljava/lang/StringBuilder;
    const-string v1, "showSearchResultString(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\\\\\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v3, ""

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 753
    .end local v0           #jsCodeBuilder:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->stopLoading()V

    .line 74
    iget-object v0, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {p0}, Lcom/android/browser/controller/ForumController;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method
