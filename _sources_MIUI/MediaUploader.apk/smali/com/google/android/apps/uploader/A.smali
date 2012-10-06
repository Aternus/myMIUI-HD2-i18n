.class final Lcom/google/android/apps/uploader/A;
.super Ljava/lang/Object;

# interfaces
.implements LH;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/r;

.field private synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/q;Lcom/google/android/apps/uploader/r;Ljava/io/InputStream;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/apps/uploader/A;->a:Lcom/google/android/apps/uploader/r;

    iput-object p3, p0, Lcom/google/android/apps/uploader/A;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/A;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b_()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/A;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->m()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/A;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final c_()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/A;->b:Ljava/io/InputStream;

    return-object v0
.end method
