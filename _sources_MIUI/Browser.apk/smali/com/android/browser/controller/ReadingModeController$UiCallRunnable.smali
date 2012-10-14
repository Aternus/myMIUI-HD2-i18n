.class Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;
.super Ljava/lang/Object;
.source "ReadingModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiCallRunnable"
.end annotation


# instance fields
.field mRes:Z

.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ReadingModeController;Z)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-boolean p2, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->mRes:Z

    .line 813
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mNotify:Z
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1800(Lcom/android/browser/controller/ReadingModeController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->mRes:Z

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->onPageDataFinish()V

    .line 820
    :cond_0
    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->mRes:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->onReadingModeDataReady(Z)V

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mNotify:Z
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$1802(Lcom/android/browser/controller/ReadingModeController;Z)Z

    .line 825
    :cond_2
    return-void
.end method
