.class Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;
.super Landroid/os/AsyncTask;
.source "BookmarkCenterFavoriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->importFromFile(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

.field final synthetic val$pDialog:Landroid/app/ProgressDialog;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    iput-object p2, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/browser/controller/ImportExportBookmarks;->importBookmarkHistory(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0900db

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->reLoad()V

    .line 174
    return-void

    .line 167
    :cond_1
    const v2, 0x7f0900dc

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 150
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 151
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 152
    return-void
.end method
