.class Lcom/android/mms/ui/SlideEditorActivity$1;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setResult(I)V

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
