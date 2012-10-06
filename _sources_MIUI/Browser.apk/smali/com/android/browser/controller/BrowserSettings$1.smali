.class Lcom/android/browser/controller/BrowserSettings$1;
.super Landroid/os/AsyncTask;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/BrowserSettings;->importData(Landroid/app/Activity;)V
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
.field final synthetic this$0:Lcom/android/browser/controller/BrowserSettings;

.field final synthetic val$pDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/BrowserSettings;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/browser/controller/BrowserSettings$1;->this$0:Lcom/android/browser/controller/BrowserSettings;

    iput-object p2, p0, Lcom/android/browser/controller/BrowserSettings$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings$1;->this$0:Lcom/android/browser/controller/BrowserSettings;

    #getter for: Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BrowserSettings;->access$100(Lcom/android/browser/controller/BrowserSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/controller/ImportExportBookmarks;->importBookmarkHistory(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 797
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/BrowserSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 814
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 819
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings$1;->this$0:Lcom/android/browser/controller/BrowserSettings;

    #getter for: Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BrowserSettings;->access$100(Lcom/android/browser/controller/BrowserSettings;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/BrowserSettings$1;->this$0:Lcom/android/browser/controller/BrowserSettings;

    #getter for: Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/controller/BrowserSettings;->access$100(Lcom/android/browser/controller/BrowserSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 827
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings$1;->this$0:Lcom/android/browser/controller/BrowserSettings;

    #getter for: Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/controller/BrowserSettings;->access$100(Lcom/android/browser/controller/BrowserSettings;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/BrowserSettings$1;->this$0:Lcom/android/browser/controller/BrowserSettings;

    #getter for: Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/controller/BrowserSettings;->access$100(Lcom/android/browser/controller/BrowserSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 797
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/BrowserSettings$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 800
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 803
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 804
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 805
    return-void
.end method
