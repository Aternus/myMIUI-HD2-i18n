.class Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "BookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/BookmarkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/BookmarkAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/controller/BookmarkAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    .line 41
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 12
    .parameter "selfChange"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mBookmarkTabId:I
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$000(Lcom/android/browser/controller/BookmarkAdapter;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkAdapter;->notifyDataSetChanged()V

    .line 70
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$100(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_0

    .line 51
    :pswitch_1
    const-string v5, "visits DESC"

    .line 52
    .local v5, orderbyVisit:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 53
    .local v8, pre:Landroid/content/SharedPreferences;
    const-string v0, "clear_history_date"

    const-wide/16 v1, 0x0

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 54
    .local v6, lastClearTime:J
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$100(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$100(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 56
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/browser/controller/BookmarkAdapter;->access$102(Lcom/android/browser/controller/BookmarkAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 58
    :cond_0
    iget-object v9, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkAdapter;

    #getter for: Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "visits != 0 AND date > ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v0}, Lcom/android/browser/controller/BookmarkAdapter;->access$102(Lcom/android/browser/controller/BookmarkAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
