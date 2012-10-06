.class Lcom/android/browser/ui/TitleView$11;
.super Landroid/os/AsyncTask;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TitleView;->addShortcutForUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/TitleView;

.field final synthetic val$idFinal:J

.field final synthetic val$isNotABookmarkFinal:Z

.field final synthetic val$newUrl:Ljava/lang/String;

.field final synthetic val$titleFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TitleView;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    iput-wide p2, p0, Lcom/android/browser/ui/TitleView$11;->val$idFinal:J

    iput-boolean p4, p0, Lcom/android/browser/ui/TitleView$11;->val$isNotABookmarkFinal:Z

    iput-object p5, p0, Lcom/android/browser/ui/TitleView$11;->val$newUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/browser/ui/TitleView$11;->val$titleFinal:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 23
    .parameter "params"

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ui/TitleView$11;->val$idFinal:J

    move-wide/from16 v19, v0

    .line 534
    .local v19, id:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ui/TitleView$11;->val$isNotABookmarkFinal:Z

    move v5, v0

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v19, v5

    if-gez v5, :cond_1

    .line 535
    :cond_0
    const-string v5, "com.android.browser.ui.TitleView"

    const-string v6, "Add shortcut url \'%s\' using title \'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$newUrl:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$titleFinal:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    .line 537
    .local v21, position:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    move-object v5, v0

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v5}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    move-object v6, v0

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v6}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$newUrl:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$titleFinal:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v5 .. v18}, Lcom/android/browser/api_v8/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZIZ)J

    move-result-wide v19

    .line 541
    .end local v21           #position:J
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v19, v5

    if-ltz v5, :cond_2

    .line 542
    const-string v5, "com.android.browser.ui.TitleView"

    const-string v6, "Move shortcut url \'%s\' (title \'%s\') to shortcut folder"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$newUrl:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$titleFinal:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    move-object v5, v0

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v5}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    move-object v6, v0

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v6}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    move-object v7, v0

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v7}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getOneClickSystemFolderId(Landroid/content/ContentResolver;)I

    move-result v7

    move-object v0, v5

    move-wide/from16 v1, v19

    move-object v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/api_v8/Bookmarks;->updateFolderIdById(Landroid/content/Context;JLandroid/content/ContentResolver;I)V

    .line 548
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 551
    :goto_0
    return-object v5

    .line 550
    :cond_2
    const-string v5, "com.android.browser.ui.TitleView"

    const-string v6, "Failed to add shortcut url \'%s\' (title \'%s\')"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$newUrl:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/TitleView$11;->val$titleFinal:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 530
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/TitleView$11;->doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-boolean v0, p0, Lcom/android/browser/ui/TitleView$11;->val$isNotABookmarkFinal:Z

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/TitleView$11;->val$newUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/browser/model/ThumbnailStorageManager;->syncThumbnailStorage(Landroid/content/Context;Z)V

    .line 563
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshThumbnailData()V

    .line 564
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    const v1, 0x7f090020

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$11;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/model/NavigationHomeDataLoader;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/NavigationHomeDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/model/NavigationHomeDataLoader;->notifyChanged()V

    .line 567
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 530
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/TitleView$11;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
