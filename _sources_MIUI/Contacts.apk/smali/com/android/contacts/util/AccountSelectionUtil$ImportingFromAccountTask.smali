.class public Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportingFromAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/accounts/Account;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private zContext:Landroid/content/Context;

.field private zProgressing:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    .line 236
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 230
    check-cast p1, [Landroid/accounts/Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->doInBackground([Landroid/accounts/Account;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/accounts/Account;)Ljava/lang/Void;
    .locals 9
    .parameter "fromAccount"

    .prologue
    const/4 v7, 0x0

    const-string v8, "com.miui"

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, accountValues:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v4

    .line 265
    .local v4, sources:Lcom/android/contacts/model/Sources;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/Sources;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 266
    .local v1, accountList:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 267
    .local v0, a:Landroid/accounts/Account;
    const-string v5, "com.miui"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    new-instance v2, Landroid/content/ContentValues;

    .end local v2           #accountValues:Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .restart local v2       #accountValues:Landroid/content/ContentValues;
    const-string v5, "account_name"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v5, "account_type"

    const-string v6, "com.miui"

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v0           #a:Landroid/accounts/Account;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    aget-object v6, p1, v7

    invoke-static {v5, v6, v2}, Lcom/android/contacts/util/AccountSelectionUtil;->moveGroups(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    .line 276
    iget-object v5, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    aget-object v6, p1, v7

    invoke-static {v5, v6, v2}, Lcom/android/contacts/util/AccountSelectionUtil;->moveContacts(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    .line 277
    iget-object v5, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    aget-object v6, p1, v7

    invoke-static {v5, v6}, Lcom/android/contacts/util/AccountSelectionUtil;->hideContacts(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 279
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 230
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zProgressing:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zProgressing:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    const v1, 0x7f0b0124

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 240
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 242
    iget-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zContext:Landroid/content/Context;

    const v3, 0x7f0b0122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->zProgressing:Landroid/app/Dialog;

    .line 246
    return-void
.end method
