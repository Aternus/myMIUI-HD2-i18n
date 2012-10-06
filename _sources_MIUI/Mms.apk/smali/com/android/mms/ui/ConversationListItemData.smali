.class public Lcom/android/mms/ui/ConversationListItemData;
.super Ljava/lang/Object;
.source "ConversationListItemData.java"


# instance fields
.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDate:Ljava/lang/String;

.field private mHasAttachment:Z

.field private mHasDraft:Z

.field private mHasError:Z

.field private mIsRead:Z

.field private mMessageCount:I

.field private mPresenceResId:I

.field private mRecipientString:Ljava/lang/String;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSubject:Ljava/lang/String;

.field private mThreadId:J

.field private mUnreadMessageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .locals 3
    .parameter "context"
    .parameter "conv"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    .line 50
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    .line 51
    iput v2, p0, Lcom/android/mms/ui/ConversationListItemData;->mPresenceResId:I

    .line 52
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mSubject:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mDate:Ljava/lang/String;

    .line 54
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mIsRead:Z

    .line 55
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasError:Z

    .line 56
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasDraft:Z

    .line 57
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mMessageCount:I

    .line 58
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mUnreadMessageCount:I

    .line 59
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasAttachment:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0
.end method


# virtual methods
.method public getContacts()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipientString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mMessageCount:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    return-wide v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mUnreadMessageCount:I

    return v0
.end method

.method public hasDraft()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasDraft:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasError:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationHeader from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRecipients()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipientString:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getDemoRecipientsName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getDemoRecipientsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipientString:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method
