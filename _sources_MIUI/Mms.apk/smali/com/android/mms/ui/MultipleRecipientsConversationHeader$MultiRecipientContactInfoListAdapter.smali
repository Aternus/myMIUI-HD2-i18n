.class Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultipleRecipientsConversationHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleRecipientsConversationHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiRecipientContactInfoListAdapter"
.end annotation


# instance fields
.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    .line 174
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/data/Contact;
    .locals 1
    .parameter "position"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/data/Contact;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->getItem(I)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 188
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, contactInfoItem:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;
    if-eqz p2, :cond_0

    instance-of v3, p2, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;

    if-nez v3, :cond_1

    .line 195
    :cond_0
    new-instance v2, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;

    .end local v2           #contactInfoItem:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;
    iget-object v3, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    iget-object v4, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;-><init>(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;Landroid/content/Context;)V

    .line 200
    .restart local v2       #contactInfoItem:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->getItem(I)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 201
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->bind(Lcom/android/mms/data/Contact;)V

    .line 202
    return-object v2

    .line 197
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;

    move-object v2, v0

    goto :goto_0
.end method

.method setContactList(Lcom/android/mms/data/ContactList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_0
    return-void
.end method
