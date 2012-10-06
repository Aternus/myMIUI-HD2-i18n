.class public Lcom/miui/milk/control/local/AddressBookController;
.super Ljava/lang/Object;
.source "AddressBookController.java"


# instance fields
.field private contactAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private contactIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCanceled:Z

.field private mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

.field protected mContext:Landroid/content/Context;

.field private mCurrExportContactIndex:I

.field private mCurrImportContactIndex:I

.field private mException:Z

.field private mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mTotalImportSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->contactIds:Ljava/util/Vector;

    .line 58
    iput v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportContactIndex:I

    .line 59
    iput v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportContactIndex:I

    .line 60
    iput v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mTotalImportSize:I

    .line 62
    iput-boolean v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    .line 63
    iput-boolean v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    .line 66
    iput-object p1, p0, Lcom/miui/milk/control/local/AddressBookController;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mResolver:Landroid/content/ContentResolver;

    .line 68
    new-instance v0, Lcom/miui/milk/source/contact2/GroupManager;

    invoke-direct {v0, p1, v1}, Lcom/miui/milk/source/contact2/GroupManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    .line 69
    new-instance v0, Lcom/miui/milk/source/contact2/ContactManager;

    invoke-direct {v0, p1, v1}, Lcom/miui/milk/source/contact2/ContactManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    .line 70
    return-void
.end method

.method private contactApplyBatch(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v3, "AddressBookController"

    .line 386
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v1, "AddressBookController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ops size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v1, p1}, Lcom/miui/milk/source/contact2/ContactManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 390
    .local v0, res:[Landroid/content/ContentProviderResult;
    const-string v1, "AddressBookController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    array-length v1, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 392
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "contact applyBatch error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private getContactMD5(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/lang/String;
    .locals 16
    .parameter "contact"

    .prologue
    .line 173
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    .line 174
    .local v0, cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNameList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/ContactProtos2$Name;

    .line 175
    .local v6, name:Lcom/miui/milk/model/ContactProtos2$Name;
    invoke-virtual {v0, v6}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addName(Lcom/miui/milk/model/ContactProtos2$Name;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 176
    const-string v14, "AddressBookController"

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Name;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v6           #name:Lcom/miui/milk/model/ContactProtos2$Name;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNicknameList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/ContactProtos2$Nickname;

    .line 179
    .local v7, nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    invoke-virtual {v0, v7}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_1

    .line 181
    .end local v7           #nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhoneList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/milk/model/ContactProtos2$Phone;

    .line 182
    .local v10, phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    invoke-virtual {v0, v10}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhone(Lcom/miui/milk/model/ContactProtos2$Phone;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_2

    .line 184
    .end local v10           #phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEmailList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos2$Email;

    .line 185
    .local v2, email:Lcom/miui/milk/model/ContactProtos2$Email;
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEmail(Lcom/miui/milk/model/ContactProtos2$Email;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_3

    .line 187
    .end local v2           #email:Lcom/miui/milk/model/ContactProtos2$Email;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getImList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/ContactProtos2$Im;

    .line 188
    .local v5, im:Lcom/miui/milk/model/ContactProtos2$Im;
    invoke-virtual {v0, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addIm(Lcom/miui/milk/model/ContactProtos2$Im;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_4

    .line 190
    .end local v5           #im:Lcom/miui/milk/model/ContactProtos2$Im;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhotoList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/model/ContactProtos2$Photo;

    .line 191
    .local v11, photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    invoke-virtual {v0, v11}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_5

    .line 193
    .end local v11           #photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getOrganizationList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/milk/model/ContactProtos2$Organization;

    .line 194
    .local v9, org:Lcom/miui/milk/model/ContactProtos2$Organization;
    invoke-virtual {v0, v9}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_6

    .line 196
    .end local v9           #org:Lcom/miui/milk/model/ContactProtos2$Organization;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPostalList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/milk/model/ContactProtos2$Postal;

    .line 197
    .local v12, postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    invoke-virtual {v0, v12}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPostal(Lcom/miui/milk/model/ContactProtos2$Postal;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_7

    .line 199
    .end local v12           #postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEventList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos2$Event;

    .line 200
    .local v3, event:Lcom/miui/milk/model/ContactProtos2$Event;
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEvent(Lcom/miui/milk/model/ContactProtos2$Event;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_8

    .line 202
    .end local v3           #event:Lcom/miui/milk/model/ContactProtos2$Event;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNoteList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/ContactProtos2$Note;

    .line 203
    .local v8, note:Lcom/miui/milk/model/ContactProtos2$Note;
    invoke-virtual {v0, v8}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNote(Lcom/miui/milk/model/ContactProtos2$Note;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_9

    .line 205
    .end local v8           #note:Lcom/miui/milk/model/ContactProtos2$Note;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getWebsiteList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/milk/model/ContactProtos2$Website;

    .line 206
    .local v13, website:Lcom/miui/milk/model/ContactProtos2$Website;
    invoke-virtual {v0, v13}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addWebsite(Lcom/miui/milk/model/ContactProtos2$Website;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_a

    .line 208
    .end local v13           #website:Lcom/miui/milk/model/ContactProtos2$Website;
    :cond_a
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/milk/model/ContactProtos2$Contact;->toByteArray()[B

    move-result-object v1

    .line 209
    .local v1, data:[B
    invoke-static {v1}, Lcom/miui/milk/util/MD5;->MD5_32([B)Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method private getGroupMD5(Lcom/miui/milk/model/ContactProtos2$Group;)Ljava/lang/String;
    .locals 3
    .parameter "group"

    .prologue
    .line 165
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v1

    .line 166
    .local v1, gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 168
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Group;->toByteArray()[B

    move-result-object v0

    .line 169
    .local v0, data:[B
    invoke-static {v0}, Lcom/miui/milk/util/MD5;->MD5_32([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private groupApplyBatch(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v3, "AddressBookController"

    .line 336
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string v1, "AddressBookController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ops size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v1, p1}, Lcom/miui/milk/source/contact2/GroupManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 340
    .local v0, res:[Landroid/content/ContentProviderResult;
    const-string v1, "AddressBookController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private prepareAccount()V
    .locals 11

    .prologue
    .line 438
    iget-object v9, p0, Lcom/miui/milk/control/local/AddressBookController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 439
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 441
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 442
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v4, contactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v3, v8

    .local v3, arr$:[Landroid/content/SyncAdapterType;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v3, v5

    .line 445
    .local v7, sync:Landroid/content/SyncAdapterType;
    const-string v9, "com.android.contacts"

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 446
    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    .end local v7           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    .line 451
    move-object v3, v0

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v3, v5

    .line 452
    .local v1, acct:Landroid/accounts/Account;
    iget-object v9, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->isAccountDefault(Landroid/accounts/Account;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 453
    iget-object v9, p0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 456
    .end local v1           #acct:Landroid/accounts/Account;
    :cond_3
    return-void
.end method

.method private prepareAllContactIds()V
    .locals 9

    .prologue
    const-string v0, "_id"

    .line 489
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->contactIds:Ljava/util/Vector;

    .line 490
    const/4 v6, 0x0

    .line 492
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "deleted= 0 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 498
    if-nez v6, :cond_1

    .line 514
    if-eqz v6, :cond_0

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 503
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 505
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 506
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 510
    iget-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->contactIds:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 514
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 514
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private prepareAllGroupIds()V
    .locals 9

    .prologue
    const-string v0, "_id"

    .line 459
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->groupIds:Ljava/util/Vector;

    .line 460
    const/4 v6, 0x0

    .line 462
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "deleted= 0 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 468
    if-nez v6, :cond_1

    .line 482
    if-eqz v6, :cond_0

    .line 483
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 473
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 475
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 476
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 477
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 478
    iget-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->groupIds:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 482
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 483
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 482
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 483
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "contact"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v5, 0x190

    .line 348
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 349
    .local v2, index:I
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 350
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 375
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_1

    .line 376
    invoke-direct {p0, p3}, Lcom/miui/milk/control/local/AddressBookController;->contactApplyBatch(Ljava/util/ArrayList;)V

    .line 383
    :cond_1
    return-void

    .line 354
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v5, :cond_4

    .line 357
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_3

    .line 358
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 357
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 361
    :cond_3
    invoke-direct {p0, p3}, Lcom/miui/milk/control/local/AddressBookController;->contactApplyBatch(Ljava/util/ArrayList;)V

    .line 363
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 365
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 368
    .end local v1           #i:I
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v5, :cond_0

    .line 370
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "too many add ops per contact "

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v2           #index:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 380
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AddressBookController"

    const-string v4, "Cannot prepare import contact "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    throw v0
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "group"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v6, "AddressBookController"

    .line 311
    if-eqz p2, :cond_0

    .line 312
    const-string v3, "AddressBookController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare import group to account : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :try_start_0
    const-string v3, "AddressBookController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare Import Group title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 318
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v3, v2, p2}, Lcom/miui/milk/source/contact2/GroupManager;->loadByTitle(Ljava/lang/String;Landroid/accounts/Account;)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v1

    .line 319
    .local v1, existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    if-nez v1, :cond_1

    .line 320
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/milk/source/contact2/GroupManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 323
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_1

    .line 324
    invoke-direct {p0, p3}, Lcom/miui/milk/control/local/AddressBookController;->groupApplyBatch(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v1           #existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    :cond_1
    return-void

    .line 329
    .end local v2           #title:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 330
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AddressBookController"

    const-string v3, "Cannot prepare import group "

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    .line 74
    return-void
.end method

.method public exportAddressBook(Ljava/io/File;)V
    .locals 21
    .parameter "exportFile"

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 85
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v3

    .line 86
    .local v3, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/local/AddressBookController;->prepareAllGroupIds()V

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/local/AddressBookController;->prepareAllContactIds()V

    .line 89
    const/4 v10, 0x0

    .line 90
    .local v10, groupCount:I
    const/4 v5, 0x0

    .line 92
    .local v5, contactCount:I
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v12, groupMD5Set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->groupIds:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 94
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->groupIds:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 97
    .local v11, groupId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v9

    .line 98
    .local v9, group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v9, :cond_4

    .line 99
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/AddressBookController;->getGroupMD5(Lcom/miui/milk/model/ContactProtos2$Group;)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, md5:Ljava/lang/String;
    if-eqz v15, :cond_3

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 101
    :cond_3
    invoke-virtual {v3, v9}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 102
    add-int/lit8 v10, v10, 0x1

    .line 103
    if-eqz v15, :cond_4

    .line 104
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v9           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v15           #md5:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    .line 109
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load group "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 113
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #groupId:Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v7, contactMD5Set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportContactIndex:I

    .line 115
    const/4 v14, 0x0

    .local v14, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactIds:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 116
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactIds:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    .local v6, contactId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v4

    .line 120
    .local v4, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v4, :cond_7

    .line 121
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/AddressBookController;->getContactMD5(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/lang/String;

    move-result-object v15

    .line 122
    .restart local v15       #md5:Ljava/lang/String;
    const-string v18, "AddressBookController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "md5 : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v15, :cond_6

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 124
    :cond_6
    invoke-virtual {v3, v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 125
    add-int/lit8 v5, v5, 0x1

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportContactIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportContactIndex:I

    .line 127
    if-eqz v15, :cond_7

    .line 128
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 115
    .end local v4           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v15           #md5:Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 132
    :catch_1
    move-exception v18

    move-object/from16 v8, v18

    .line 133
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load contact "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 134
    .end local v8           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v18

    move-object/from16 v8, v18

    .line 135
    .local v8, e:Ljava/io/IOException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load contact "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 136
    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v18

    move-object/from16 v8, v18

    .line 137
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load contact "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 141
    .end local v6           #contactId:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_8
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v17

    .line 142
    .local v17, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 143
    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 149
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 150
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    .local v16, output:Ljava/io/FileOutputStream;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 152
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 153
    const-string v18, "AddressBookController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Export Group Counts : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v18, "AddressBookController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Export Contact Counts : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_1

    .line 155
    .end local v16           #output:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v18

    move-object/from16 v8, v18

    .line 156
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot export addressbook "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_1

    .line 158
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v18

    move-object/from16 v8, v18

    .line 159
    .local v8, e:Ljava/io/IOException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot export addressbook "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_1
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportContactIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportContactIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->contactIds:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->contactIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mTotalImportSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public importAddressBook(Ljava/io/File;)V
    .locals 19
    .parameter "importFile"

    .prologue
    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/local/AddressBookController;->prepareAccount()V

    .line 232
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 233
    .local v13, input:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 235
    .local v5, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    invoke-static {v13}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v15

    .line 236
    .local v15, syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    invoke-virtual {v15}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->hasVersion()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 237
    const-string v17, "1"

    invoke-virtual {v15}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 238
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 239
    new-instance v13, Ljava/io/FileInputStream;

    .end local v13           #input:Ljava/io/FileInputStream;
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 240
    .restart local v13       #input:Ljava/io/FileInputStream;
    invoke-static {v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v16

    .line 241
    .local v16, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    if-eqz v16, :cond_0

    .line 242
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v5

    .line 250
    .end local v16           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 307
    .end local v5           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_1
    :goto_1
    return-void

    .line 247
    .restart local v5       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v13       #input:Ljava/io/FileInputStream;
    .restart local v15       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/miui/milk/adapter/contact/AddressBookToAddressBook2NoSync;->readFromProtobuf(Ljava/io/File;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v5

    goto :goto_0

    .line 252
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportContactIndex:I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_7

    .line 255
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mTotalImportSize:I

    .line 260
    :goto_2
    const/4 v10, 0x0

    .line 261
    .local v10, groupCount:I
    const/4 v7, 0x0

    .line 262
    .local v7, contactCount:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v14, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 265
    .local v9, group:Lcom/miui/milk/model/ContactProtos2$Group;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_8

    .line 267
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v17

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/local/AddressBookController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 273
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 274
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 275
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/AddressBookController;->groupApplyBatch(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 297
    .end local v5           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v7           #contactCount:I
    .end local v9           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v10           #groupCount:I
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v15           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 298
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string v17, "AddressBookController"

    const-string v18, "Cannot import addressbook "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_1

    .line 257
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v13       #input:Ljava/io/FileInputStream;
    .restart local v15       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mTotalImportSize:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 300
    .end local v5           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_1
    move-exception v17

    move-object/from16 v8, v17

    .line 301
    .local v8, e:Ljava/io/IOException;
    const-string v17, "AddressBookController"

    const-string v18, "Cannot import addressbook "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_1

    .line 269
    .end local v8           #e:Ljava/io/IOException;
    .restart local v5       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v7       #contactCount:I
    .restart local v9       #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .restart local v10       #groupCount:I
    .restart local v13       #input:Ljava/io/FileInputStream;
    .restart local v14       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    .line 270
    .local v4, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v4

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/local/AddressBookController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 303
    .end local v4           #account:Landroid/accounts/Account;
    .end local v5           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v7           #contactCount:I
    .end local v9           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v10           #groupCount:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v15           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_2
    move-exception v17

    move-object/from16 v8, v17

    .line 304
    .local v8, e:Ljava/lang/Exception;
    const-string v17, "AddressBookController"

    const-string v18, "Cannot import addressbook "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_1

    .line 279
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v7       #contactCount:I
    .restart local v10       #groupCount:I
    .restart local v13       #input:Ljava/io/FileInputStream;
    .restart local v14       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_9
    :try_start_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 280
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 281
    .local v6, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_d

    .line 283
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v17

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/local/AddressBookController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportContactIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportContactIndex:I

    .line 291
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 292
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move v0, v7

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 293
    :cond_c
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/AddressBookController;->contactApplyBatch(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 286
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->contactAccounts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    .line 287
    .restart local v4       #account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/local/AddressBookController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportContactIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportContactIndex:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    return v0
.end method
