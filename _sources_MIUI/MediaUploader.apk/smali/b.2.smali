.class public Lb;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/content/Intent;)Lcom/google/android/apps/uploader/r;
    .locals 9

    const/4 v7, 0x0

    const-string v8, "MediaUploader"

    const-string v0, "com.google.android.apps.uploader.extra.url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.google.android.apps.uploader.extra.requestTemplate"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.google.android.apps.uploader.extra.account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.google.android.apps.uploader.extra.authTokenType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.google.android.apps.uploader.extra.destination"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const-string v0, "MediaUploader"

    const-string v0, "Upload intent missing URL or request template"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/apps/uploader/E;

    iget-object v6, p0, Lb;->a:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/google/android/apps/uploader/E;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p1, v6}, Lcom/google/android/apps/uploader/E;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v0, "MediaUploader"

    const-string v0, "Could not retrieve file info from upload intent"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/uploader/E;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/r;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Vector;ILjava/util/Vector;)V
    .locals 4

    const/4 v3, 0x0

    monitor-enter p2

    move v0, v3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    sub-int v2, v0, v3

    invoke-virtual {p2, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.android.apps.uploader.action.UPLOAD"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.android.apps.uploader.action.UPLOAD_MULTIPLE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/apps/uploader/r;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.uploader.action.UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.uploader.action.UPLOAD_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method

.method public c(Landroid/content/Intent;)Lcom/google/android/apps/uploader/r;
    .locals 2

    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/r;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_1

    const-string v0, "MediaUploader"

    const-string v1, "Single upload intent missing file URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Lb;->a(Landroid/net/Uri;Landroid/content/Intent;)Lcom/google/android/apps/uploader/r;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 3

    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MediaUploader"

    const-string v1, "Multiple upload intent missing files URI list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lb;->a(Landroid/net/Uri;Landroid/content/Intent;)Lcom/google/android/apps/uploader/r;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
