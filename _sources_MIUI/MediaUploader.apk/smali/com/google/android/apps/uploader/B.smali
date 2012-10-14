.class public final Lcom/google/android/apps/uploader/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/m;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/accounts/AccountManager;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "service_lh2"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/uploader/B;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "service_youtube"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/uploader/B;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/B;->c:Landroid/accounts/AccountManager;

    iput-object p2, p0, Lcom/google/android/apps/uploader/B;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/uploader/B;->e:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/B;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/uploader/B;->c:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/B;->b:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v4, "MediaUploader"

    const-string v0, "MediaUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/B;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " authToken for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/B;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/B;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/apps/uploader/B;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaUploader"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MediaUploader"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "MediaUploader"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshing authToken for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/B;->c:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/apps/uploader/o;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/B;->c:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/apps/uploader/B;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/B;->e:[Ljava/lang/String;

    new-instance v6, Lcom/google/android/apps/uploader/d;

    invoke-direct {v6, p0, p2}, Lcom/google/android/apps/uploader/d;-><init>(Lcom/google/android/apps/uploader/B;Lcom/google/android/apps/uploader/o;)V

    move-object v5, p1

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/o;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/uploader/B;->c:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/apps/uploader/B;->e:[Ljava/lang/String;

    new-instance v3, Lcom/google/android/apps/uploader/f;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/uploader/f;-><init>(Lcom/google/android/apps/uploader/B;Lcom/google/android/apps/uploader/o;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/apps/uploader/o;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/B;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/B;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/apps/uploader/B;->d:Ljava/lang/String;

    new-instance v5, Lcom/google/android/apps/uploader/e;

    invoke-direct {v5, p0, p1, p3}, Lcom/google/android/apps/uploader/e;-><init>(Lcom/google/android/apps/uploader/B;Ljava/lang/String;Lcom/google/android/apps/uploader/o;)V

    move-object v4, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/google/android/apps/uploader/o;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
