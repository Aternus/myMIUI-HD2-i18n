.class Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;
.super Landroid/os/AsyncTask;
.source "SuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->handleMessage(Landroid/os/Message;)V
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;

.field final synthetic val$currentQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->this$1:Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;

    iput-object p2, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->val$currentQuery:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 3
    .parameter "params"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->this$1:Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;

    iget-object v0, v0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->val$currentQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/SuggestionAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 82
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->this$1:Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;

    iget-object v0, v0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/SuggestionAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 87
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->this$1:Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;

    iget-object v0, v0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/SuggestionAdapter;->notifyDataSetChanged()V

    .line 88
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->this$1:Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;

    iget-object v0, v0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    #calls: Lcom/android/browser/controller/SuggestionAdapter;->stopOnlineLoadingAsyncTask()V
    invoke-static {v0}, Lcom/android/browser/controller/SuggestionAdapter;->access$200(Lcom/android/browser/controller/SuggestionAdapter;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
