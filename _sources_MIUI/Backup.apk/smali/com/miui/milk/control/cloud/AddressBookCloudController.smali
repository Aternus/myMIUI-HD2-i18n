.class public Lcom/miui/milk/control/cloud/AddressBookCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "AddressBookCloudController.java"


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

.field private mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

.field private mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

.field private mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

.field private mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/GroupTrackerStore;Lcom/miui/milk/storage/ContactTrackerStore;)V
    .locals 2
    .parameter "context"
    .parameter "gVersionStore"
    .parameter "cVersionStore"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/miui/milk/source/contact2/GroupManager;

    invoke-direct {v0, p1, v1}, Lcom/miui/milk/source/contact2/GroupManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    .line 52
    new-instance v0, Lcom/miui/milk/source/contact2/ContactManager;

    invoke-direct {v0, p1, v1}, Lcom/miui/milk/source/contact2/ContactManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    .line 53
    new-instance v0, Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/contact2/GroupVersionTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/GroupTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    .line 54
    new-instance v0, Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-direct {v0, p1, p3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/ContactTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    .line 55
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareAccount()V

    .line 56
    return-void
.end method

.method private checkEmpty()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->resetStore()V

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->resetStore()V

    .line 1116
    :cond_1
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->closeStore()V

    .line 1125
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->closeStore()V

    .line 1126
    return-void
.end method

.method private contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .local p2, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p3, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x1

    const-string v10, "AddressBookCloudController"

    .line 1003
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1004
    :cond_0
    const-string v6, "AddressBookCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ops size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v6, p1}, Lcom/miui/milk/source/contact2/ContactManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 1007
    .local v5, res:[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_2

    .line 1009
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1010
    .local v2, key:Ljava/lang/Integer;
    const-string v6, "AddressBookCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "res length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v6, "AddressBookCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1013
    .local v3, luid:J
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1014
    .local v0, guid:Ljava/lang/Long;
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v11, v8}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 1017
    .end local v0           #guid:Ljava/lang/Long;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #luid:J
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1018
    .local v2, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v2, v11, v6}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 1023
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1024
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 1025
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .local p2, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p3, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x1

    const-string v10, "AddressBookCloudController"

    .line 978
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 979
    :cond_0
    const-string v6, "AddressBookCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ops size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v6, p1}, Lcom/miui/milk/source/contact2/GroupManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 982
    .local v5, res:[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_2

    .line 984
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 985
    .local v2, key:Ljava/lang/Integer;
    const-string v6, "AddressBookCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "res length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v6, "AddressBookCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 988
    .local v3, luid:J
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 989
    .local v0, guid:Ljava/lang/Long;
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v11, v8}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 992
    .end local v0           #guid:Ljava/lang/Long;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #luid:J
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 993
    .local v2, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v2, v11, v6}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 998
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 999
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 1000
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private importToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Z)V
    .locals 13
    .parameter "contact"
    .parameter "account"
    .parameter "needTrack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 829
    if-eqz p2, :cond_0

    .line 830
    const-string v10, "AddressBookCloudController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "import contact to account : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 834
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, guid:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v10, v2}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 838
    .local v7, luids:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v6, luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 840
    .local v5, luid:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12, p2}, Lcom/miui/milk/source/contact2/ContactManager;->exists(JLandroid/accounts/Account;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 841
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 842
    :cond_2
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/miui/milk/source/contact2/ContactManager;->exists(J)Z

    move-result v10

    if-nez v10, :cond_1

    .line 844
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v10, v5}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->removeItemKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 863
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #guid:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #luid:Ljava/lang/String;
    .end local v6           #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #luids:[Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 864
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v10, "AddressBookCloudController"

    const-string v11, "Cannot add contact "

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 867
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    throw v10

    .line 849
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #luids:[Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 850
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 851
    .restart local v5       #luid:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->update(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)V

    .line 852
    if-eqz p3, :cond_4

    .line 853
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 857
    .end local v5           #luid:Ljava/lang/String;
    .local v3, i$:I
    :cond_5
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v10, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->add(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 858
    .local v8, newLuid:J
    if-eqz p3, :cond_6

    .line 859
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12, v2}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 867
    .end local v3           #i$:I
    .end local v8           #newLuid:J
    :cond_6
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 869
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->openStore()V

    .line 1120
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->openStore()V

    .line 1121
    return-void
.end method

.method private prepareAccount()V
    .locals 11

    .prologue
    .line 1029
    iget-object v9, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1030
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 1032
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 1033
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1035
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

    .line 1036
    .local v7, sync:Landroid/content/SyncAdapterType;
    const-string v9, "com.android.contacts"

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1037
    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1041
    .end local v7           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    .line 1042
    move-object v3, v0

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v3, v5

    .line 1043
    .local v1, acct:Landroid/accounts/Account;
    iget-object v9, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->isAccountDefault(Landroid/accounts/Account;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1044
    iget-object v9, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1047
    .end local v1           #acct:Landroid/accounts/Account;
    :cond_3
    return-void
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20
    .parameter "contact"
    .parameter "account"
    .parameter "needTrack"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 874
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p5, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p6, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 875
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare import contact to account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 879
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v12

    .line 880
    .local v12, guid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object v4, v0

    invoke-virtual {v4, v12}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 883
    .local v19, luids:[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v18, luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v10, v19

    .local v10, arr$:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    aget-object v17, v10, v14

    .line 885
    .local v17, luid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, v4

    move-wide v1, v5

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/contact2/ContactManager;->exists(JLandroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 886
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 887
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/milk/source/contact2/ContactManager;->exists(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->removeItemKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 969
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #guid:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v17           #luid:Ljava/lang/String;
    .end local v18           #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #luids:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 970
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "AddressBookCloudController"

    const-string v5, "Cannot prepare import contact "

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    throw v4

    .line 895
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #guid:Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    .restart local v18       #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #luids:[Ljava/lang/String;
    :cond_3
    if-eqz v18, :cond_a

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 896
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 897
    .restart local v17       #luid:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 898
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 899
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_6

    .line 927
    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_4

    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2

    .line 903
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_8

    .line 906
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v13, v4, v5

    .local v13, i:I
    :goto_3
    if-lt v13, v15, :cond_7

    .line 907
    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 906
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 910
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 912
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 916
    .end local v13           #i:I
    :cond_8
    if-eqz p3, :cond_9

    .line 917
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_5

    .line 922
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too many update ops per contact of guid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 932
    .end local v15           #index:I
    .end local v17           #luid:Ljava/lang/String;
    .local v14, i$:I
    :cond_a
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 933
    .restart local v15       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 934
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_d

    .line 964
    :cond_b
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_c

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 973
    .end local v14           #i$:I
    .end local v15           #index:I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 975
    return-void

    .line 938
    .restart local v14       #i$:I
    .restart local v15       #index:I
    :cond_d
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_f

    .line 941
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v13, v4, v5

    .restart local v13       #i:I
    :goto_4
    if-lt v13, v15, :cond_e

    .line 942
    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 941
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 945
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 947
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 953
    .end local v13           #i:I
    :cond_f
    if-eqz p3, :cond_10

    .line 954
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p5

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    :cond_10
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_b

    .line 959
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too many add ops per contact of guid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 21
    .parameter "group"
    .parameter "account"
    .parameter "needTrack"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            "Landroid/accounts/Account;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 755
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p5, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p6, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 756
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare import group to account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 760
    :try_start_0
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare Import Group guid/title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v13

    .line 762
    .local v13, guid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 765
    .local v19, luids:[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v18, luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v10, v19

    .local v10, arr$:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    aget-object v17, v10, v14

    .line 767
    .local v17, luid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, v4

    move-wide v1, v5

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/contact2/GroupManager;->exists(JLandroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 768
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 769
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/milk/source/contact2/GroupManager;->exists(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->removeItemKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 819
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v13           #guid:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v17           #luid:Ljava/lang/String;
    .end local v18           #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #luids:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 820
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "AddressBookCloudController"

    const-string v5, "Cannot prepare import group "

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    throw v4

    .line 776
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v13       #guid:Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    .restart local v18       #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #luids:[Ljava/lang/String;
    :cond_3
    if-eqz v18, :cond_7

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 777
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 778
    .restart local v17       #luid:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 779
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/miui/milk/source/contact2/GroupManager;->prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 780
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_6

    .line 790
    :cond_5
    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_4

    .line 791
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2

    .line 784
    :cond_6
    if-eqz p3, :cond_5

    .line 785
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 795
    .end local v15           #index:I
    .end local v17           #luid:Ljava/lang/String;
    .local v14, i$:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v20

    .line 796
    .local v20, title:Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/source/contact2/GroupManager;->loadByTitle(Ljava/lang/String;Landroid/accounts/Account;)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v12

    .line 798
    .local v12, existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    if-nez v12, :cond_9

    .line 799
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 800
    .restart local v15       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/contact2/GroupManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 801
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_a

    .line 812
    :cond_8
    :goto_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_9

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 823
    .end local v12           #existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v14           #i$:I
    .end local v15           #index:I
    .end local v20           #title:Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 825
    return-void

    .line 806
    .restart local v12       #existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    .restart local v14       #i$:I
    .restart local v15       #index:I
    .restart local v20       #title:Ljava/lang/String;
    :cond_a
    if-eqz p3, :cond_8

    .line 807
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p5

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4
.end method

.method private processAfterSave(Lcom/miui/milk/model/ContactProtos2$AddressBook;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 10
    .parameter "addressBook"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v6, "someting error from server, contact without guid"

    const-string v6, "0"

    const-string v6, "/"

    const-string v9, "AddressBookCloudController"

    .line 1052
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 1053
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 1055
    .local v2, group:Lcom/miui/milk/model/ContactProtos2$Group;
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v5

    .line 1056
    .local v5, luid:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v3

    .line 1058
    .local v3, guid:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1059
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, group without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, group without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1071
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AddressBookCloudController"

    const-string v6, "Cannot process after save group "

    invoke-static {v9, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 1073
    throw v1

    .line 1062
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #guid:Ljava/lang/String;
    .restart local v5       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1063
    :cond_1
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, group without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, group without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1066
    :cond_2
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v3}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1067
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save group guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1077
    .end local v2           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 1079
    .local v0, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :try_start_2
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuid()Ljava/lang/String;

    move-result-object v5

    .line 1080
    .restart local v5       #luid:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v3

    .line 1081
    .restart local v3       #guid:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1082
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, contact without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, contact without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1093
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 1094
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "AddressBookCloudController"

    const-string v6, "Cannot process after save contact "

    invoke-static {v9, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 1096
    throw v1

    .line 1085
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #guid:Ljava/lang/String;
    .restart local v5       #luid:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {v3}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1086
    :cond_5
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, contact without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, contact without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1089
    :cond_6
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1090
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save contact guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1101
    .end local v0           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 1102
    return-void
.end method

.method private saveAddressBookPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 26
    .parameter "callback"
    .parameter "start"
    .parameter "totalCount"
    .parameter "sharedPref"
    .parameter "batchCount"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 267
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v4

    .line 268
    .local v4, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 269
    const/4 v7, 0x0

    .line 271
    .local v7, contactCount:I
    if-nez p2, :cond_1

    .line 272
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "0"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_1

    .line 273
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 282
    move v0, v12

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 285
    .local v8, contactId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v6

    .line 286
    .local v6, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v6, :cond_2

    .line 287
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v5

    .line 288
    .local v5, cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v6

    .line 289
    invoke-virtual {v4, v6}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 290
    add-int/lit8 v7, v7, 0x1

    .line 291
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v7

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_2

    .line 296
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 300
    .end local v5           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v6           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :catch_0
    move-exception v22

    move-object/from16 v9, v22

    .line 301
    .local v9, e:Ljava/lang/Exception;
    const-string v22, "AddressBookCloudController"

    const-string v23, "Cannot load contact "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v8           #contactId:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 307
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 308
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v22, v22, v23

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 310
    move v0, v12

    move/from16 v1, p2

    if-lt v0, v1, :cond_5

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v13, v12, v22

    .line 312
    .local v13, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 314
    .restart local v8       #contactId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v6

    .line 315
    .restart local v6       #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v6, :cond_5

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 317
    .local v11, guid:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v5

    .line 318
    .restart local v5       #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    if-eqz v11, :cond_4

    .line 319
    invoke-virtual {v5, v11}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 321
    :cond_4
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v6

    .line 322
    invoke-virtual {v4, v6}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 323
    add-int/lit8 v7, v7, 0x1

    .line 324
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v7

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_5

    .line 329
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 333
    .end local v5           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v6           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v11           #guid:Ljava/lang/String;
    :catch_1
    move-exception v22

    move-object/from16 v9, v22

    .line 334
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v22, "AddressBookCloudController"

    const-string v23, "Cannot load contact "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v8           #contactId:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #index:I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 341
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v12, v22, v23

    .line 342
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v22, v22, v23

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 345
    move v0, v12

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v22, v12, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v13, v22, v23

    .line 347
    .restart local v13       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 349
    .restart local v8       #contactId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v6

    .line 350
    .restart local v6       #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v6, :cond_8

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 352
    .restart local v11       #guid:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v5

    .line 353
    .restart local v5       #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    if-eqz v11, :cond_7

    .line 354
    invoke-virtual {v5, v11}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 356
    :cond_7
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v6

    .line 357
    invoke-virtual {v4, v6}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 358
    add-int/lit8 v7, v7, 0x1

    .line 359
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v7

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_8

    .line 364
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 368
    .end local v5           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v6           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v11           #guid:Ljava/lang/String;
    :catch_2
    move-exception v22

    move-object/from16 v9, v22

    .line 369
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v22, "AddressBookCloudController"

    const-string v23, "Cannot load contact "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v8           #contactId:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #index:I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 374
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 376
    const-string v22, "AddressBookCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deviceId : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v22, "AddressBookCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IMSI : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->getContactList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_a

    .line 379
    const-string v22, "AddressBookCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Export Contact Counts : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    :cond_a
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v19

    .line 383
    .local v19, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 386
    if-eqz v19, :cond_0

    .line 387
    const/16 v16, 0x0

    .line 389
    .local v16, response:Lorg/apache/http/HttpResponse;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v14

    .line 391
    .local v14, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v7

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_b

    .line 395
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 432
    .end local v14           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v22

    move-object/from16 v9, v22

    .line 433
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v22, "AddressBookCloudController"

    const-string v23, "Cannot send contact "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 435
    throw v9

    .line 399
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v14       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 400
    const-string v22, "AddressBookCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Export Contact Counts : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 403
    if-eqz v16, :cond_e

    .line 404
    const-string v22, "M_WATERMARK"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 405
    .local v21, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v20, 0x0

    .line 406
    .local v20, waterMark:Ljava/lang/String;
    if-eqz v21, :cond_c

    .line 407
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 410
    :cond_c
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 411
    .local v10, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v18

    .line 412
    .local v18, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v15

    .line 413
    .local v15, respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v15, :cond_d

    .line 414
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->processAfterSave(Lcom/miui/milk/model/ContactProtos2$AddressBook;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 417
    :cond_d
    if-eqz v20, :cond_e

    .line 418
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 419
    .local v17, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v22, "watermark_contacts"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    const-string v22, "AddressBookCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "get waterMark : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v17           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v18           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v20           #waterMark:Ljava/lang/String;
    .end local v21           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_e
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v7

    add-int/lit8 v24, v24, 0xa

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_0

    .line 429
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0
.end method

.method private saveGroupBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    .locals 25
    .parameter "callback"
    .parameter "totalCount"
    .parameter "sharedPref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 135
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v4

    .line 136
    .local v4, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 137
    const/4 v9, 0x0

    .line 140
    .local v9, groupCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 142
    .local v10, groupId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v21, v0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v8

    .line 143
    .local v8, group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$Group;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v7

    .line 145
    .local v7, gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v8

    .line 146
    invoke-virtual {v4, v8}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 147
    add-int/lit8 v9, v9, 0x1

    .line 148
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 149
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v7           #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .end local v8           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v10           #groupId:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 153
    .restart local v10       #groupId:Ljava/lang/String;
    :catch_0
    move-exception v21

    move-object/from16 v5, v21

    .line 154
    .local v5, e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot load group "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 158
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #groupId:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 160
    .restart local v10       #groupId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v21, v0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v8

    .line 161
    .restart local v8       #group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v8, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, guid:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$Group;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v7

    .line 164
    .restart local v7       #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    if-eqz v11, :cond_4

    .line 165
    invoke-virtual {v7, v11}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 167
    :cond_4
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v8

    .line 168
    invoke-virtual {v4, v8}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 169
    add-int/lit8 v9, v9, 0x1

    .line 170
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 171
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 175
    .end local v7           #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .end local v8           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v11           #guid:Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object/from16 v5, v21

    .line 176
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot load group "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 180
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #groupId:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 182
    .restart local v10       #groupId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v21, v0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v8

    .line 183
    .restart local v8       #group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v8, :cond_6

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 185
    .restart local v11       #guid:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$Group;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v7

    .line 186
    .restart local v7       #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    if-eqz v11, :cond_7

    .line 187
    invoke-virtual {v7, v11}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 189
    :cond_7
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v8

    .line 190
    invoke-virtual {v4, v8}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 191
    add-int/lit8 v9, v9, 0x1

    .line 192
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_6

    .line 193
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 197
    .end local v7           #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .end local v8           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v11           #guid:Ljava/lang/String;
    :catch_2
    move-exception v21

    move-object/from16 v5, v21

    .line 198
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot load group "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 202
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #groupId:Ljava/lang/String;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 204
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deviceId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMSI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->getGroupList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_9

    .line 207
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Group Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 210
    :cond_9
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v18

    .line 211
    .local v18, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 214
    if-eqz v18, :cond_1

    .line 215
    const/4 v15, 0x0

    .line 217
    .local v15, response:Lorg/apache/http/HttpResponse;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v13

    .line 219
    .local v13, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_a

    .line 220
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 254
    .end local v13           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v21

    move-object/from16 v5, v21

    .line 255
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot send contact "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 257
    throw v5

    .line 224
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v13       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 225
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Group Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 228
    if-eqz v15, :cond_d

    .line 229
    const-string v21, "M_WATERMARK"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v20

    .line 230
    .local v20, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v19, 0x0

    .line 231
    .local v19, waterMark:Ljava/lang/String;
    if-eqz v20, :cond_b

    .line 232
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 235
    :cond_b
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 236
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v17

    .line 237
    .local v17, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v14

    .line 238
    .local v14, respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v14, :cond_c

    .line 239
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->processAfterSave(Lcom/miui/milk/model/ContactProtos2$AddressBook;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 242
    :cond_c
    if-eqz v19, :cond_d

    .line 243
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 244
    .local v16, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "watermark_contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "get waterMark : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v16           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v19           #waterMark:Ljava/lang/String;
    .end local v20           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_d
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 251
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkEmpty()V

    .line 61
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->prepareChangeItems()V

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public clearPrepared()V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->clearPrepared()V

    .line 1131
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->clearPrepared()V

    .line 1132
    return-void
.end method

.method public getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 25
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 567
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->isPrepared()Z

    move-result v22

    if-nez v22, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->prepareChangeItems()V

    .line 576
    :cond_0
    const-string v22, "AddressBookCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deviceId : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v22, "AddressBookCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IMSI : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v19, 0x0

    .line 580
    .local v19, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v14

    .line 582
    .local v14, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v20

    .line 584
    .local v20, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v16

    .line 587
    .local v16, reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v11

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 589
    .local v13, luid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 590
    .local v10, guid:Ljava/lang/String;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v5

    .line 591
    .local v5, contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-virtual {v5, v10}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 592
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 587
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 568
    .end local v5           #contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v10           #guid:Ljava/lang/String;
    .end local v11           #i:I
    .end local v13           #luid:Ljava/lang/String;
    .end local v14           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .end local v19           #response:Lorg/apache/http/HttpResponse;
    .end local v20           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    :catch_0
    move-exception v7

    .line 569
    .local v7, e1:Ljava/lang/Exception;
    const/16 v22, 0x0

    .line 649
    .end local v7           #e1:Ljava/lang/Exception;
    :goto_1
    return-object v22

    .line 594
    .restart local v11       #i:I
    .restart local v14       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .restart local v19       #response:Lorg/apache/http/HttpResponse;
    .restart local v20       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v15

    .line 595
    .local v15, reqAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 596
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v17

    .line 599
    .local v17, reqSyc:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v18

    .line 601
    .local v18, resAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-virtual {v15}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_4

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 605
    if-eqz v19, :cond_3

    .line 606
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 607
    .local v8, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v21

    .line 609
    .local v21, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v4

    .line 610
    .local v4, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v4, :cond_3

    .line 611
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 612
    .local v5, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 645
    .end local v4           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v5           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #reqAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v16           #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .end local v17           #reqSyc:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v18           #resAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .end local v20           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v21           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v22

    move-object/from16 v6, v22

    .line 646
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "AddressBookCloudController"

    const-string v23, "Cannot read contact "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 649
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 617
    .restart local v11       #i:I
    .restart local v14       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15       #reqAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v16       #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .restart local v17       #reqSyc:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v18       #resAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .restart local v20       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    :cond_3
    const/16 v19, 0x0

    .line 621
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncFindlostUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 623
    if-eqz v19, :cond_6

    .line 624
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 625
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v21

    .line 627
    .restart local v21       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v4

    .line 628
    .restart local v4       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v4, :cond_6

    .line 629
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 630
    .local v9, group:Lcom/miui/milk/model/ContactProtos2$Group;
    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    goto :goto_3

    .line 632
    .end local v9           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    :cond_5
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 633
    .restart local v5       #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    goto :goto_4

    .line 640
    .end local v4           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v5           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v21           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 641
    .restart local v4       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v4, :cond_2

    move-object/from16 v22, v4

    .line 642
    goto/16 :goto_1
.end method

.method public importFindlostContacts(Lcom/miui/milk/control/callback/AsyncTaskCallback;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/control/callback/AsyncTaskCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/ContactProtos2$Contact;>;"
    if-nez p2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    const/4 v7, 0x0

    .line 657
    .local v7, totalCount:I
    const/4 v3, 0x0

    .line 658
    .local v3, contactCount:I
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 660
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 661
    .local v2, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v1

    .line 662
    .local v1, cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 663
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v2

    .line 665
    iget-object v8, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 666
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v2, v8, v9}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->importToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Z)V

    .line 672
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 673
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    mul-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "100"

    aput-object v10, v8, v9

    invoke-interface {p1, v8}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 677
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    .end local v1           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v2           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 696
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "AddressBookCloudController"

    const-string v9, "Cannot import contact "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "EXCEPTION"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "10000"

    aput-object v10, v8, v9

    invoke-interface {p1, v8}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto/16 :goto_0

    .line 668
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .restart local v2       #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 669
    .local v0, account:Landroid/accounts/Account;
    const/4 v8, 0x0

    invoke-direct {p0, v2, v0, v8}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->importToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Z)V

    goto :goto_1

    .line 682
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v2           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_5
    const-string v8, "AddressBookCloudController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Import Contact Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "100"

    aput-object v10, v8, v9

    invoke-interface {p1, v8}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 686
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_0

    .line 689
    :cond_6
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "SUCCESS"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {p1, v8}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 692
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 35
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 443
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 445
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkEmpty()V

    .line 452
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v27, 0x0

    .line 456
    .local v27, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v26

    .line 458
    .local v26, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/miui/milk/source/contact2/ContactManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 459
    const-string v4, "restore_watermark_contacts"

    const-string v5, ""

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 460
    .local v32, waterMark:Ljava/lang/String;
    if-eqz v32, :cond_0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 461
    const-string v4, "M_WATERMARK_ORIGINAL"

    move-object/from16 v0, v26

    move-object v1, v4

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send waterMark : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v32           #waterMark:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v29

    .line 466
    .local v29, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v4

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v27

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 470
    if-eqz v27, :cond_5

    .line 472
    const-string v4, "M_WATERMARK"

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v33

    .line 473
    .local v33, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v34, 0x0

    .line 474
    .local v34, waterMarkNew:Ljava/lang/String;
    if-eqz v33, :cond_1

    .line 475
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v34

    .line 478
    :cond_1
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    .line 479
    .local v22, entity:Lorg/apache/http/HttpEntity;
    invoke-static/range {v22 .. v22}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v30

    .line 481
    .local v30, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v30 .. v30}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v18

    .line 482
    .local v18, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v18, :cond_f

    .line 484
    const/16 v31, 0x0

    .line 485
    .local v31, totalCount:I
    const/16 v23, 0x0

    .line 486
    .local v23, groupCount:I
    const/16 v19, 0x0

    .line 488
    .local v19, contactCount:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 490
    .local v9, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v10, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 493
    .local v5, group:Lcom/miui/milk/model/ContactProtos2$Group;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 494
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 500
    :cond_3
    add-int/lit8 v23, v23, 0x1

    .line 502
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v23

    move v1, v4

    if-eq v0, v1, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_2

    .line 503
    .end local v5           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 558
    .end local v8           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v9           #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v10           #trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v19           #contactCount:I
    .end local v22           #entity:Lorg/apache/http/HttpEntity;
    .end local v23           #groupCount:I
    .end local v26           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v30           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v31           #totalCount:I
    .end local v33           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v34           #waterMarkNew:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object/from16 v20, v4

    .line 559
    .local v20, e:Ljava/lang/Exception;
    const-string v4, "AddressBookCloudController"

    const-string v5, "Cannot read contact "

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 563
    .end local v20           #e:Ljava/lang/Exception;
    .end local v27           #response:Lorg/apache/http/HttpResponse;
    :cond_5
    :goto_1
    return-void

    .line 446
    :catch_1
    move-exception v21

    .line 447
    .local v21, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 496
    .end local v21           #e1:Ljava/lang/Exception;
    .restart local v5       #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .restart local v8       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v9       #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v10       #trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v19       #contactCount:I
    .restart local v22       #entity:Lorg/apache/http/HttpEntity;
    .restart local v23       #groupCount:I
    .restart local v26       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27       #response:Lorg/apache/http/HttpResponse;
    .restart local v29       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v30       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v31       #totalCount:I
    .restart local v33       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v34       #waterMarkNew:Ljava/lang/String;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 497
    .local v6, account:Landroid/accounts/Account;
    const/4 v7, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2

    .line 509
    .end local v5           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v6           #account:Landroid/accounts/Account;
    .end local v25           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 510
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 511
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 512
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v31

    .line 514
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_8
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 515
    .local v12, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 516
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v11, p0

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 522
    :cond_9
    add-int/lit8 v19, v19, 0x1

    .line 523
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    mul-int/lit8 v6, v19, 0x64

    div-int v6, v6, v31

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "100"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 527
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 518
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactAccounts:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 519
    .restart local v6       #account:Landroid/accounts/Account;
    const/4 v14, 0x1

    move-object/from16 v11, p0

    move-object v13, v6

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_4

    .line 532
    .end local v6           #account:Landroid/accounts/Account;
    .end local v25           #i$:Ljava/util/Iterator;
    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_c

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_8

    .line 533
    :cond_c
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 538
    .end local v12           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :cond_d
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Import Group Counts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Import Contact Counts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "100"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_e

    .line 541
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 544
    :cond_e
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "SUCCESS"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f

    .line 545
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 550
    .end local v8           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v9           #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v10           #trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #contactCount:I
    .end local v23           #groupCount:I
    .end local v31           #totalCount:I
    :cond_f
    if-eqz v34, :cond_5

    .line 551
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    .line 552
    .local v28, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "restore_watermark_contacts"

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new waterMark : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 13
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 74
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkEmpty()V

    .line 76
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->prepareChangeItems()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->prepareChangeItems()V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, c_new:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, c_update:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, c_delete:Ljava/lang/String;
    const/4 v3, 0x0

    .line 88
    .local v3, totalCount:I
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 89
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 90
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 92
    div-int/lit16 v7, v3, 0xfa

    .line 93
    .local v7, batches:I
    mul-int/lit16 v0, v7, 0xfa

    if-le v3, v0, :cond_2

    .line 94
    add-int/lit8 v7, v7, 0x1

    .line 97
    :cond_2
    mul-int/lit8 v0, v7, 0xa

    add-int v6, v3, v0

    .line 98
    .local v6, totalTime:I
    const/4 v5, 0x0

    .line 100
    .local v5, batchCount:I
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-eqz v0, :cond_4

    .line 129
    :cond_3
    :goto_0
    return-void

    .line 101
    :cond_4
    invoke-direct {p0, p1, v3, p2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->saveGroupBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 108
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->saveAddressBookPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    add-int/lit16 v2, v2, 0xfa

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 102
    .end local v2           #i:I
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 103
    .local v12, e1:Ljava/lang/Exception;
    const-string v0, "AddressBookCloudController"

    const-string v1, "Cannot save group batch "

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    .end local v12           #e1:Ljava/lang/Exception;
    .restart local v2       #i:I
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 111
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "AddressBookCloudController"

    const-string v1, "Cannot save addressbook batch "

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v11           #e:Ljava/lang/Exception;
    :cond_5
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_3

    .line 117
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #i:I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "100"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_0

    .line 121
    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const/4 v1, 0x2

    aput-object v10, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_0

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->removeDeletedItemKeys()V

    .line 128
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->removeDeletedItemKeys()V

    goto/16 :goto_0
.end method
