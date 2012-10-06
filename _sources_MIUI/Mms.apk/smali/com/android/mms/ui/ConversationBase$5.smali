.class Lcom/android/mms/ui/ConversationBase$5;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 21
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 503
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0

    .line 504
    .local v5, contextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v13, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 505
    .local v13, selectedView:Landroid/view/View;
    if-eqz v13, :cond_0

    instance-of v15, v13, Lcom/android/mms/ui/MessageListItem;

    if-nez v15, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget v15, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v16

    sub-int v12, v15, v16

    .line 509
    .local v12, position:I
    const/4 v6, 0x0

    .line 510
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 511
    .local v14, type:Ljava/lang/String;
    const-wide/16 v9, -0x1

    .line 513
    .local v9, msgId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v15, v0

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v15}, Lcom/android/mms/ui/ConversationBase;->access$100(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/database/Cursor;

    move-object v6, v0

    .line 514
    const/4 v15, 0x0

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 515
    const/4 v15, 0x1

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 519
    if-eqz v6, :cond_0

    if-eqz v14, :cond_0

    const-wide/16 v15, -0x1

    cmp-long v15, v9, v15

    if-eqz v15, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v15, v0

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v15}, Lcom/android/mms/ui/ConversationBase;->access$100(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v15

    invoke-virtual {v15, v14, v9, v10, v6}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    .line 524
    .local v11, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v11, :cond_2

    .line 525
    const-string v15, "ConversationBase"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot load message item for type = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", msgId = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v11           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 517
    .local v7, e:Ljava/lang/Exception;
    goto :goto_0

    .line 530
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_2
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 531
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 538
    :cond_3
    :goto_1
    new-instance v8, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v15, v0

    invoke-direct {v8, v15, v12}, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ConversationBase;I)V

    .line 541
    .local v8, l:Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 542
    const/4 v15, 0x0

    const/16 v16, 0xd

    const/16 v17, 0x0

    const v18, 0x7f090019

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 546
    :cond_4
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v15

    if-nez v15, :cond_5

    .line 548
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 549
    const/4 v15, 0x0

    const/16 v16, 0x14

    const/16 v17, 0x0

    const v18, 0x7f0900a6

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 557
    :cond_5
    :goto_2
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 558
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 571
    :cond_6
    :goto_3
    :pswitch_0
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v15

    packed-switch v15, :pswitch_data_1

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v15, v0

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v16

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z
    invoke-static/range {v15 .. v17}, Lcom/android/mms/ui/ConversationBase;->access$600(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 583
    const/4 v15, 0x0

    const/16 v16, 0x11

    const/16 v17, 0x0

    const v18, 0x7f0900e3

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 586
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v15, v0

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v16

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToDrmProvider(J)Z
    invoke-static/range {v15 .. v17}, Lcom/android/mms/ui/ConversationBase;->access$700(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 587
    const/4 v15, 0x0

    const/16 v16, 0x15

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v19

    #calls: Lcom/android/mms/ui/ConversationBase;->getDrmMimeMenuStringRsrc(J)I
    invoke-static/range {v18 .. v20}, Lcom/android/mms/ui/ConversationBase;->access$800(Lcom/android/mms/ui/ConversationBase;J)I

    move-result v18

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 597
    :cond_8
    :goto_4
    :pswitch_1
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 598
    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    const v18, 0x7f09001e

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 602
    :cond_9
    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    const v18, 0x7f090010

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 604
    const/4 v15, 0x0

    const/16 v16, 0xb

    const/16 v17, 0x0

    const v18, 0x7f090012

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 533
    .end local v8           #l:Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
    :cond_a
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 534
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 552
    .restart local v8       #l:Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
    :cond_b
    const/4 v15, 0x0

    const/16 v16, 0x13

    const/16 v17, 0x0

    const v18, 0x7f0900a5

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 565
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->size()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 566
    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    const v18, 0x7f0900a3

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 576
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v15, v0

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v16

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z
    invoke-static/range {v15 .. v17}, Lcom/android/mms/ui/ConversationBase;->access$600(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 577
    const/4 v15, 0x0

    const/16 v16, 0x11

    const/16 v17, 0x0

    const v18, 0x7f0900e3

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 571
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
