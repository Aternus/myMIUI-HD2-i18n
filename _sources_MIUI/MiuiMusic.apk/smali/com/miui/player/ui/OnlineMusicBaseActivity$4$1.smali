.class Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;
.super Ljava/lang/Object;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/OnlineMusicBaseActivity$4;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;->this$1:Lcom/miui/player/ui/OnlineMusicBaseActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 534
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    new-instance v0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;->this$1:Lcom/miui/player/ui/OnlineMusicBaseActivity$4;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;->this$1:Lcom/miui/player/ui/OnlineMusicBaseActivity$4;

    iget-object v2, v2, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;->this$1:Lcom/miui/player/ui/OnlineMusicBaseActivity$4;

    iget-object v3, v3, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSongItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->access$100(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;->this$1:Lcom/miui/player/ui/OnlineMusicBaseActivity$4;

    iget-object v4, v4, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getMusicInfoSongList()Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Provider:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 540
    .local v0, task:Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 541
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;->this$1:Lcom/miui/player/ui/OnlineMusicBaseActivity$4;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    const v2, 0x7f0800e1

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
