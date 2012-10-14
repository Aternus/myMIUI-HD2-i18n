.class public Lcom/google/android/apps/uploader/x;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/uploader/m;
    .locals 4

    const-string v3, "youtube"

    const-string v2, "lh2"

    const-string v0, "lh2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "lh2"

    invoke-static {}, Lcom/google/android/apps/uploader/B;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/apps/uploader/B;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "youtube"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "youtube"

    invoke-static {}, Lcom/google/android/apps/uploader/B;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v3, v1}, Lcom/google/android/apps/uploader/B;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/uploader/B;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
