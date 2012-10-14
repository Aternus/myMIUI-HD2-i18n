.class Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;
.super Ljava/lang/Object;
.source "BookmarkDialogs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/BookmarkDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveBookmarkRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 3
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    .line 62
    iput-object p2, p0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    .line 64
    iget-object v2, p0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, url:Ljava/lang/String;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 71
    .local v15, bundle:Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, title:Ljava/lang/String;
    const-string v1, "url"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, url:Ljava/lang/String;
    const-string v1, "folder_id"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 75
    .local v5, folderId:I
    const-string v1, "invalidateThumbnail"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 76
    .local v17, invalidateThumbnail:Z
    if-eqz v17, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    .line 81
    .local v6, thumbnail:Landroid/graphics/Bitmap;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 82
    .local v2, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    move-object v1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lcom/android/browser/api_v8/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZIZ)J

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2           #cr:Landroid/content/ContentResolver;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 89
    return-void

    .line 76
    .end local v6           #thumbnail:Landroid/graphics/Bitmap;
    :cond_0
    const-string v1, "thumbnail"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v6, v1

    goto :goto_0

    .line 85
    .restart local v6       #thumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    move-object/from16 v16, v1

    .line 86
    .local v16, e:Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
