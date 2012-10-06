.class Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$12;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->showFastPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$12;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$12;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    #getter for: Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;
    invoke-static {v0}, Lcom/android/browser/controller/ForumDataDetectorShell;->access$100(Lcom/android/browser/controller/ForumDataDetectorShell;)Lcom/android/browser/controller/ForumController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->showFastPost()V

    .line 385
    return-void
.end method
