.class Lcom/android/browser/controller/HistoryAdapter$1;
.super Ljava/lang/Object;
.source "HistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/HistoryAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/HistoryAdapter;

.field final synthetic val$id:I

.field final synthetic val$mode:I

.field final synthetic val$thumb:Landroid/graphics/Bitmap;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/HistoryAdapter;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    iput p2, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$id:I

    iput-object p3, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$thumb:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 268
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v8, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 273
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 274
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/controller/HistoryAdapter;->access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$id:I

    invoke-static {v0, v1, v2}, Lcom/android/browser/api_v8/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    .line 277
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/HistoryAdapter;->notifyDataSetChanged()V

    .line 283
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$thumb:Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/android/browser/controller/HistoryAdapter$1;->val$mode:I

    invoke-static/range {v1 .. v8}, Lcom/android/browser/api_v8/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)J

    .line 281
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$1;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/HistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
