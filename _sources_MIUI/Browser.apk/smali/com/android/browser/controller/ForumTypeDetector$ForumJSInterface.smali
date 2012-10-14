.class Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;
.super Ljava/lang/Object;
.source "ForumTypeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ForumTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForumJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ForumTypeDetector;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ForumTypeDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumTypeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ForumTypeDetector;Lcom/android/browser/controller/ForumTypeDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;-><init>(Lcom/android/browser/controller/ForumTypeDetector;)V

    return-void
.end method


# virtual methods
.method public onIdentityDetected(Ljava/lang/String;)V
    .locals 3
    .parameter "generator"

    .prologue
    .line 95
    move-object v0, p1

    .line 96
    .local v0, _generator:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumTypeDetector;

    #getter for: Lcom/android/browser/controller/ForumTypeDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;
    invoke-static {v1}, Lcom/android/browser/controller/ForumTypeDetector;->access$100(Lcom/android/browser/controller/ForumTypeDetector;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface$1;-><init>(Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
