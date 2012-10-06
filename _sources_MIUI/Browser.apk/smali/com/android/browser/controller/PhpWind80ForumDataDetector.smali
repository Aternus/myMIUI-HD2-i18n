.class public Lcom/android/browser/controller/PhpWind80ForumDataDetector;
.super Lcom/android/browser/controller/PhpWindForumDataDetector;
.source "PhpWind80ForumDataDetector.java"


# direct methods
.method public constructor <init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/controller/PhpWindForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 23
    return-void
.end method


# virtual methods
.method public setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "userMenu"
    .parameter "navBar"
    .parameter "searchBtn"

    .prologue
    .line 27
    const-string v1, "</ul>"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, ind:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 36
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/browser/controller/PhpWindForumDataDetector;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
