.class Lcom/android/mms/ui/FestivalSmsCategoryList$1;
.super Landroid/os/AsyncTask;
.source "FestivalSmsCategoryList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FestivalSmsCategoryList;->checkForUpdate(Z)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FestivalSmsCategoryList;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter "unused"

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/FestivalSmsProvider;->URI_UPDATE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "numMessageUpdated"

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 95
    iget-object v4, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    const v5, 0x7f09010e

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 100
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    #getter for: Lcom/android/mms/ui/FestivalSmsCategoryList;->mDownloadingView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/mms/ui/FestivalSmsCategoryList;->access$100(Lcom/android/mms/ui/FestivalSmsCategoryList;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v4, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    #getter for: Lcom/android/mms/ui/FestivalSmsCategoryList;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/mms/ui/FestivalSmsCategoryList;->access$200(Lcom/android/mms/ui/FestivalSmsCategoryList;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f09010b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v4, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/FestivalSmsCategoryList;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 106
    .local v2, time:J
    const-string v4, "update_timestamp"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void

    .line 96
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    .end local v2           #time:J
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    #getter for: Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FestivalSmsCategoryList;->access$000(Lcom/android/mms/ui/FestivalSmsCategoryList;)Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->requery()V

    .line 98
    iget-object v4, p0, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->this$0:Lcom/android/mms/ui/FestivalSmsCategoryList;

    #getter for: Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/FestivalSmsCategoryList;->access$000(Lcom/android/mms/ui/FestivalSmsCategoryList;)Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
