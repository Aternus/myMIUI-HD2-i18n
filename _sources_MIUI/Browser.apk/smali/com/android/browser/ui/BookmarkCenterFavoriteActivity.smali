.class public Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;
.super Landroid/app/Activity;
.source "BookmarkCenterFavoriteActivity.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# static fields
.field static final EDIT_BOOKMARK_REQUEST:I = 0x2

.field public static final ENTRYMODE:Ljava/lang/String; = "entryMode"

.field public static final ENTRYMODE_BOOKMARK:I = 0x1

.field public static final ENTRYMODE_MAINPAGE:I = 0x0

.field private static EXPORT_REQUEST:I = 0x0

.field public static final FOLDERID:Ljava/lang/String; = "folderId"

.field public static final FOLDERS:Ljava/lang/String; = "folders"

.field public static final ID:Ljava/lang/String; = "id"

.field private static IMPORT_REQUEST:I = 0x0

.field public static final LOGTAG:Ljava/lang/String; = "com.android.browser.ui.BookmarkCenterFavoriteActivity"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final WEBSITEID:Ljava/lang/String; = "websiteId"


# instance fields
.field private mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

.field private mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

.field private mEnterFolder:Landroid/view/animation/Animation;

.field private mExitFolder:Landroid/view/animation/Animation;

.field private mInFolder:Z

.field private mListView:Landroid/widget/SortableListView;

.field private mSortOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    sput v0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->IMPORT_REQUEST:I

    .line 55
    const/4 v0, 0x4

    sput v0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->EXPORT_REQUEST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;Lcom/android/browser/controller/BookmarkFolderAdapter;)Lcom/android/browser/controller/BookmarkFolderAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Landroid/widget/SortableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mEnterFolder:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private exportToFolder(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-static {p0, p1}, Lcom/android/browser/controller/ImportExportBookmarks;->exportBookmarks(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getBookmarkSortOrderPref()I
    .locals 3

    .prologue
    .line 276
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_bookmark_sort_order"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private importFromFile(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const v3, 0x7f0900de

    const/4 v4, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    :cond_1
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 138
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, pDialog:Landroid/app/ProgressDialog;
    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 142
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 144
    new-instance v2, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;-><init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private notifyOnListViewOrderChanged(Z)V
    .locals 4
    .parameter "isInFolder"

    .prologue
    .line 451
    new-instance v0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;-><init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/browser/controller/BookmarkFolderAdapter;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    :goto_0
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 475
    return-void

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    goto :goto_0
.end method

.method private showExportFilesAlertDialog()V
    .locals 8

    .prologue
    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    const v5, 0x1040014

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900f2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090011

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 199
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 189
    .local v3, rootDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/browser/util/MirenConstants;->BACKUP_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, defaultFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 195
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 196
    const-string v5, "root_directory"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v5, "pick_folder"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    sget v5, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->EXPORT_REQUEST:I

    invoke-virtual {p0, v2, v5}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showImportFilesAlertDialog()V
    .locals 9

    .prologue
    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    const v5, 0x1040014

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900f2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090011

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 122
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 105
    .local v3, rootDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/browser/util/MirenConstants;->BACKUP_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, defaultFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    move-object v1, v3

    .line 112
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 114
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    const-string v5, "root_directory"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v5, "ext_filter"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "html"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    sget v5, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->IMPORT_REQUEST:I

    invoke-virtual {p0, v2, v5}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private toggleBookmarkSortOrderPref()V
    .locals 4

    .prologue
    .line 282
    iget v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    packed-switch v1, :pswitch_data_0

    .line 290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sort order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    .line 293
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_bookmark_sort_order"

    iget v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    :goto_1
    return-void

    .line 287
    .end local v0           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    goto :goto_0

    .line 299
    .restart local v0       #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    iget v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/BookmarkFolderAdapter;->changeSortOrder(I)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    iget v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/BookmarkFolderAdapter;->changeSortOrder(I)V

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/BookmarkFolderAdapter;->notifyDragItemPosition(II)V

    .line 503
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->notifyDataSetChanged()V

    .line 508
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    invoke-direct {p0, v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->notifyOnListViewOrderChanged(Z)V

    .line 509
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/BookmarkFolderAdapter;->notifyDragItemPosition(II)V

    .line 506
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 81
    sget v1, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->EXPORT_REQUEST:I

    if-ne p1, v1, :cond_1

    .line 82
    if-ne p2, v2, :cond_0

    .line 83
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->exportToFolder(Ljava/lang/String;)V

    .line 92
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget v1, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->IMPORT_REQUEST:I

    if-ne p1, v1, :cond_0

    .line 87
    if-ne p2, v2, :cond_0

    .line 88
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #path:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->importFromFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .parameter "item"

    .prologue
    .line 398
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, menuItemTitle:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 402
    .local v5, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v3, folderNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090038

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 406
    .local v7, pos:I
    iget-boolean v11, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-object v1, v11

    .line 407
    .local v1, curAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900ff

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 409
    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, url:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 413
    .local v9, touchIcon:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getFavIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 414
    .local v2, favIcon:Landroid/graphics/Bitmap;
    invoke-static {p0, v10, v8, v9, v2}, Lcom/android/browser/util/MiRenWebViewUtils;->createDesktopShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 442
    .end local v2           #favIcon:Landroid/graphics/Bitmap;
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #touchIcon:Landroid/graphics/Bitmap;
    .end local v10           #url:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v11

    return v11

    .line 406
    .end local v1           #curAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    :cond_1
    iget-object v11, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-object v1, v11

    goto :goto_0

    .line 415
    .restart local v1       #curAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090036

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 417
    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemViewType(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 418
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v0, bundle:Landroid/os/Bundle;
    const-string v11, "title"

    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v11, "websiteId"

    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemId(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v11, "url"

    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v11, "entryMode"

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v11, "folderId"

    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getWebsiteFolderId(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const/4 v11, 0x1

    invoke-static {p0, v11, v0}, Lcom/android/browser/ui/BookmarkDialogs;->setupAddOrEditBookmarkDialog(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 430
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_2
    invoke-static {}, Lcom/android/browser/controller/TabController;->getInstance()Lcom/android/browser/controller/TabController;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/browser/controller/TabController;->setBarconChange(Z)V

    goto :goto_1

    .line 427
    :cond_3
    const/4 v11, 0x1

    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemId(I)J

    move-result-wide v12

    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {p0, v11, v12, v13, v14}, Lcom/android/browser/ui/BookmarkDialogs;->setupCreateOrEditBookmarkFolderDialog(Landroid/content/Context;ZJLjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 431
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090035

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 433
    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemId(I)J

    move-result-wide v11

    long-to-int v4, v11

    .line 434
    .local v4, id:I
    invoke-virtual {v1, v7}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemViewType(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 435
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {p0, v11, v4}, Lcom/android/browser/api_v8/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    .line 439
    :goto_3
    invoke-static {}, Lcom/android/browser/controller/TabController;->getInstance()Lcom/android/browser/controller/TabController;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/browser/controller/TabController;->setBarconChange(Z)V

    goto/16 :goto_1

    .line 437
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {p0, v11, v4}, Lcom/android/browser/controller/BookmarkFolder;->removeBookmarkFolder(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    goto :goto_3
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 448
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 310
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->setContentView(I)V

    .line 311
    const/high16 v0, 0x7f0d

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SortableListView;

    iput-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    .line 312
    invoke-direct {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getBookmarkSortOrderPref()I

    move-result v0

    iput v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    .line 313
    new-instance v0, Lcom/android/browser/controller/BookmarkFolderAdapter;

    const-wide/16 v2, -0x1

    iget v4, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/controller/BookmarkFolderAdapter;-><init>(Landroid/app/Activity;JILandroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    .line 315
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v1}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getFolderNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setSpecialItemCount(I)V

    .line 317
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 320
    .local v7, top:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080389

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 322
    .local v6, bottom:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SortableListView;->setCustomizedFadingEdge(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v0, p0}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 328
    const v0, 0x10a000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mEnterFolder:Landroid/view/animation/Animation;

    .line 329
    const v0, 0x10a000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mExitFolder:Landroid/view/animation/Animation;

    .line 331
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    new-instance v1, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;-><init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 373
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x1

    .line 378
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    iget v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 379
    .local v1, pos:I
    iget-boolean v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BookmarkFolderAdapter;->isOneClickLuncherFolder(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 394
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 387
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 388
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 390
    iget-boolean v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 393
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 218
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->unRegisterContentObserver()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->unRegisterContentObserver()V

    .line 490
    new-instance v0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$4;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$4;-><init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 497
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 261
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 262
    iget-boolean v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    .line 265
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v1}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getFolderNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setSpecialItemCount(I)V

    .line 266
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    iget v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BookmarkFolderAdapter;->changeSortOrder(I)V

    .line 267
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mExitFolder:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 239
    :pswitch_0
    invoke-direct {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->toggleBookmarkSortOrderPref()V

    goto :goto_0

    .line 242
    :pswitch_1
    const-wide/16 v0, -0x1

    invoke-static {p0, v2, v0, v1, v3}, Lcom/android/browser/ui/BookmarkDialogs;->setupCreateOrEditBookmarkFolderDialog(Landroid/content/Context;ZJLjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-static {p0, v2, v3}, Lcom/android/browser/ui/BookmarkDialogs;->setupAddOrEditBookmarkDialog(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 248
    :pswitch_3
    invoke-direct {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->showImportFilesAlertDialog()V

    goto :goto_0

    .line 251
    :pswitch_4
    invoke-direct {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->showExportFilesAlertDialog()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0092
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 224
    iget v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I

    if-ne v1, v3, :cond_0

    move v0, v3

    .line 225
    .local v0, isSortedByName:Z
    :goto_0
    const v1, 0x7f0d0092

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    const v1, 0x7f0d0093

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    const v1, 0x7f0d0094

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    const v1, 0x7f0d0095

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 229
    const v1, 0x7f0d0096

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    const v1, 0x7f0d0097

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .end local v0           #isSortedByName:Z
    :cond_0
    move v0, v4

    .line 224
    goto :goto_0

    .restart local v0       #isSortedByName:Z
    :cond_1
    move v2, v4

    .line 226
    goto :goto_1

    :cond_2
    move v2, v4

    .line 227
    goto :goto_2

    :cond_3
    move v2, v4

    .line 228
    goto :goto_3

    :cond_4
    move v2, v4

    .line 229
    goto :goto_4

    :cond_5
    move v2, v4

    .line 230
    goto :goto_5
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 481
    return-void
.end method
