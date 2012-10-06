.class public Lcom/android/browser/controller/ForumTypeDetector;
.super Ljava/lang/Object;
.source "ForumTypeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/ForumTypeDetector$1;,
        Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mForumController:Lcom/android/browser/controller/ForumController;

.field private mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

.field private mJSInterface:Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

.field private mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

.field private mRuleProvider:Lcom/android/browser/model/ForumRuleProvider;

.field private mWebView:Lcom/android/browser/ui/MiRenWebViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "com.android.browser.controller.ForumTypeDetector"

    sput-object v0, Lcom/android/browser/controller/ForumTypeDetector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 3
    .parameter "controller"
    .parameter "view"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumController:Lcom/android/browser/controller/ForumController;

    .line 26
    iput-object p2, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 27
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/model/ForumRuleProvider;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/ForumRuleProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRuleProvider:Lcom/android/browser/model/ForumRuleProvider;

    .line 28
    new-instance v0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;-><init>(Lcom/android/browser/controller/ForumTypeDetector;Lcom/android/browser/controller/ForumTypeDetector$1;)V

    iput-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mJSInterface:Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

    .line 29
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mJSInterface:Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

    const-string v2, "forumTypeDetector"

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumController:Lcom/android/browser/controller/ForumController;

    iget-object v2, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-direct {v0, v1, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;-><init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    iput-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    .line 31
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/controller/ForumTypeDetector;)Lcom/android/browser/ui/MiRenWebViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    return-object v0
.end method


# virtual methods
.method public detectForum()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v1, "js/forum_identity.js"

    const-string v2, "detectForumIdentity"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromAsset(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public getForumDataDetectorShell()Lcom/android/browser/controller/ForumDataDetectorShell;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    return-object v0
.end method

.method public getForumRule()Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    return-object v0
.end method

.method public onIdentityDetected(Ljava/lang/String;)V
    .locals 4
    .parameter "generator"

    .prologue
    .line 57
    sget-object v1, Lcom/android/browser/controller/ForumTypeDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generator detected, generator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    .line 62
    .local v0, rule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHPWind"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRuleProvider:Lcom/android/browser/model/ForumRuleProvider;

    invoke-virtual {v1, p1}, Lcom/android/browser/model/ForumRuleProvider;->getRuleFromGenerator(Ljava/lang/String;)Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v2, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    iget v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->generatorType:I

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->onIdentityDetected(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    invoke-virtual {v1}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectPageType()V

    goto :goto_0

    .line 73
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-boolean v1, v1, Lcom/android/browser/controller/ForumDataDetectorShell;->post:Z

    if-eqz v1, :cond_3

    .line 74
    iput-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    .line 75
    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    invoke-virtual {v1}, Lcom/android/browser/controller/ForumDataDetectorShell;->detectPageType()V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumController:Lcom/android/browser/controller/ForumController;

    sget-object v2, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/ForumController;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V

    goto :goto_0
.end method

.method public onParamDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumDataDetectorShell;->onParamDetected(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public resetWebView(Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eq v0, p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mJSInterface:Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

    const-string v1, "forumTypeDetector"

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mForumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumDataDetectorShell;->resetWebView(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 54
    :cond_1
    return-void
.end method

.method public setForumNotAvailable()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector;->mRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    .line 39
    return-void
.end method
