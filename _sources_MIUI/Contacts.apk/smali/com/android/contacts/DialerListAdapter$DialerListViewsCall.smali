.class public final Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;
.super Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;
.source "DialerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/DialerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DialerListViewsCall"
.end annotation


# instance fields
.field private final mBigIcon:Landroid/widget/ImageView;

.field private final mCallRecordPhoneNumber:Landroid/widget/TextView;

.field private final mCallRecordTimeDetails:Landroid/widget/TextView;

.field private final mDetails:Landroid/widget/LinearLayout;

.field private final mFirewall:Landroid/widget/ImageView;

.field private final mHighLightedNamePinyin:Landroid/widget/TextView;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mName:Landroid/widget/TextView;

.field private final mPhoto:Landroid/widget/QuickContactBadge;

.field private final mT9PhoneNumber:Landroid/widget/TextView;

.field private final mTelocation:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/contacts/DialerListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/DialerListAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    invoke-direct {p0, p1}, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;-><init>(Lcom/android/contacts/DialerListAdapter;)V

    .line 387
    const v0, 0x7f070060

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    .line 388
    const v0, 0x7f070061

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mBigIcon:Landroid/widget/ImageView;

    .line 389
    const v0, 0x7f070062

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    .line 390
    const v0, 0x7f070063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mFirewall:Landroid/widget/ImageView;

    .line 392
    const v0, 0x7f070064

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mDetails:Landroid/widget/LinearLayout;

    .line 393
    const v0, 0x7f070065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mIcon:Landroid/widget/ImageView;

    .line 394
    const v0, 0x7f070066

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordTimeDetails:Landroid/widget/TextView;

    .line 395
    const v0, 0x7f070067

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f070068

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    .line 398
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordTimeDetails:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    .line 399
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    .line 400
    return-void
.end method


# virtual methods
.method protected drawCallRecord(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 418
    const/4 v5, 0x1

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 419
    .local v17, lCurrId:J
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 420
    .local v19, name:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, number:Ljava/lang/String;
    const/4 v5, 0x7

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 422
    .local v22, type:I
    const/16 v5, 0x9

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 423
    .local v14, duration:J
    const/16 v5, 0x8

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 424
    .local v12, date:J
    const/16 v5, 0xd

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 427
    .local v16, firewallType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$000(Lcom/android/contacts/DialerListAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v7

    #calls: Lcom/android/contacts/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/DialerListAdapter;->access$100(Lcom/android/contacts/DialerListAdapter;Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mBigIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mIcon:Landroid/widget/ImageView;

    move-object v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->setCallLogIcons(IILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 441
    :goto_0
    invoke-static {v7}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v20

    .line 443
    .local v20, presentation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_3

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v5, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :goto_1
    const/4 v5, 0x3

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v6, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v6}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v6

    const v8, 0x7f0e0011

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v5, v6, v8}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 458
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-lez v5, :cond_6

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    move-wide v1, v14

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->formatDuration(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 472
    .local v21, timeDetails:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordTimeDetails:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordTimeDetails:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mFirewall:Landroid/widget/ImageView;

    move-object v5, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mListView:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$400(Lcom/android/contacts/DialerListAdapter;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_9

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordTimeDetails:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 495
    :cond_1
    :goto_5
    return-void

    .line 434
    .end local v20           #presentation:I
    .end local v21           #timeDetails:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mBigIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mBigIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->setCallLogIcons(IILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 446
    .restart local v20       #presentation:I
    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-gez v5, :cond_4

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 449
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 455
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v6, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v6}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v6

    const v8, 0x10300b2

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v5, v6, v8}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 463
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordPhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const/16 v5, 0x65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v9, v0

    move-object/from16 v10, p1

    move-object v11, v7

    invoke-static/range {v5 .. v11}, Landroid/telephony/PhoneNumberUtils;->queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 475
    .restart local v21       #timeDetails:Ljava/lang/String;
    :cond_7
    const/16 v6, 0x8

    goto/16 :goto_4

    .line 486
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordTimeDetails:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x12c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_5

    .line 490
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mCallRecordTimeDetails:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0xcd

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_5
.end method

.method protected drawContact(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 500
    const/4 v4, 0x2

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 501
    .local v19, strCurrName:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, strCurrNumber:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 504
    .local v15, lCurrId:J
    const/4 v12, 0x0

    .line 505
    .local v12, isChildContacts:Z
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-lez v4, :cond_0

    .line 506
    const-wide/16 v17, -0x1

    .line 507
    .local v17, lPreId:J
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 508
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 509
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 513
    :goto_0
    cmp-long v4, v17, v15

    if-nez v4, :cond_4

    const/4 v4, 0x1

    move v12, v4

    .line 516
    .end local v17           #lPreId:J
    :cond_0
    :goto_1
    const-wide/16 v4, -0x7

    cmp-long v4, v15, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x6

    cmp-long v4, v15, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x9

    cmp-long v4, v15, v4

    if-nez v4, :cond_5

    .line 519
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mDetails:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    #calls: Lcom/android/contacts/DialerListAdapter;->setIcon(Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/DialerListAdapter;->access$500(Lcom/android/contacts/DialerListAdapter;Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v5

    const v6, 0x7f0e0012

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v4, v5, v6}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 628
    .end local v6           #strCurrNumber:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_e

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 635
    :goto_3
    return-void

    .line 511
    .restart local v6       #strCurrNumber:Ljava/lang/String;
    .restart local v17       #lPreId:J
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_0

    .line 513
    :cond_4
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_1

    .line 527
    .end local v17           #lPreId:J
    :cond_5
    const-wide/16 v4, -0x8

    cmp-long v4, v15, v4

    if-nez v4, :cond_6

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mDetails:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v5

    const v6, 0x7f0e0012

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v4, v5, v6}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_2

    .line 533
    :cond_6
    if-eqz v12, :cond_8

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mDetails:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z
    invoke-static {v4}, Lcom/android/contacts/DialerListAdapter;->access$000(Lcom/android/contacts/DialerListAdapter;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 546
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    const/16 v4, 0x65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v8, v0

    move-object/from16 v9, p1

    move-object v10, v6

    invoke-static/range {v4 .. v10}, Landroid/telephony/PhoneNumberUtils;->queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    const/16 v4, 0xb

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-nez v4, :cond_2

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/TwelveKeyDialer;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v5

    #calls: Lcom/android/contacts/DialerListAdapter;->highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-static {v4, v6, v5}, Lcom/android/contacts/DialerListAdapter;->access$700(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 553
    .local v11, highlights:Landroid/text/SpannableStringBuilder;
    if-eqz v11, :cond_2

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 558
    .end local v11           #highlights:Landroid/text/SpannableStringBuilder;
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-lez v4, :cond_c

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mDetails:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z
    invoke-static {v4}, Lcom/android/contacts/DialerListAdapter;->access$000(Lcom/android/contacts/DialerListAdapter;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v3, v6

    #calls: Lcom/android/contacts/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/DialerListAdapter;->access$100(Lcom/android/contacts/DialerListAdapter;Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 571
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v5

    const v7, 0x10300b2

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v4, v5, v7}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    const/16 v4, 0x65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v8, v0

    move-object/from16 v9, p1

    move-object v10, v6

    invoke-static/range {v4 .. v10}, Landroid/telephony/PhoneNumberUtils;->queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 581
    const/4 v11, 0x0

    .line 582
    .restart local v11       #highlights:Landroid/text/SpannableStringBuilder;
    const/16 v4, 0xb

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 583
    .local v13, keyType:J
    const-wide/16 v4, 0x1

    cmp-long v4, v13, v4

    if-nez v4, :cond_a

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    const/16 v5, 0xe

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v6           #strCurrNumber:Ljava/lang/String;
    move-result-object v6

    #calls: Lcom/android/contacts/DialerListAdapter;->highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    invoke-static {v4, v5, v6}, Lcom/android/contacts/DialerListAdapter;->access$600(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 585
    if-eqz v11, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 590
    .restart local v6       #strCurrNumber:Ljava/lang/String;
    :cond_a
    const-wide/16 v4, 0x2

    cmp-long v4, v13, v4

    if-nez v4, :cond_b

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    const/16 v5, 0xc

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v5

    #calls: Lcom/android/contacts/DialerListAdapter;->highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    invoke-static {v0, v1, v2}, Lcom/android/contacts/DialerListAdapter;->access$600(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 592
    if-eqz v11, :cond_2

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 597
    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v4, v13, v4

    if-nez v4, :cond_2

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/TwelveKeyDialer;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v5

    #calls: Lcom/android/contacts/DialerListAdapter;->highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-static {v4, v6, v5}, Lcom/android/contacts/DialerListAdapter;->access$700(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 599
    if-eqz v11, :cond_2

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 605
    .end local v11           #highlights:Landroid/text/SpannableStringBuilder;
    .end local v13           #keyType:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mDetails:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mHighLightedNamePinyin:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z
    invoke-static {v4}, Lcom/android/contacts/DialerListAdapter;->access$000(Lcom/android/contacts/DialerListAdapter;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v3, v6

    #calls: Lcom/android/contacts/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/DialerListAdapter;->access$100(Lcom/android/contacts/DialerListAdapter;Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 617
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v5

    const v7, 0x10300b2

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v4, v5, v7}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mName:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    const/16 v4, 0x65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v8, v0

    move-object/from16 v9, p1

    move-object v10, v6

    invoke-static/range {v4 .. v10}, Landroid/telephony/PhoneNumberUtils;->queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 632
    .end local v6           #strCurrNumber:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mT9PhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mTelocation:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3
.end method

.method protected setMode(Z)V
    .locals 3
    .parameter "callRecord"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 404
    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mFirewall:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mBigIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mFirewall:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mBigIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
