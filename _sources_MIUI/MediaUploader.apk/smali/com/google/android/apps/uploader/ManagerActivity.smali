.class public Lcom/google/android/apps/uploader/ManagerActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/apps/uploader/b;


# instance fields
.field private a:Lcom/google/android/apps/uploader/UploaderApplication;

.field private b:Lb;

.field private c:Lcom/google/android/apps/uploader/H;

.field private d:Lcom/google/android/apps/uploader/C;

.field private e:Lcom/google/android/apps/uploader/UploadService;

.field private f:Z

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Landroid/content/Intent;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/v;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/v;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->g:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->h:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploaderApplication;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManagerActivity.handleIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    invoke-static {p1}, Lb;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->b:Lb;

    invoke-virtual {v0, p1}, Lb;->c(Landroid/content/Intent;)Lcom/google/android/apps/uploader/r;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->b:Lb;

    invoke-virtual {v1, v0}, Lb;->a(Lcom/google/android/apps/uploader/r;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->e()Ljava/lang/String;

    move-result-object v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_0
    move-object v4, v0

    move-object v7, v2

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v1, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {p0, v7}, Lcom/google/android/apps/uploader/ManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lb;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->b:Lb;

    invoke-virtual {v0, p1}, Lb;->d(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/r;

    iget-object v4, p0, Lcom/google/android/apps/uploader/ManagerActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Lcom/google/android/apps/uploader/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->b:Lb;

    invoke-virtual {v0, v1}, Lb;->a(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/r;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/r;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->e()Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    move-object v2, v4

    move-object v4, v0

    goto :goto_1

    :cond_5
    move-object v4, v3

    move-object v2, v3

    move-object v7, v3

    goto :goto_1

    :cond_6
    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/uploader/ManagerActivity;)I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->i:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/H;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->c:Lcom/google/android/apps/uploader/H;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->i:I

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->d:Lcom/google/android/apps/uploader/C;

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/C;->a(J)Lcom/google/android/apps/uploader/r;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :pswitch_0
    const v1, 0x7f060033

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/r;)V

    move v0, v1

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v5

    goto :goto_0

    :cond_0
    const v0, 0x7f060034

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->b:Lb;

    invoke-virtual {v1, v0}, Lb;->a(Lcom/google/android/apps/uploader/r;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    new-instance v0, Lb;

    invoke-direct {v0, p0}, Lb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->b:Lb;

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->b()Lcom/google/android/apps/uploader/H;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->c:Lcom/google/android/apps/uploader/H;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/UploadsContentProvider;->a:Landroid/net/Uri;

    const-string v5, "_id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->startManagingCursor(Landroid/database/Cursor;)V

    new-instance v1, Lcom/google/android/apps/uploader/C;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/uploader/C;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->d:Lcom/google/android/apps/uploader/C;

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->d:Lcom/google/android/apps/uploader/C;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/uploader/w;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/w;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/ManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->registerForContextMenu(Landroid/view/View;)V

    const-string v0, "MediaUploader"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/apps/uploader/ManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "explainedCleanup"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->f:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->d:Lcom/google/android/apps/uploader/C;

    iget-wide v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/C;->a(J)Lcom/google/android/apps/uploader/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const v2, 0x7f060032

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const v1, 0x7f060031

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f06002e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f06002f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f060030

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "MediaUploader"

    const-string v1, "ManagerActivity.onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/ManagerActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/apps/uploader/t;

    invoke-direct {v2, p0}, Lcom/google/android/apps/uploader/t;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const-string v0, "MediaUploader"

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/uploader/ManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "explainedCleanup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-boolean v3, p0, Lcom/google/android/apps/uploader/ManagerActivity;->f:Z

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->c:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/H;->d()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->c:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/H;->b()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->a()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/C;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/C;->notifyDataSetChanged()V

    :cond_1
    move v0, v3

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->b()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/C;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/C;->notifyDataSetChanged()V

    :cond_2
    move v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->c:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/H;->c()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->c:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/H;->b()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManagerActivity.onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->j:Landroid/content/Intent;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->j:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->a(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "MediaUploader"

    const-string v1, "Connected to upload service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/google/android/apps/uploader/G;

    iget-object v0, p2, Lcom/google/android/apps/uploader/G;->a:Lcom/google/android/apps/uploader/UploadService;

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/b;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/C;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/C;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MediaUploader"

    const-string v1, "Disconnected from upload service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/b;)V

    iput-object v2, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    return-void
.end method

.method protected onStart()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    const-string v0, "MediaUploader"

    const-string v1, "ManagerActivity.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p0, v2}, Lcom/google/android/apps/uploader/ManagerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->d()Lcom/google/android/apps/uploader/s;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/s;->a(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->d()Lcom/google/android/apps/uploader/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/s;->a(Z)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/google/android/apps/uploader/ManagerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->e:Lcom/google/android/apps/uploader/UploadService;

    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    return-void
.end method
