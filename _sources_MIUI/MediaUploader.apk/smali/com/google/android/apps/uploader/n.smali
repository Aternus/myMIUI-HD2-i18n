.class public abstract Lcom/google/android/apps/uploader/n;
.super Ljava/lang/Object;

# interfaces
.implements LaB;
.implements Lar;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/apps/uploader/m;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/m;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/n;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/uploader/n;->b:Lcom/google/android/apps/uploader/m;

    iput-object p2, p0, Lcom/google/android/apps/uploader/n;->c:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Lcom/google/android/apps/uploader/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/n;->d:Ljava/lang/String;

    :cond_0
    iput-boolean p4, p0, Lcom/google/android/apps/uploader/n;->e:Z

    return-void
.end method

.method private c(LG;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "MediaUploader"

    invoke-virtual {p1}, LG;->d()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/n;->b(LG;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, LG;->d()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/q;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MediaUploader"

    const-string v0, "Authentication failed"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/n;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/uploader/n;->b:Lcom/google/android/apps/uploader/m;

    if-eqz v0, :cond_3

    const-string v0, "MediaUploader"

    const-string v0, "Retrying"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/google/android/apps/uploader/n;->e:Z

    iget-object v0, p0, Lcom/google/android/apps/uploader/n;->b:Lcom/google/android/apps/uploader/m;

    iget-object v1, p0, Lcom/google/android/apps/uploader/n;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/uploader/n;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/n;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/uploader/n;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/n;->a(Ljava/lang/String;)V

    move v0, v3

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/g;

    iget-object v1, p0, Lcom/google/android/apps/uploader/n;->a:Landroid/content/Context;

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/n;->a(Lcom/google/android/apps/uploader/g;)V

    goto :goto_0

    :cond_2
    const-string v0, "MediaUploader"

    const-string v0, "Could not refresh authToken."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_1

    :cond_3
    const-string v0, "MediaUploader"

    const-string v0, "Did not refresh authToken."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, LG;->c_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, LG;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Lcom/google/android/apps/uploader/g;

    iget-object v1, p0, Lcom/google/android/apps/uploader/n;->a:Landroid/content/Context;

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/n;->a(Lcom/google/android/apps/uploader/g;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MediaUploader"

    const-string v0, "Unexpected response"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/n;->b()V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/n;->a(J)V

    return-void
.end method

.method public final a(LG;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/n;->c(LG;)V

    return-void
.end method

.method public final a(LaE;LG;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/apps/uploader/n;->c(LG;)V

    return-void
.end method

.method public final a(LaE;Ljava/lang/Exception;)V
    .locals 4

    new-instance v0, Lcom/google/android/apps/uploader/g;

    iget-object v1, p0, Lcom/google/android/apps/uploader/n;->a:Landroid/content/Context;

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/n;->a(Lcom/google/android/apps/uploader/g;)V

    return-void
.end method

.method public abstract a(Lcom/google/android/apps/uploader/g;)V
.end method

.method public abstract a(Lcom/google/android/apps/uploader/h;)V
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/h;

    invoke-direct {v0, p1}, Lcom/google/android/apps/uploader/h;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/n;->a(Lcom/google/android/apps/uploader/h;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public abstract b(LG;)V
.end method
