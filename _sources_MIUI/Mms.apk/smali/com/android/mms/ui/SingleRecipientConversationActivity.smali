.class public Lcom/android/mms/ui/SingleRecipientConversationActivity;
.super Lcom/android/mms/ui/ConversationBase;
.source "SingleRecipientConversationActivity.java"


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCallView:Landroid/widget/ImageView;

.field private mFetionPrefix:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mMessageCount:Landroid/widget/TextView;

.field private mPhoneLocation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SingleRecipientConversationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->dialRecipient()V

    return-void
.end method

.method private static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dialRecipient()V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v0, dialIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private setUpContactInfo(Lcom/android/mms/data/Contact;)V
    .locals 9
    .parameter "contact"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, phone:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 83
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getPhotoId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/widget/QuickContactBadge;->setDefaultPhoto(Landroid/widget/ImageView;J)V

    .line 85
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 98
    :goto_0
    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, location:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMessageCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFetionPrefix:Landroid/view/View;

    invoke-static {v2}, Lcom/android/mms/util/AddressUtils;->isFetionNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void

    .line 87
    .end local v0           #location:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3, p1}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 91
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3, p1}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 94
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 95
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v4, 0x10803bc

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto/16 :goto_0

    .line 105
    .restart local v0       #location:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 109
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    if-eqz v0, :cond_5

    .line 111
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_4
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 113
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    move v4, v8

    .line 118
    goto :goto_3
.end method


# virtual methods
.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f03004d

    return v0
.end method

.method protected initMessageList()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/mms/ui/ConversationBase;->initMessageList()V

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;-><init>(Lcom/android/mms/ui/SingleRecipientConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    return-void
.end method

.method protected initResourceRefs()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/mms/ui/ConversationBase;->initResourceRefs()V

    .line 125
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 126
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFromView:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMessageCount:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mCallView:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mCallView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/SingleRecipientConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity$1;-><init>(Lcom/android/mms/ui/SingleRecipientConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFetionPrefix:Landroid/view/View;

    .line 136
    return-void
.end method

.method protected initialize(J)V
    .locals 1
    .parameter "threadId"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->initialize(J)V

    .line 52
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 53
    return-void
.end method

.method protected startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v4, 0x2537

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 171
    .local v3, conversationUri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "SingleRecipientCA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->cancelOperation(I)V

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 187
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method protected updateMessageCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMessageCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method protected updateTitle(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 67
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 68
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->setUpContactInfo(Lcom/android/mms/data/Contact;)V

    .line 69
    invoke-static {}, Lcom/android/mms/data/Contact;->resumeCaching()V

    .line 70
    return-void
.end method
