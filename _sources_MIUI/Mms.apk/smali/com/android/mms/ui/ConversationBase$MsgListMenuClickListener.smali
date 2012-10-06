.class final Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private final mPosition:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationBase;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput p2, p0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->mPosition:I

    .line 761
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 22
    .parameter "item"

    .prologue
    .line 763
    const/4 v13, 0x0

    .line 764
    .local v13, cursor:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 765
    .local v21, type:Ljava/lang/String;
    const-wide/16 v16, -0x1

    .line 767
    .local v16, msgId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationBase;->access$100(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->mPosition:I

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/database/Cursor;

    move-object v13, v0

    .line 768
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 769
    const/4 v6, 0x1

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 773
    if-eqz v13, :cond_0

    if-eqz v21, :cond_0

    const-wide/16 v6, -0x1

    cmp-long v6, v16, v6

    if-nez v6, :cond_1

    .line 774
    :cond_0
    const/4 v6, 0x0

    .line 853
    :goto_0
    return v6

    .line 770
    :catch_0
    move-exception v6

    move-object v14, v6

    .line 771
    .local v14, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0

    .line 777
    .end local v14           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    const/4 v7, 0x1

    move-object v0, v6

    move-object/from16 v1, v21

    move-wide/from16 v2, v16

    move v4, v7

    #calls: Lcom/android/mms/ui/ConversationBase;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/ConversationBase;->access$900(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v18

    .line 778
    .local v18, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v18, :cond_2

    .line 779
    const/4 v6, 0x0

    goto :goto_0

    .line 782
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 853
    :pswitch_0
    const/4 v6, 0x0

    goto :goto_0

    .line 784
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    #calls: Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationBase;->access$1000(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    .line 786
    const/4 v6, 0x1

    goto :goto_0

    .line 789
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/ui/ConversationBase;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/mms/ui/ConversationBase;->access$1100(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;)V

    .line 790
    const/4 v6, 0x1

    goto :goto_0

    .line 793
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->forwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    .line 794
    const/4 v6, 0x1

    goto :goto_0

    .line 797
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v7

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 799
    const/4 v6, 0x1

    goto :goto_0

    .line 802
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v13

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v15

    .line 804
    .local v15, messageDetails:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090090

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 810
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 813
    .end local v15           #messageDetails:Ljava/lang/String;
    :pswitch_6
    new-instance v5, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v8

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v9

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/net/Uri;ZJZ)V

    .line 816
    .local v5, l:Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v8

    #calls: Lcom/android/mms/ui/ConversationBase;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
    invoke-static {v6, v5, v7, v8}, Lcom/android/mms/ui/ConversationBase;->access$1200(Lcom/android/mms/ui/ConversationBase;Landroid/content/DialogInterface$OnClickListener;ZZ)V

    .line 817
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 821
    .end local v5           #l:Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v16

    #calls: Lcom/android/mms/ui/ConversationBase;->copyMedia(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationBase;->access$1300(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v20

    .line 823
    .local v20, success:Z
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    invoke-direct {v12, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 824
    .local v12, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0900e3

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 825
    const v6, 0x1080027

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 826
    if-eqz v20, :cond_3

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    const v7, 0x7f0900e4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$1400()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 831
    :goto_1
    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v12, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 832
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 833
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 829
    :cond_3
    const v6, 0x7f0900e5

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 837
    .end local v12           #builder:Landroid/app/AlertDialog$Builder;
    .end local v20           #success:Z
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v16

    #calls: Lcom/android/mms/ui/ConversationBase;->copyToDrmProvider(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationBase;->access$1500(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v7

    move-object v0, v6

    move-wide/from16 v1, v16

    move v3, v7

    #calls: Lcom/android/mms/ui/ConversationBase;->getDrmMimeSavedStringRsrc(JZ)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;JZ)I

    move-result v19

    .line 838
    .local v19, resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v6

    move/from16 v1, v19

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 839
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 843
    .end local v19           #resId:I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    const/4 v7, 0x1

    move-object v0, v6

    move-object/from16 v1, v18

    move v2, v7

    #calls: Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationBase;->access$1700(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V

    .line 844
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 848
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, v18

    move v2, v7

    #calls: Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationBase;->access$1700(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V

    .line 849
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method
