.class public Lcom/android/contacts/model/Sources;
.super Landroid/content/BroadcastReceiver;
.source "Sources.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static sInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/contacts/model/Sources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mApplicationContext:Landroid/content/Context;

.field private mContext:Landroid/content/Context;

.field private mFallbackSource:Lcom/android/contacts/model/ContactsSource;

.field private mKnownPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/ContactsSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/model/Sources;->sInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    iput-object v4, p0, Lcom/android/contacts/model/Sources;->mFallbackSource:Lcom/android/contacts/model/ContactsSource;

    .line 60
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    .line 61
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/Sources;->mKnownPackages:Ljava/util/HashSet;

    .line 83
    iput-object p1, p0, Lcom/android/contacts/model/Sources;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/Sources;->mApplicationContext:Landroid/content/Context;

    .line 85
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/Sources;->mAccountManager:Landroid/accounts/AccountManager;

    .line 88
    new-instance v2, Lcom/android/contacts/model/FallbackSource;

    invoke-direct {v2}, Lcom/android/contacts/model/FallbackSource;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/model/Sources;->mFallbackSource:Lcom/android/contacts/model/ContactsSource;

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/model/Sources;->queryAccounts()V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v4, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 109
    return-void
.end method

.method public varargs constructor <init>([Lcom/android/contacts/model/ContactsSource;)V
    .locals 5
    .parameter "sources"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/model/Sources;->mFallbackSource:Lcom/android/contacts/model/ContactsSource;

    .line 60
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    .line 61
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/model/Sources;->mKnownPackages:Ljava/util/HashSet;

    .line 113
    move-object v0, p1

    .local v0, arr$:[Lcom/android/contacts/model/ContactsSource;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 114
    .local v3, source:Lcom/android/contacts/model/ContactsSource;
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/Sources;->addSource(Lcom/android/contacts/model/ContactsSource;)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v3           #source:Lcom/android/contacts/model/ContactsSource;
    :cond_0
    return-void
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 238
    move-object v0, p0

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 239
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    return-object v1

    .line 238
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Couldn\'t find authenticator for specific account type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    const-class v2, Lcom/android/contacts/model/Sources;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/contacts/model/Sources;->sInstance:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 72
    .local v0, sources:Lcom/android/contacts/model/Sources;
    :goto_0
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/contacts/model/Sources;

    .end local v0           #sources:Lcom/android/contacts/model/Sources;
    invoke-direct {v0, p0}, Lcom/android/contacts/model/Sources;-><init>(Landroid/content/Context;)V

    .line 74
    .restart local v0       #sources:Lcom/android/contacts/model/Sources;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/contacts/model/Sources;->sInstance:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit v2

    return-object v0

    .line 71
    .end local v0           #sources:Lcom/android/contacts/model/Sources;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/contacts/model/Sources;->sInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/Sources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected addSource(Lcom/android/contacts/model/ContactsSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/contacts/model/Sources;->mKnownPackages:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/contacts/model/ContactsSource;->resPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public getAccounts(Z)Ljava/util/ArrayList;
    .locals 13
    .parameter "writableOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 251
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mAccountManager:Landroid/accounts/AccountManager;

    .line 252
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 253
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 255
    .local v8, matching:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v0, v3, v5

    .line 257
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v9

    .line 259
    .local v9, source:Lcom/android/contacts/model/ContactsSource;
    if-eqz v9, :cond_2

    move v4, v11

    .line 260
    .local v4, hasContacts:Z
    :goto_1
    if-eqz p1, :cond_0

    if-eqz p1, :cond_3

    iget-boolean v10, v9, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-nez v10, :cond_3

    :cond_0
    move v7, v11

    .line 261
    .local v7, matchesWritable:Z
    :goto_2
    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    .line 262
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v4           #hasContacts:Z
    .end local v7           #matchesWritable:Z
    :cond_2
    move v4, v12

    .line 259
    goto :goto_1

    .restart local v4       #hasContacts:Z
    :cond_3
    move v7, v12

    .line 260
    goto :goto_2

    .line 265
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #hasContacts:Z
    .end local v9           #source:Lcom/android/contacts/model/ContactsSource;
    :cond_4
    return-object v8
.end method

.method public getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;
    .locals 2
    .parameter "accountType"
    .parameter "inflateLevel"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/ContactsSource;

    .line 305
    .local v0, source:Lcom/android/contacts/model/ContactsSource;
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/Sources;->mFallbackSource:Lcom/android/contacts/model/ContactsSource;

    .line 307
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/contacts/model/ContactsSource;->isInflated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :goto_0
    return-object v0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/Sources;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/contacts/model/ContactsSource;->ensureInflated(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 5
    .parameter "accountType"
    .parameter "mimeType"
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 280
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ContactsSource;

    .line 281
    .local v1, source:Lcom/android/contacts/model/ContactsSource;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1, p3, p4}, Lcom/android/contacts/model/ContactsSource;->ensureInflated(Landroid/content/Context;I)V

    .line 283
    invoke-virtual {v1, p2}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 286
    :cond_0
    if-nez v0, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mFallbackSource:Lcom/android/contacts/model/ContactsSource;

    invoke-virtual {v2, p3, p4}, Lcom/android/contacts/model/ContactsSource;->ensureInflated(Landroid/content/Context;I)V

    .line 289
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mFallbackSource:Lcom/android/contacts/model/ContactsSource;

    invoke-virtual {v2, p2}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 292
    :cond_1
    if-nez v0, :cond_2

    .line 293
    const-string v2, "Sources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    return-object v0
.end method

.method protected invalidateAllCache()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mFallbackSource:Lcom/android/contacts/model/ContactsSource;

    invoke-virtual {v2}, Lcom/android/contacts/model/ContactsSource;->invalidateCache()V

    .line 170
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ContactsSource;

    .line 171
    .local v1, source:Lcom/android/contacts/model/ContactsSource;
    invoke-virtual {v1}, Lcom/android/contacts/model/ContactsSource;->invalidateCache()V

    goto :goto_0

    .line 173
    .end local v1           #source:Lcom/android/contacts/model/ContactsSource;
    :cond_0
    return-void
.end method

.method protected invalidateCache(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ContactsSource;

    .line 161
    .local v1, source:Lcom/android/contacts/model/ContactsSource;
    iget-object v2, v1, Lcom/android/contacts/model/ContactsSource;->resPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/android/contacts/model/ContactsSource;->invalidateCache()V

    goto :goto_0

    .line 166
    .end local v1           #source:Lcom/android/contacts/model/ContactsSource;
    :cond_1
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/model/Sources;->queryAccounts()V

    .line 179
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 133
    :cond_0
    const/4 v6, 0x0

    .line 135
    .local v6, pkgList:[Ljava/lang/String;
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 137
    :cond_1
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 142
    :goto_0
    if-eqz v6, :cond_5

    .line 143
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v1, v2

    .line 144
    .local v5, packageName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/model/Sources;->mKnownPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 145
    .local v3, knownPackage:Z
    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {p0, v5}, Lcom/android/contacts/model/Sources;->invalidateCache(Ljava/lang/String;)V

    .line 143
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #knownPackage:Z
    .end local v4           #len$:I
    .end local v5           #packageName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 140
    .restart local v5       #packageName:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    .end local v6           #pkgList:[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object v5, v6, v7

    .restart local v6       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .line 150
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #knownPackage:Z
    .restart local v4       #len$:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/model/Sources;->queryAccounts()V

    goto :goto_2

    .line 154
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #knownPackage:Z
    .end local v4           #len$:I
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #pkgList:[Ljava/lang/String;
    :cond_4
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/model/Sources;->invalidateAllCache()V

    .line 157
    :cond_5
    return-void
.end method

.method protected declared-synchronized queryAccounts()V
    .locals 15

    .prologue
    const-string v12, "Sources"

    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Lcom/android/contacts/model/Sources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 187
    iget-object v12, p0, Lcom/android/contacts/model/Sources;->mKnownPackages:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    .line 189
    iget-object v1, p0, Lcom/android/contacts/model/Sources;->mAccountManager:Landroid/accounts/AccountManager;

    .line 190
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 193
    .local v5, cs:Landroid/content/IContentService;
    :try_start_1
    invoke-interface {v5}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v11

    .line 194
    .local v11, syncs:[Landroid/content/SyncAdapterType;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    .line 196
    .local v4, auths:[Landroid/accounts/AuthenticatorDescription;
    move-object v2, v11

    .local v2, arr$:[Landroid/content/SyncAdapterType;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v10, v2, v7

    .line 197
    .local v10, sync:Landroid/content/SyncAdapterType;
    const-string v12, "com.android.contacts"

    iget-object v13, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 196
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 205
    .local v0, accountType:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/contacts/model/Sources;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    .line 208
    .local v3, auth:Landroid/accounts/AuthenticatorDescription;
    const-string v12, "com.google"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "com.miui"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 210
    :cond_1
    new-instance v9, Lcom/android/contacts/model/GoogleSource;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {v9, v12}, Lcom/android/contacts/model/GoogleSource;-><init>(Ljava/lang/String;)V

    .line 221
    .local v9, source:Lcom/android/contacts/model/ContactsSource;
    :goto_2
    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iput-object v12, v9, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    .line 222
    iget v12, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    iput v12, v9, Lcom/android/contacts/model/ContactsSource;->titleRes:I

    .line 223
    iget v12, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    iput v12, v9, Lcom/android/contacts/model/ContactsSource;->iconRes:I

    .line 225
    invoke-virtual {p0, v9}, Lcom/android/contacts/model/Sources;->addSource(Lcom/android/contacts/model/ContactsSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 227
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #arr$:[Landroid/content/SyncAdapterType;
    .end local v3           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v4           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #source:Lcom/android/contacts/model/ContactsSource;
    .end local v10           #sync:Landroid/content/SyncAdapterType;
    .end local v11           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v12

    move-object v6, v12

    .line 228
    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v12, "Sources"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem loading accounts: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    monitor-exit p0

    return-void

    .line 211
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v2       #arr$:[Landroid/content/SyncAdapterType;
    .restart local v3       #auth:Landroid/accounts/AuthenticatorDescription;
    .restart local v4       #auths:[Landroid/accounts/AuthenticatorDescription;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #sync:Landroid/content/SyncAdapterType;
    .restart local v11       #syncs:[Landroid/content/SyncAdapterType;
    :cond_3
    :try_start_3
    const-string v12, "com.android.exchange"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 212
    new-instance v9, Lcom/android/contacts/model/ExchangeSource;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {v9, v12}, Lcom/android/contacts/model/ExchangeSource;-><init>(Ljava/lang/String;)V

    .restart local v9       #source:Lcom/android/contacts/model/ContactsSource;
    goto :goto_2

    .line 215
    .end local v9           #source:Lcom/android/contacts/model/ContactsSource;
    :cond_4
    const-string v12, "Sources"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Creating external source for type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", packageName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v9, Lcom/android/contacts/model/ExternalSource;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {v9, v12}, Lcom/android/contacts/model/ExternalSource;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v9       #source:Lcom/android/contacts/model/ContactsSource;
    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v9, Lcom/android/contacts/model/ContactsSource;->readOnly:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 186
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #am:Landroid/accounts/AccountManager;
    .end local v2           #arr$:[Landroid/content/SyncAdapterType;
    .end local v3           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v4           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #cs:Landroid/content/IContentService;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #source:Lcom/android/contacts/model/ContactsSource;
    .end local v10           #sync:Landroid/content/SyncAdapterType;
    .end local v11           #syncs:[Landroid/content/SyncAdapterType;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 218
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v1       #am:Landroid/accounts/AccountManager;
    .restart local v2       #arr$:[Landroid/content/SyncAdapterType;
    .restart local v3       #auth:Landroid/accounts/AuthenticatorDescription;
    .restart local v4       #auths:[Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #cs:Landroid/content/IContentService;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #source:Lcom/android/contacts/model/ContactsSource;
    .restart local v10       #sync:Landroid/content/SyncAdapterType;
    .restart local v11       #syncs:[Landroid/content/SyncAdapterType;
    :cond_5
    const/4 v12, 0x0

    goto :goto_3
.end method
