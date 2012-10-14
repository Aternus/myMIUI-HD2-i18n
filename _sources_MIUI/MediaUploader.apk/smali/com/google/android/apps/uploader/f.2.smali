.class final Lcom/google/android/apps/uploader/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/o;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/B;Lcom/google/android/apps/uploader/o;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/apps/uploader/f;->a:Lcom/google/android/apps/uploader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "MediaUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " accounts"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->a:Lcom/google/android/apps/uploader/o;

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/o;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->a:Lcom/google/android/apps/uploader/o;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/o;->a()V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->a:Lcom/google/android/apps/uploader/o;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/o;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->a:Lcom/google/android/apps/uploader/o;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/o;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
