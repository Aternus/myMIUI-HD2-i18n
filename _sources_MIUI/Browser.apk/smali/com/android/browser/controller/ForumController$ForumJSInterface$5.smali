.class Lcom/android/browser/controller/ForumController$ForumJSInterface$5;
.super Ljava/lang/Object;
.source "ForumController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumController$ForumJSInterface;->doFastLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

.field final synthetic val$_password:Ljava/lang/String;

.field final synthetic val$_userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;->val$_userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;->val$_password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 891
    iget-object v1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iget-object v1, v1, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;
    invoke-static {v1}, Lcom/android/browser/controller/ForumController;->access$1200(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/controller/ForumTypeDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/ForumTypeDetector;->getForumDataDetectorShell()Lcom/android/browser/controller/ForumDataDetectorShell;

    move-result-object v0

    .line 892
    .local v0, forumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;
    if-nez v0, :cond_0

    .line 893
    invoke-static {}, Lcom/android/browser/controller/ForumController;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot doFastLogin, no forum detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;->val$_userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;->val$_password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->doQuickLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
