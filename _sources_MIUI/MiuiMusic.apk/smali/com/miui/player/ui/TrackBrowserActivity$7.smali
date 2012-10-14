.class Lcom/miui/player/ui/TrackBrowserActivity$7;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 19
    .parameter "v"
    .parameter "checkable"

    .prologue
    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object v13, v0

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v13}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object v13, v0

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v13}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 1231
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eqz v13, :cond_0

    .line 1234
    invoke-interface/range {p2 .. p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v6

    .line 1235
    .local v6, audioIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v13

    new-array v5, v13, [J

    .line 1236
    .local v5, audioIdArr:[J
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 1237
    .local v12, position:I
    const/4 v10, 0x0

    .line 1238
    .local v10, index:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1239
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1240
    .local v3, audioId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1241
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aput-wide v3, v5, v10

    move v10, v11

    .line 1238
    .end local v11           #index:I
    .restart local v10       #index:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1244
    .end local v3           #audioId:J
    :cond_3
    invoke-interface {v8, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1246
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 1279
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object v13, v0

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1300(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v9

    check-cast v9, Landroid/widget/EditableListView;

    .line 1281
    .local v9, editList:Landroid/widget/EditableListView;
    invoke-virtual {v9}, Landroid/widget/EditableListView;->exitEditMode()V

    goto :goto_0

    .line 1248
    .end local v9           #editList:Landroid/widget/EditableListView;
    :pswitch_0
    if-eqz v5, :cond_0

    array-length v13, v5

    if-eqz v13, :cond_0

    .line 1251
    const/4 v7, 0x0

    .line 1252
    .local v7, confirmWarning:Ljava/lang/String;
    array-length v13, v5

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object v13, v0

    const v14, 0x7f080051

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object/from16 v17, v0

    const v18, 0x7f080002

    invoke-virtual/range {v17 .. v18}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1258
    :goto_3
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget-object v14, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f080043

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f080042

    new-instance v15, Lcom/miui/player/ui/TrackBrowserActivity$7$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity$7$1;-><init>(Lcom/miui/player/ui/TrackBrowserActivity$7;[J)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 1255
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object v13, v0

    const v14, 0x7f080050

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    move-object/from16 v17, v0

    const v18, 0x7f080002

    invoke-virtual/range {v17 .. v18}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1246
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0002
        :pswitch_0
    .end packed-switch
.end method
