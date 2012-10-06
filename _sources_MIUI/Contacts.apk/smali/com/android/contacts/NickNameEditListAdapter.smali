.class public Lcom/android/contacts/NickNameEditListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NickNameEditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/NickNameDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/android/contacts/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/NickNameEditListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/NickNameDataItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 61
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/NickNameDataItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/contacts/NickNameEditListAdapter;->getItem(I)Lcom/android/contacts/NickNameDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNickNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditListAdapter;->getCount()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 66
    .local v1, nickNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/NickNameDataItem;

    invoke-virtual {v2}, Lcom/android/contacts/NickNameDataItem;->getNickname()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v1
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditListAdapter;->getCount()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 74
    .local v1, numbers:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/NickNameDataItem;

    invoke-virtual {v2}, Lcom/android/contacts/NickNameDataItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    move-object v2, v0

    .line 122
    .local v2, view:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;
    if-nez v2, :cond_0

    .line 123
    new-instance v2, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    .end local v2           #view:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;
    iget-object v3, p0, Lcom/android/contacts/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;-><init>(Lcom/android/contacts/NickNameEditListAdapter;Landroid/content/Context;)V

    .line 126
    .restart local v2       #view:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/NickNameEditListAdapter;->getItem(I)Lcom/android/contacts/NickNameDataItem;

    move-result-object v1

    .line 127
    .local v1, item:Lcom/android/contacts/NickNameDataItem;
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Lcom/android/contacts/NickNameDataItem;->load()V

    .line 129
    invoke-virtual {v2, p1}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->setIndex(I)V

    .line 130
    invoke-virtual {v2, v1}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->bind(Lcom/android/contacts/NickNameDataItem;)V

    .line 133
    :cond_1
    return-object v2
.end method

.method public parseFromPickIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 39
    const-string v2, "numbers"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, numbers:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/NickNameDataItem;

    iget-object v4, p0, Lcom/android/contacts/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    aget-object v5, v1, v0

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/NickNameDataItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditListAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.method public saveNickName()I
    .locals 7

    .prologue
    .line 93
    const/4 v4, 0x1

    .line 95
    .local v4, result:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/NickNameDataItem;

    .line 97
    .local v2, item:Lcom/android/contacts/NickNameDataItem;
    invoke-virtual {v2}, Lcom/android/contacts/NickNameDataItem;->save()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 100
    .end local v2           #item:Lcom/android/contacts/NickNameDataItem;
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/android/contacts/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Nickname;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 103
    const/4 v4, 0x2

    .line 104
    iget-object v5, p0, Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/NickNameDataItem;

    .line 105
    .restart local v2       #item:Lcom/android/contacts/NickNameDataItem;
    invoke-virtual {v2}, Lcom/android/contacts/NickNameDataItem;->getEditingNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/NickNameDataItem;->setNickname(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 108
    .end local v2           #item:Lcom/android/contacts/NickNameDataItem;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    const/4 v4, 0x3

    .line 110
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return v4

    .line 111
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 112
    .local v0, e:Landroid/content/OperationApplicationException;
    const/4 v4, 0x3

    .line 113
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2
.end method
