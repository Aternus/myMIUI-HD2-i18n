.class Lcom/android/mms/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/data/Conversation$Cache;


# instance fields
.field private final mRecipientsConversationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/ContactList;",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadIdConversationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 821
    new-instance v0, Lcom/android/mms/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mThreadIdConversationMap:Ljava/util/HashMap;

    .line 825
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mRecipientsConversationMap:Ljava/util/HashMap;

    .line 829
    return-void
.end method

.method static get(J)Lcom/android/mms/data/Conversation;
    .locals 4
    .parameter "threadId"

    .prologue
    .line 836
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 837
    :try_start_0
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mThreadIdConversationMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 842
    .local v0, c:Lcom/android/mms/data/Conversation;
    monitor-exit v1

    return-object v0

    .line 843
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 3
    .parameter "list"

    .prologue
    .line 851
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 852
    :try_start_0
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mRecipientsConversationMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 856
    .local v0, c:Lcom/android/mms/data/Conversation;
    monitor-exit v1

    return-object v0

    .line 857
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance()Lcom/android/mms/data/Conversation$Cache;
    .locals 1

    .prologue
    .line 822
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p0, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v4

    .line 927
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v3, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mThreadIdConversationMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 929
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 930
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 936
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 933
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 934
    .local v2, threadId:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    goto :goto_1

    .line 936
    .end local v2           #threadId:Ljava/lang/Long;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    return-void
.end method

.method static put(Lcom/android/mms/data/Conversation;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 866
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 873
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 874
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot put a conversation with threadId = 0 into cache"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 876
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mThreadIdConversationMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 877
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 878
    const-string v2, "cache already contains conversation for thread %d: %s -> %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    :cond_1
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mRecipientsConversationMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 882
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 883
    const-string v2, "cache already contains conversation for recipeints %s: %s -> %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    :cond_2
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mThreadIdConversationMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mRecipientsConversationMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const/4 v2, 0x1

    #setter for: Lcom/android/mms/data/Conversation;->mInCache:Z
    invoke-static {p0, v2}, Lcom/android/mms/data/Conversation;->access$002(Lcom/android/mms/data/Conversation;Z)Z

    .line 889
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    return-void
.end method

.method static remove(J)V
    .locals 6
    .parameter "threadId"

    .prologue
    .line 896
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 897
    :try_start_0
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mThreadIdConversationMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 898
    .local v0, c:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_1

    .line 899
    const-string v2, "Failed removing thread %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    :cond_0
    :goto_0
    monitor-exit v1

    .line 910
    return-void

    .line 901
    :cond_1
    const/4 v2, 0x0

    #setter for: Lcom/android/mms/data/Conversation;->mInCache:Z
    invoke-static {v0, v2}, Lcom/android/mms/data/Conversation;->access$002(Lcom/android/mms/data/Conversation;Z)Z

    .line 902
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mRecipientsConversationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 903
    const-string v2, "Failed removing thread %d from mRecipientsConversationMap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    :cond_2
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mThreadIdConversationMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 906
    const-string v2, "Failed removing thread %d from mThreadIdConversationMap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 909
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
