.class Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;
.super Landroid/os/AsyncTask;
.source "NewAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/NewAccountActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/cloudservice/authenticator/Parameter;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->createAccByPhone(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 14
    .parameter "result"

    .prologue
    const/4 v11, 0x0

    const-string v13, "nickname"

    const-string v12, "mid"

    const-string v10, "token"

    .line 319
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 320
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->updateStatus(I)V
    invoke-static {v8, v11}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$700(Lcom/miui/cloudservice/authenticator/NewAccountActivity;I)V

    .line 322
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCreateAccount:Landroid/widget/Button;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$600(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 326
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v8, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$800(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v6

    .line 330
    .local v6, resp:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 331
    .local v7, token:Ljava/lang/String;
    const/4 v5, 0x0

    .line 332
    .local v5, nickname:Ljava/lang/String;
    const/4 v3, 0x0

    .line 334
    .local v3, mid:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 335
    :try_start_0
    const-string v8, "token"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    const-string v8, "nickname"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    const-string v8, "mid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 344
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v1, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/accounts/Account;

    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$900(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.miui.auth"

    invoke-direct {v0, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v0, acct:Landroid/accounts/Account;
    const-string v8, "token"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1300(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 348
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-virtual {v8, v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 349
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1300(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "miuiToken"

    invoke-virtual {v8, v0, v9, v7}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1300(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "nickname"

    invoke-virtual {v8, v0, v13, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1300(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "token"

    invoke-virtual {v8, v0, v10, v7}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1300(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "mid"

    invoke-virtual {v8, v0, v12, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const v9, 0x7f07001c

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 358
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, newPage:Landroid/content/Intent;
    const-string v8, "account"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 360
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-virtual {v8, v4}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 362
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-virtual {v8}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->finish()V

    goto/16 :goto_0

    .line 339
    .end local v0           #acct:Landroid/accounts/Account;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #newPage:Landroid/content/Intent;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 340
    .local v2, e:Lorg/json/JSONException;
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    iget-object v9, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const v10, 0x7f07001b

    invoke-virtual {v9, v10}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$800(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCreateAccount:Landroid/widget/Button;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$600(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const v1, 0x7f070036

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->updateStatus(I)V
    invoke-static {v0, v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$700(Lcom/miui/cloudservice/authenticator/NewAccountActivity;I)V

    .line 315
    return-void
.end method
