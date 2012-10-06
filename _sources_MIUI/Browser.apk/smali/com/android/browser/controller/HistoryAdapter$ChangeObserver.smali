.class Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/HistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/controller/HistoryAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 69
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 13
    .parameter "selfChange"

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 80
    .local v9, pre:Landroid/content/SharedPreferences;
    const-string v0, "clear_history_date"

    const-wide/16 v1, 0x0

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 81
    .local v7, lastClearTime:J
    const-string v5, "date DESC"

    .line 82
    .local v5, orderbyDate:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$100(Lcom/android/browser/controller/HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$100(Lcom/android/browser/controller/HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/browser/controller/HistoryAdapter;->access$102(Lcom/android/browser/controller/HistoryAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 86
    :cond_0
    iget-object v10, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "visits > 0 AND date > ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v10, v0}, Lcom/android/browser/controller/HistoryAdapter;->access$102(Lcom/android/browser/controller/HistoryAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 92
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    #getter for: Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/controller/HistoryAdapter;->access$100(Lcom/android/browser/controller/HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I
    invoke-static {v0, v1}, Lcom/android/browser/controller/HistoryAdapter;->access$202(Lcom/android/browser/controller/HistoryAdapter;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v5           #orderbyDate:Ljava/lang/String;
    .end local v7           #lastClearTime:J
    .end local v9           #pre:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;->this$0:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/HistoryAdapter;->notifyDataSetChanged()V

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 96
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v0, "com.android.browser.controller.HistoryAdapter"

    const-string v1, "error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
