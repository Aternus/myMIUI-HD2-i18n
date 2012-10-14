.class public Lcom/google/android/apps/uploader/UploaderApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/google/android/apps/uploader/D;

.field private b:Lcom/google/android/apps/uploader/x;

.field private c:Ljava/util/HashMap;

.field private d:Lcom/google/android/apps/uploader/H;

.field private e:Lcom/google/android/apps/uploader/s;

.field private f:Ljava/util/HashMap;

.field private g:Ljava/lang/String;

.field private h:LT;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/apps/uploader/m;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/m;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->b:Lcom/google/android/apps/uploader/x;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/apps/uploader/x;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->b:Lcom/google/android/apps/uploader/x;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->b:Lcom/google/android/apps/uploader/x;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/uploader/x;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/uploader/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final a()V
    .locals 12

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v11, "organic"

    const-string v10, "MediaUploader"

    invoke-static {}, Ln;->b()Ln;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MediaUploader"

    const-string v0, "Initializing MASF."

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lam;

    invoke-direct {v0, p0}, Lam;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LN;->a(LN;)V

    const-string v6, "http://www.google.com/m/appreq/mobilevideo"

    const-string v7, "media_uploader"

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->e()Ljava/lang/String;

    move-result-object v8

    const-string v0, "[%s][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    :goto_0
    invoke-static {v6, v7, v8, v9, v0}, Ln;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "organic"

    iput-object v11, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v5

    const-string v3, "name=\'client_id\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "organic"

    iput-object v11, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    :cond_2
    const-string v0, "MediaUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distribution channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(JLandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const-string v0, "MediaUploader"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wakeUp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/r;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->m()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/apps/uploader/H;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->d:Lcom/google/android/apps/uploader/H;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/H;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/H;-><init>(Landroid/content/ContentResolver;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->d:Lcom/google/android/apps/uploader/H;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->d:Lcom/google/android/apps/uploader/H;

    return-object v0
.end method

.method public final c()Lcom/google/android/apps/uploader/D;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->a:Lcom/google/android/apps/uploader/D;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/q;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->a:Lcom/google/android/apps/uploader/D;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->a:Lcom/google/android/apps/uploader/D;

    return-object v0
.end method

.method public final d()Lcom/google/android/apps/uploader/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->e:Lcom/google/android/apps/uploader/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/s;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->e:Lcom/google/android/apps/uploader/s;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->e:Lcom/google/android/apps/uploader/s;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "MediaUploader"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final f()LT;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:LT;

    if-nez v0, :cond_0

    new-instance v0, LT;

    invoke-direct {v0}, LT;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:LT;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:LT;

    return-object v0
.end method

.method public final g()Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    iget v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->j:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    const-string v3, "MediaUploader"

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "MediaUploader"

    const-string v0, "UploaderApplication.onCreate"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/high16 v0, 0x140

    :goto_0
    iput v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->j:I

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uploader_nonwifi_limit"

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->j:I

    invoke-static {v0, v1, v2}, Laq;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    const-string v0, "MediaUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nonWifiLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v0, 0x30

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    const-string v0, "MediaUploader"

    const-string v1, "Deinitializing MASF."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ln;->a()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:LT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:LT;

    invoke-virtual {v0}, LT;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
