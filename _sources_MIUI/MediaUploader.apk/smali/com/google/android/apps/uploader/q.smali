.class public final Lcom/google/android/apps/uploader/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/D;


# instance fields
.field private a:Lcom/google/android/apps/uploader/j;

.field private b:Lae;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/q;->c:Landroid/content/Context;

    new-instance v0, Lcom/google/android/apps/uploader/j;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/q;->a:Lcom/google/android/apps/uploader/j;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/q;Lae;)Lae;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    return-object v0
.end method

.method static synthetic a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(I)Z
    .locals 1

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x195

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling current upload request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/q;->a:Lcom/google/android/apps/uploader/j;

    iget-object v1, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/j;->b(Lae;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/r;Ljava/io/InputStream;Lcom/google/android/apps/uploader/m;ZLcom/google/android/apps/uploader/a;)V
    .locals 7

    const-string v4, "MediaUploader"

    new-instance v0, Lcom/google/android/apps/uploader/A;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/uploader/A;-><init>(Lcom/google/android/apps/uploader/q;Lcom/google/android/apps/uploader/r;Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/apps/uploader/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "%=_auth_token_=%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    new-instance v2, Lcom/google/android/apps/uploader/u;

    invoke-direct {v2}, Lcom/google/android/apps/uploader/u;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/apps/uploader/u;->a(Ljava/lang/String;Ljava/lang/String;LH;)Lae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    iget-object v0, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_2

    const-string v2, "REFRESHED"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae;->a(Ljava/lang/String;)V

    const-string v0, "MediaUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uploading ticketID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    invoke-virtual {v1}, Lae;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lae;->a(I)V

    new-instance v0, Lcom/google/android/apps/uploader/z;

    iget-object v2, p0, Lcom/google/android/apps/uploader/q;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->e()Ljava/lang/String;

    move-result-object v3

    if-nez p4, :cond_3

    const/4 v1, 0x1

    move v5, v1

    :goto_2
    move-object v1, p0

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/uploader/z;-><init>(Lcom/google/android/apps/uploader/q;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/m;ZLcom/google/android/apps/uploader/a;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    invoke-virtual {v1, v0}, Lae;->a(LaB;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/q;->a:Lcom/google/android/apps/uploader/j;

    iget-object v1, p0, Lcom/google/android/apps/uploader/q;->b:Lae;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/j;->a(Lae;)V

    return-void

    :cond_1
    const-string v2, "MediaUploader"

    const-string v2, "got null authToken"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v5, v1

    goto :goto_2
.end method
