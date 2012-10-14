.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/EditableListItem;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mConversationHeader:Lcom/android/mms/ui/ConversationListItemData;

.field private mDateView:Landroid/widget/TextView;

.field private mErrorIndicator:Landroid/view/View;

.field private mFetionPrefix:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHasDraftView:Landroid/widget/TextView;

.field private mHasTimedMsgIndicator:Landroid/view/View;

.field private mMsgCountView:Landroid/widget/TextView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadMsgCountView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private setAvatar(I)V
    .locals 5
    .parameter "iconId"

    .prologue
    .line 144
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_conversation_show_avatar"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    .local v0, show:Z
    const v2, 0x7f0d0021

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setConversationHeader(Lcom/android/mms/ui/ConversationListItemData;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationHeader:Lcom/android/mms/ui/ConversationListItemData;

    .line 100
    return-void
.end method

.method private setPresenceIcon(I)V
    .locals 2
    .parameter "iconId"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAvatarView()V
    .locals 8

    .prologue
    const v6, 0x10803bc

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationHeader:Lcom/android/mms/ui/ConversationListItemData;

    .line 104
    .local v0, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    .line 105
    .local v2, contactsSize:I
    if-nez v2, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 107
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 132
    return-void

    .line 108
    :cond_0
    if-ne v2, v5, :cond_4

    .line 109
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 110
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 112
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getPhotoId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/widget/QuickContactBadge;->setDefaultPhoto(Landroid/widget/ImageView;J)V

    .line 114
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3, v1}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 120
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3, v1}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 123
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 124
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0

    .line 128
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 129
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationHeader:Lcom/android/mms/ui/ConversationListItemData;

    .line 159
    .local v0, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 160
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListItem;->setAvatar(I)V

    .line 162
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;)V
    .locals 16
    .parameter "context"
    .parameter "ch"

    .prologue
    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setConversationHeader(Lcom/android/mms/ui/ConversationListItemData;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getDate()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/ContactList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/util/AddressUtils;->isFetionNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getUnreadMessageCount()I

    move-result v13

    if-lez v13, :cond_3

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mConversationHeader:Lcom/android/mms/ui/ConversationListItemData;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListItemData;->getUnreadMessageCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 197
    .local v12, unReadMsgCount:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .end local v12           #unReadMsgCount:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v11

    .line 209
    .local v11, subject:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->hasDraft()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 210
    const/4 v10, 0x0

    .line 211
    .local v10, s:Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_6

    .line 212
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 213
    .local v2, c:C
    const v13, 0xffff

    if-ne v2, v13, :cond_5

    .line 214
    if-nez v10, :cond_0

    .line 215
    new-instance v10, Landroid/text/SpannableStringBuilder;

    .end local v10           #s:Landroid/text/SpannableStringBuilder;
    const/4 v13, 0x0

    invoke-virtual {v11, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    .restart local v10       #s:Landroid/text/SpannableStringBuilder;
    :cond_0
    const v13, 0x7f0900c3

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, nicknamePlaceHolder:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 221
    .local v6, holderLen:I
    invoke-virtual {v10, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 222
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 223
    .local v4, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 224
    .local v9, res:Landroid/content/res/Resources;
    new-instance v13, Landroid/text/style/BackgroundColorSpan;

    const v14, 0x7f080002

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sub-int v14, v4, v6

    const/16 v15, 0x21

    invoke-virtual {v10, v13, v14, v4, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 226
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const v14, 0x7f080001

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sub-int v14, v4, v6

    const/16 v15, 0x21

    invoke-virtual {v10, v13, v14, v4, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 211
    .end local v4           #end:I
    .end local v6           #holderLen:I
    .end local v8           #nicknamePlaceHolder:Ljava/lang/String;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 184
    .end local v2           #c:C
    .end local v7           #i:I
    .end local v10           #s:Landroid/text/SpannableStringBuilder;
    .end local v11           #subject:Ljava/lang/String;
    :cond_2
    const/16 v14, 0x8

    goto/16 :goto_0

    .line 198
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getMessageCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_4

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getMessageCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 203
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object v13, v0

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 228
    .restart local v2       #c:C
    .restart local v7       #i:I
    .restart local v10       #s:Landroid/text/SpannableStringBuilder;
    .restart local v11       #subject:Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_1

    .line 229
    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 233
    .end local v2           #c:C
    :cond_6
    if-eqz v10, :cond_7

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .end local v7           #i:I
    .end local v10           #s:Landroid/text/SpannableStringBuilder;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->hasError()Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mHasDraftView:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->hasDraft()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mConversationHeader:Lcom/android/mms/ui/ConversationListItemData;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/mms/data/Conversation$TimedThreads;->hasTimedMessage(J)Z

    move-result v5

    .line 249
    .local v5, hasTimedMsg:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mHasTimedMsgIndicator:Landroid/view/View;

    move-object v13, v0

    if-eqz v5, :cond_b

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 253
    .local v3, contacts:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v13

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setAvatar(I)V

    .line 254
    return-void

    .line 236
    .end local v3           #contacts:Lcom/android/mms/data/ContactList;
    .end local v5           #hasTimedMsg:Z
    .restart local v7       #i:I
    .restart local v10       #s:Landroid/text/SpannableStringBuilder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 239
    .end local v7           #i:I
    .end local v10           #s:Landroid/text/SpannableStringBuilder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 243
    :cond_9
    const/16 v14, 0x8

    goto :goto_5

    .line 245
    :cond_a
    const/16 v14, 0x8

    goto :goto_6

    .line 249
    .restart local v5       #hasTimedMsg:Z
    :cond_b
    const/16 v14, 0x8

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/EditableListItem;->onFinishInflate()V

    .line 78
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    .line 83
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 85
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHasDraftView:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    .line 89
    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHasTimedMsgIndicator:Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPreferences:Landroid/content/SharedPreferences;

    .line 92
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 259
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 260
    return-void
.end method
