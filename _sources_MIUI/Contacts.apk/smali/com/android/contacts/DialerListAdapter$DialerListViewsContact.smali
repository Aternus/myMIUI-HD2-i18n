.class public final Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;
.super Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;
.source "DialerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/DialerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DialerListViewsContact"
.end annotation


# instance fields
.field private final mArrowRight:Landroid/widget/ImageView;

.field private final mBigIcon:Landroid/widget/ImageView;

.field private final mCallRecordTimeDetails:Landroid/widget/TextView;

.field private final mDetails:Landroid/widget/LinearLayout;

.field private final mFirewall:Landroid/widget/ImageView;

.field private final mHighLightedNumberNamePinyin:Landroid/widget/TextView;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mName:Landroid/widget/TextView;

.field private final mPhoto:Landroid/widget/QuickContactBadge;

.field private final mTelocation:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/contacts/DialerListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/DialerListAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    invoke-direct {p0, p1}, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;-><init>(Lcom/android/contacts/DialerListAdapter;)V

    .line 178
    const v0, 0x7f070069

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    .line 179
    const v0, 0x7f07006a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mBigIcon:Landroid/widget/ImageView;

    .line 180
    const v0, 0x7f07006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f07006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mFirewall:Landroid/widget/ImageView;

    .line 182
    const v0, 0x7f07006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mDetails:Landroid/widget/LinearLayout;

    .line 183
    const v0, 0x7f07006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mIcon:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f070071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mTelocation:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f070070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mCallRecordTimeDetails:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f07006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f070072

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mArrowRight:Landroid/widget/ImageView;

    .line 188
    return-void
.end method


# virtual methods
.method protected drawCallRecord(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 209
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 210
    .local v19, name:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, number:Ljava/lang/String;
    const/4 v5, 0x7

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 212
    .local v22, type:I
    const/16 v5, 0x9

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 213
    .local v14, duration:J
    const/16 v5, 0x8

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 214
    .local v12, date:J
    const/16 v5, 0xd

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 215
    .local v16, firewallType:I
    const/4 v5, 0x1

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 218
    .local v17, lCurrId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z
    invoke-static {v5}, Lcom/android/contacts/DialerListAdapter;->access$000(Lcom/android/contacts/DialerListAdapter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v7

    #calls: Lcom/android/contacts/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/DialerListAdapter;->access$100(Lcom/android/contacts/DialerListAdapter;Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mBigIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mIcon:Landroid/widget/ImageView;

    move-object v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->setCallLogIcons(IILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 232
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    invoke-static {v7}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v20

    .line 235
    .local v20, presentation:I
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_1
    const/4 v5, 0x3

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v6, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v6}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v6

    const v8, 0x7f0e0011

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v5, v6, v8}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 248
    :goto_2
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

    .line 249
    .local v21, timeDetails:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mCallRecordTimeDetails:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mCallRecordTimeDetails:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-gez v5, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const/16 v5, 0x65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mTelocation:Landroid/widget/TextView;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v9, v0

    move-object/from16 v10, p1

    move-object v11, v7

    invoke-static/range {v5 .. v11}, Landroid/telephony/PhoneNumberUtils;->queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mFirewall:Landroid/widget/ImageView;

    move-object v5, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mArrowRight:Landroid/widget/ImageView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v6, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/android/contacts/DialerListAdapter;->access$400(Lcom/android/contacts/DialerListAdapter;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mFirewall:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 272
    :goto_6
    return-void

    .line 225
    .end local v20           #presentation:I
    .end local v21           #timeDetails:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mBigIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mBigIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->setCallLogIcons(IILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 237
    .restart local v20       #presentation:I
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-gez v5, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 245
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    move-object v6, v0

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v6}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v6

    const v8, 0x10300b2

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v5, v6, v8}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 259
    .restart local v21       #timeDetails:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mTelocation:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 262
    :cond_5
    const/16 v6, 0x8

    goto/16 :goto_4

    .line 265
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 270
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x14a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_6
.end method

.method protected drawContact(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 277
    const/4 v7, 0x2

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, strCurrName:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, strCurrNumber:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 281
    .local v3, lCurrId:J
    const-wide/16 v7, -0x7

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    const-wide/16 v7, -0x6

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    const-wide/16 v7, -0x9

    cmp-long v7, v3, v7

    if-nez v7, :cond_2

    .line 284
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 285
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mArrowRight:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 289
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    #calls: Lcom/android/contacts/DialerListAdapter;->setIcon(Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v7, v8, p2, v5}, Lcom/android/contacts/DialerListAdapter;->access$500(Lcom/android/contacts/DialerListAdapter;Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 290
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v8}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v8

    const v9, 0x7f0e0012

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v7, v8, v9}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 350
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_9

    .line 351
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 355
    :goto_1
    return-void

    .line 293
    :cond_2
    const-wide/16 v7, -0x8

    cmp-long v7, v3, v7

    if-nez v7, :cond_3

    .line 294
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 295
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mArrowRight:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v8}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v8

    const v9, 0x7f0e0012

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v7, v8, v9}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_0

    .line 300
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_7

    .line 301
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 303
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mArrowRight:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z
    invoke-static {v7}, Lcom/android/contacts/DialerListAdapter;->access$000(Lcom/android/contacts/DialerListAdapter;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 307
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 308
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    #calls: Lcom/android/contacts/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v7, v8, p2, v6}, Lcom/android/contacts/DialerListAdapter;->access$100(Lcom/android/contacts/DialerListAdapter;Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 311
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v8}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v8

    const v9, 0x10300b2

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v7, v8, v9}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, highlights:Landroid/text/SpannableStringBuilder;
    const/16 v7, 0xb

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 316
    .local v1, keyType:J
    const-wide/16 v7, 0x1

    cmp-long v7, v1, v7

    if-nez v7, :cond_5

    .line 317
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    const/16 v8, 0xe

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/contacts/DialerListAdapter;->highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    invoke-static {v7, v8, v9}, Lcom/android/contacts/DialerListAdapter;->access$600(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_1

    .line 319
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 322
    :cond_5
    const-wide/16 v7, 0x2

    cmp-long v7, v1, v7

    if-nez v7, :cond_6

    .line 323
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    const/16 v8, 0xc

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/contacts/DialerListAdapter;->highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    invoke-static {v7, v5, v8}, Lcom/android/contacts/DialerListAdapter;->access$600(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_1

    .line 325
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 328
    :cond_6
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-nez v7, :cond_1

    .line 329
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v8}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/TwelveKeyDialer;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v8

    #calls: Lcom/android/contacts/DialerListAdapter;->highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-static {v7, v6, v8}, Lcom/android/contacts/DialerListAdapter;->access$700(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 336
    .end local v0           #highlights:Landroid/text/SpannableStringBuilder;
    .end local v1           #keyType:J
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 338
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mArrowRight:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z
    invoke-static {v7}, Lcom/android/contacts/DialerListAdapter;->access$000(Lcom/android/contacts/DialerListAdapter;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 342
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 343
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mPhoto:Landroid/widget/QuickContactBadge;

    #calls: Lcom/android/contacts/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v7, v8, p2, v6}, Lcom/android/contacts/DialerListAdapter;->access$100(Lcom/android/contacts/DialerListAdapter;Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 346
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v8}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v8

    const v9, 0x10300b2

    #calls: Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    invoke-static {v7, v8, v9}, Lcom/android/contacts/DialerListAdapter;->access$300(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 347
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 353
    :cond_9
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mName:Landroid/widget/TextView;

    const/16 v8, 0x104

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_1
.end method

.method protected setMode(Z)V
    .locals 3
    .parameter "callRecord"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mFirewall:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mBigIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mHighLightedNumberNamePinyin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mFirewall:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mBigIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
