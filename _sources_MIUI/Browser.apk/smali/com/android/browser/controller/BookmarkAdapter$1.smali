.class Lcom/android/browser/controller/BookmarkAdapter$1;
.super Ljava/lang/Object;
.source "BookmarkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/BookmarkAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/BookmarkAdapter;

.field final synthetic val$id:I

.field final synthetic val$thumb:Landroid/graphics/Bitmap;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/BookmarkAdapter;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    iput p2, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$id:I

    iput-object p3, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 243
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v7, [Ljava/lang/String;

    iget v6, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 248
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/controller/BookmarkAdapter;->access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$id:I

    invoke-static {v0, v1, v2}, Lcom/android/browser/api_v8/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    .line 252
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkAdapter;->notifyDataSetChanged()V

    .line 258
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-static/range {v1 .. v8}, Lcom/android/browser/api_v8/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)J

    .line 256
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$1;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
