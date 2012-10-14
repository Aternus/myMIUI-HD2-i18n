.class public Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;
.super Landroid/app/Activity;


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;

.field final c:Ljava/lang/Runnable;

.field final d:Ljava/lang/Runnable;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/app/ProgressDialog;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/apps/uploader/clients/picasa/s;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/e;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/e;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->b:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/f;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/f;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/c;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/c;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/a;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/b;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/b;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;Lcom/google/android/apps/uploader/clients/picasa/s;)Lcom/google/android/apps/uploader/clients/picasa/s;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->i:Lcom/google/android/apps/uploader/clients/picasa/s;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->i:Lcom/google/android/apps/uploader/clients/picasa/s;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/clients/picasa/s;->b()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "_id"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->i:Lcom/google/android/apps/uploader/clients/picasa/s;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/clients/picasa/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    const v0, 0x7f06000e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    const v0, 0x7f06001e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 7

    const/4 v4, 0x0

    const-string v1, "MediaUploader"

    const-string v2, "Called create album"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    iget v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    const v2, 0x7f080003

    if-ne v1, v2, :cond_0

    const-string v1, "public"

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->f:Ljava/lang/String;

    :goto_0
    const-string v1, "PicasaPrefs"

    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_album_access"

    iget v3, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f06000f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_0
    const-string v1, "private"

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    move-object v3, v0

    new-instance v1, Lcom/google/android/apps/uploader/clients/picasa/t;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/picasa/t;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->j:Ljava/lang/String;

    const-string v4, "lh2"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Ljava/lang/String;)Lcom/google/android/apps/uploader/m;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->f:Ljava/lang/String;

    new-instance v6, Lcom/google/android/apps/uploader/clients/picasa/d;

    invoke-direct {v6, p0}, Lcom/google/android/apps/uploader/clients/picasa/d;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    invoke-interface/range {v1 .. v6}, Lcom/google/android/apps/uploader/clients/picasa/h;->a(Ljava/lang/String;Lcom/google/android/apps/uploader/m;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/r;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MediaUploader"

    const-string v1, "Created NewAlbumActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->setContentView(I)V

    const-string v0, "PicasaPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_album_access"

    const v2, 0x7f080003

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "MediaUploader"

    const-string v1, "NewAlbumActivity no account."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    :cond_1
    return-void
.end method
