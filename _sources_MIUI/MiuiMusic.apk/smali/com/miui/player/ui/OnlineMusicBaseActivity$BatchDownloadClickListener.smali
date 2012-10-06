.class public Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;
.super Ljava/lang/Object;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BatchDownloadClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method protected constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 599
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getMusicInfoSongList()Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v1

    .line 600
    .local v1, songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->access$300(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    .line 605
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_0
.end method
