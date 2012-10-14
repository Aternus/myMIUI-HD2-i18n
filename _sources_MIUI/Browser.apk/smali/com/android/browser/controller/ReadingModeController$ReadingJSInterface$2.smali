.class Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface$2;
.super Ljava/lang/Object;
.source "ReadingModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->pageDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface$2;->this$1:Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface$2;->this$1:Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->pageDown(Z)Z

    .line 794
    return-void
.end method
