.class Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;
.super Landroid/os/AsyncTask;
.source "BookmarkCenterFavoriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->notifyOnListViewOrderChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/browser/controller/BookmarkFolderAdapter;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 451
    check-cast p1, [Lcom/android/browser/controller/BookmarkFolderAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->doInBackground([Lcom/android/browser/controller/BookmarkFolderAdapter;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/browser/controller/BookmarkFolderAdapter;)Ljava/lang/Void;
    .locals 5
    .parameter "adapters"

    .prologue
    .line 470
    move-object v0, p1

    .local v0, arr$:[Lcom/android/browser/controller/BookmarkFolderAdapter;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 471
    .local v3, one:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-virtual {v3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->updateModifiedItemToDatabase()V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v3           #one:Lcom/android/browser/controller/BookmarkFolderAdapter;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 451
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v3}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getContentObserver()Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$200(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$200(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->unRegisterContentObserver()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$3;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->unRegisterContentObserver()V

    .line 466
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 467
    return-void
.end method
