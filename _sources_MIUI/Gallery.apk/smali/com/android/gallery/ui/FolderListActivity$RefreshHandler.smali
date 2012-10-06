.class public Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;
.super Landroid/os/Handler;
.source "FolderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/FolderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/FolderListActivity;


# direct methods
.method protected constructor <init>(Lcom/android/gallery/ui/FolderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 236
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 237
    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->removeMessages(I)V

    .line 238
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    move v0, v1

    .line 249
    .local v0, newVisibility:I
    :goto_1
    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    iget-object v1, v1, Lcom/android/gallery/ui/FolderListActivity;->mToast:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    iget-object v1, v1, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v1}, Lcom/android/gallery/ui/FolderListAdapter;->resetData()V

    .line 251
    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    iget-object v1, v1, Lcom/android/gallery/ui/FolderListActivity;->mToast:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_1
    return-void

    .line 239
    .end local v0           #newVisibility:I
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    iget-object v1, v1, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v1}, Lcom/android/gallery/ui/FolderListAdapter;->resetData()V

    .line 241
    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    const v2, 0x7f090008

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    move v0, v4

    .line 248
    goto :goto_1
.end method
