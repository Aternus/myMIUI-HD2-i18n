.class Lcom/miui/player/ui/OnlineMusicBaseActivity$4;
.super Ljava/lang/Object;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 13
    .parameter "v"
    .parameter "checkable"

    .prologue
    const v12, 0x7f080089

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 506
    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v4

    .line 507
    .local v4, positionSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 508
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSongItemList:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->access$102(Lcom/miui/player/ui/OnlineMusicBaseActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 510
    .local v3, position:Ljava/lang/Long;
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSongItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->access$100(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    iget-object v7, v7, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    .end local v3           #position:Ljava/lang/Long;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 553
    :goto_1
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->access$200(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Landroid/widget/EditableListView;

    .line 554
    .local v1, editList:Landroid/widget/EditableListView;
    invoke-virtual {v1}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 555
    .end local v1           #editList:Landroid/widget/EditableListView;
    :cond_1
    return-void

    .line 515
    :pswitch_0
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSongItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->access$100(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, confirmWarning:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSongItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->access$100(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 520
    .local v5, size:I
    if-ne v5, v10, :cond_2

    .line 521
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    const v7, 0x7f080051

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v9, v12}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080043

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080042

    new-instance v8, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;

    invoke-direct {v8, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$4$1;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity$4;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 523
    :cond_2
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    const v7, 0x7f080050

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v9, v12}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0002
        :pswitch_0
    .end packed-switch
.end method
