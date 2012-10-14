.class Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->setPostingData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$showMsg:Ljava/lang/String;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$showMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const-string v9, "\\\\\'"

    const-string v8, "\'"

    const-string v7, "\n"

    const-string v6, ""

    .line 406
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$showMsg:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v1, v5

    .line 408
    .local v1, newMsg:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$subject:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v2, v5

    .line 409
    .local v2, newSubject:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$content:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v0, v5

    .line 410
    .local v0, newContent:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iget-object v3, v3, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    #getter for: Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;
    invoke-static {v3}, Lcom/android/browser/controller/ForumDataDetectorShell;->access$100(Lcom/android/browser/controller/ForumDataDetectorShell;)Lcom/android/browser/controller/ForumController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/browser/controller/ForumController;->showPosting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void

    .line 406
    .end local v0           #newContent:Ljava/lang/String;
    .end local v1           #newMsg:Ljava/lang/String;
    .end local v2           #newSubject:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$showMsg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v4, ""

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v4, "\\\\\'"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 408
    .restart local v1       #newMsg:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$subject:Ljava/lang/String;

    const-string v4, "\n"

    const-string v4, ""

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v4, "\\\\\'"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 409
    .restart local v2       #newSubject:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;->val$content:Ljava/lang/String;

    const-string v4, "\n"

    const-string v4, ""

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v4, "\\\\\'"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_2
.end method
