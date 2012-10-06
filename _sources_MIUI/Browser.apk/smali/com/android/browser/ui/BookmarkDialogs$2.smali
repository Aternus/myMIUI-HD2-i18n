.class final Lcom/android/browser/ui/BookmarkDialogs$2;
.super Ljava/lang/Object;
.source "BookmarkDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkDialogs;->setupCreateOrEditBookmarkFolderDialog(Landroid/content/Context;ZJLjava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$folderId:J

.field final synthetic val$folderTitle:Landroid/widget/EditText;

.field final synthetic val$isEditFolder:Z

.field final synthetic val$originFolderTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;ZJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$folderTitle:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$isEditFolder:Z

    iput-wide p4, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$folderId:J

    iput-object p6, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$originFolderTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$folderTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, title:Ljava/lang/String;
    const/4 v7, -0x1

    .line 295
    .local v7, messageId:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$isEditFolder:Z

    if-nez v1, :cond_1

    .line 298
    invoke-static {v5, v0, v8}, Lcom/android/browser/controller/BookmarkFolder;->addBookmarkFolder(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v7, 0x2

    .line 320
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/browser/ui/BookmarkDialogs;->showToast(Landroid/content/Context;I)V
    invoke-static {v1, v7}, Lcom/android/browser/ui/BookmarkDialogs;->access$000(Landroid/content/Context;I)V

    .line 321
    return-void

    .line 301
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 304
    :cond_1
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "title= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    iget-wide v1, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$folderId:J

    invoke-static {v5, v1, v2, v0, v8}, Lcom/android/browser/controller/BookmarkFolder;->updateTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;)V

    .line 310
    const/4 v7, 0x3

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkDialogs$2;->val$originFolderTitle:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    const/4 v7, 0x0

    goto :goto_0

    .line 314
    :cond_3
    const/4 v7, 0x4

    goto :goto_0

    .line 318
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method
