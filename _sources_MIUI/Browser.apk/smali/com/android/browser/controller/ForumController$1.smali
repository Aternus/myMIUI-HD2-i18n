.class Lcom/android/browser/controller/ForumController$1;
.super Ljava/lang/Object;
.source "ForumController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumController;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ForumController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumController;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$1;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$1;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->onForumModeNotAvailable()V

    .line 132
    return-void
.end method
