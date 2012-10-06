.class final Lcom/google/android/apps/uploader/clients/picasa/o;
.super Lcom/google/android/apps/uploader/n;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/r;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lr;

.field private synthetic d:Lcom/google/android/apps/uploader/clients/picasa/t;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/t;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/m;ZLcom/google/android/apps/uploader/clients/picasa/r;Ljava/lang/String;Lr;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->d:Lcom/google/android/apps/uploader/clients/picasa/t;

    iput-object p6, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->a:Lcom/google/android/apps/uploader/clients/picasa/r;

    iput-object p7, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->b:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->c:Lr;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/google/android/apps/uploader/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/m;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/uploader/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->a:Lcom/google/android/apps/uploader/clients/picasa/r;

    invoke-interface {v0, p1}, Lcom/google/android/apps/uploader/clients/picasa/r;->a(Lcom/google/android/apps/uploader/g;)V

    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/h;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->a:Lcom/google/android/apps/uploader/clients/picasa/r;

    new-instance v1, Lcom/google/android/apps/uploader/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/r;->a(Lcom/google/android/apps/uploader/g;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->d:Lcom/google/android/apps/uploader/clients/picasa/t;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->c:Lr;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/uploader/clients/picasa/t;->a(Lcom/google/android/apps/uploader/clients/picasa/t;Lr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->d:Lcom/google/android/apps/uploader/clients/picasa/t;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/t;->a(Lcom/google/android/apps/uploader/clients/picasa/t;)Lcom/google/android/apps/uploader/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->c:Lr;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/j;->a(LaE;)V

    return-void
.end method

.method public final b(LG;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->a:Lcom/google/android/apps/uploader/clients/picasa/r;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->d:Lcom/google/android/apps/uploader/clients/picasa/t;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/o;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/apps/uploader/clients/picasa/t;->a(Lcom/google/android/apps/uploader/clients/picasa/t;Ljava/lang/String;LG;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/r;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/apps/uploader/g; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/o;->a(Lcom/google/android/apps/uploader/g;)V

    goto :goto_0
.end method
