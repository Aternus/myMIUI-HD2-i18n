.class Lcom/android/mms/ui/SlideshowEditActivity$1;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$002(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z

    .line 400
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$100(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #calls: Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowEditActivity;->access$200(Lcom/android/mms/ui/SlideshowEditActivity;)V

    .line 403
    return-void

    .line 400
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
