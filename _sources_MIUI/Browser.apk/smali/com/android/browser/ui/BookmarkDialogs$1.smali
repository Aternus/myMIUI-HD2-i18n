.class final Lcom/android/browser/ui/BookmarkDialogs$1;
.super Ljava/lang/Object;
.source "BookmarkDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkDialogs;->setupAddOrEditBookmarkDialog(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addressEditText:Landroid/widget/EditText;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$folderIds:Ljava/util/List;

.field final synthetic val$folderPicker:Landroid/widget/Spinner;

.field final synthetic val$isEditBookmark:Z

.field final synthetic val$posOneClick:I

.field final synthetic val$titleEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$folderPicker:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$folderIds:Ljava/util/List;

    iput-object p3, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$titleEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$addressEditText:Landroid/widget/EditText;

    iput-boolean p5, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$isEditBookmark:Z

    iput-object p6, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    iput p7, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$posOneClick:I

    iput-object p8, p0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 28
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 166
    const/16 v22, -0x1

    .line 167
    .local v22, messageId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$folderPicker:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v25

    .line 168
    .local v25, selectedItemIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$folderIds:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 169
    .local v7, folderId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$titleEditText:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$addressEditText:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, url:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const/16 v22, 0x5

    .line 259
    .end local v7           #folderId:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    #calls: Lcom/android/browser/ui/BookmarkDialogs;->showToast(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/android/browser/ui/BookmarkDialogs;->access$000(Landroid/content/Context;I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/browser/model/NavigationHomeDataLoader;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/NavigationHomeDataLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/model/NavigationHomeDataLoader;->notifyChanged()V

    .line 261
    return-void

    .line 174
    .restart local v7       #folderId:I
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    const/16 v22, 0x6

    goto :goto_0

    .line 178
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$isEditBookmark:Z

    move v3, v0

    if-eqz v3, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 180
    .local v6, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$posOneClick:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$folderPicker:Landroid/widget/Spinner;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$bundle:Landroid/os/Bundle;

    move-object v4, v0

    const-string v5, "websiteId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v6}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getOneClickSystemFolderId(Landroid/content/ContentResolver;)I

    move-result v7

    .end local v7           #folderId:I
    invoke-static/range {v3 .. v9}, Lcom/android/browser/api_v8/Bookmarks;->updateBookmarkById(Landroid/content/Context;JLandroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    const/16 v22, 0x9

    goto :goto_0

    .line 187
    .restart local v7       #folderId:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$folderPicker:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 188
    .local v21, folder:Ljava/lang/String;
    sget-object v11, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string v13, "title=?"

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v21, v14, v3

    const/4 v15, 0x0

    move-object v10, v6

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 190
    .local v19, cursor:Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$bundle:Landroid/os/Bundle;

    move-object v4, v0

    const-string v5, "websiteId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v3 .. v9}, Lcom/android/browser/api_v8/Bookmarks;->updateBookmarkById(Landroid/content/Context;JLandroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v22, 0x9

    .line 196
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$bundle:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "websiteId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v11, v3

    const/4 v14, -0x1

    move-object v13, v6

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/android/browser/api_v8/Bookmarks;->updateBookmarkById(Landroid/content/Context;JLandroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v22, 0x9

    .line 205
    :goto_1
    if-eqz v19, :cond_0

    .line 206
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 255
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #folderId:I
    .end local v19           #cursor:Landroid/database/Cursor;
    .end local v21           #folder:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object/from16 v20, v3

    .line 256
    .local v20, e:Ljava/net/URISyntaxException;
    const/16 v22, 0x6

    goto/16 :goto_0

    .line 203
    .end local v20           #e:Ljava/net/URISyntaxException;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v7       #folderId:I
    .restart local v19       #cursor:Landroid/database/Cursor;
    .restart local v21       #folder:Ljava/lang/String;
    :cond_5
    const/16 v22, 0xa

    goto :goto_1

    .line 212
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v19           #cursor:Landroid/database/Cursor;
    .end local v21           #folder:Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    new-instance v27, Ljava/net/URI;

    move-object/from16 v0, v27

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 214
    .local v27, uriObj:Ljava/net/URI;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v24

    .line 215
    .local v24, scheme:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/browser/api_v8/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 219
    if-eqz v24, :cond_8

    .line 220
    const/16 v22, 0x8

    .line 234
    :cond_7
    :goto_2
    const/16 v3, 0x8

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 236
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v18, bundle:Landroid/os/Bundle;
    const-string v3, "title"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "url"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v3, "folder_id"

    move-object/from16 v0, v18

    move-object v1, v3

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    new-instance v3, Lcom/android/browser/ui/BookmarkDialogs$1$1;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/ui/BookmarkDialogs$1$1;-><init>(Lcom/android/browser/ui/BookmarkDialogs$1;)V

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v23

    .line 248
    .local v23, msg:Landroid/os/Message;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 250
    new-instance v26, Ljava/lang/Thread;

    new-instance v3, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    .local v26, t:Ljava/lang/Thread;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 224
    .end local v18           #bundle:Landroid/os/Bundle;
    .end local v23           #msg:Landroid/os/Message;
    .end local v26           #t:Ljava/lang/Thread;
    :cond_8
    :try_start_1
    new-instance v17, Lcom/android/browser/api_v8/WebAddress;

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/browser/api_v8/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    .local v17, address:Lcom/android/browser/api_v8/WebAddress;
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/browser/api_v8/WebAddress;->mHost:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 229
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 225
    .end local v17           #address:Lcom/android/browser/api_v8/WebAddress;
    :catch_1
    move-exception v3

    move-object/from16 v20, v3

    .line 226
    .local v20, e:Landroid/net/ParseException;
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 231
    .end local v20           #e:Landroid/net/ParseException;
    .restart local v17       #address:Lcom/android/browser/api_v8/WebAddress;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/api_v8/WebAddress;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto/16 :goto_2
.end method
