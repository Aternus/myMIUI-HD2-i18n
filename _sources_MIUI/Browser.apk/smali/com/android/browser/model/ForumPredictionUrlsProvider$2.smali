.class Lcom/android/browser/model/ForumPredictionUrlsProvider$2;
.super Landroid/os/AsyncTask;
.source "ForumPredictionUrlsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ForumPredictionUrlsProvider;->addForumIndexPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

.field final synthetic val$_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/model/ForumPredictionUrlsProvider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    iput-object p2, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;->val$_url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v2, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    #getter for: Lcom/android/browser/model/ForumPredictionUrlsProvider;->mHeaderDBHelper:Lcom/android/browser/model/HttpHeaderDatabaseHelper;
    invoke-static {v2}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$300(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Lcom/android/browser/model/HttpHeaderDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/model/HttpHeaderDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "url"

    iget-object v3, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;->val$_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "forums"

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 136
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-object v4
.end method
