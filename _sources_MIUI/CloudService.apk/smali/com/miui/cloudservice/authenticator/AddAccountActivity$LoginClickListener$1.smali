.class Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;
.super Landroid/os/AsyncTask;
.source "AddAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

.field final synthetic val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;Lcom/miui/cloudservice/authenticator/AccountHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iput-object p2, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->login(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 13
    .parameter "result"

    .prologue
    const-string v12, "nickname"

    const-string v11, "mid"

    const-string v10, "token"

    .line 127
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 128
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    const/4 v9, 0x0

    #calls: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->setLoginButtonStyles(Z)V
    invoke-static {v8, v9}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$700(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Z)V

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 130
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #calls: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v8, p1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$800(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v8}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v6

    .line 135
    .local v6, resp:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 136
    .local v7, token:Ljava/lang/String;
    const/4 v5, 0x0

    .line 137
    .local v5, nickname:Ljava/lang/String;
    const/4 v3, 0x0

    .line 139
    .local v3, mid:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 140
    :try_start_0
    const-string v8, "token"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    const-string v8, "nickname"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    const-string v8, "mid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 149
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v1, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/accounts/Account;

    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mUsername:Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$300(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.miui.auth"

    invoke-direct {v0, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, acct:Landroid/accounts/Account;
    const-string v8, "token"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$900(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 153
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-virtual {v8, v1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 154
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$900(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "miuiToken"

    invoke-virtual {v8, v0, v9, v7}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$900(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "nickname"

    invoke-virtual {v8, v0, v12, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$900(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "token"

    invoke-virtual {v8, v0, v10, v7}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$900(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "mid"

    invoke-virtual {v8, v0, v11, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mShowAccountDetail:Z
    invoke-static {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$1000(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 162
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v4, newPage:Landroid/content/Intent;
    const-string v8, "account"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-virtual {v8, v4}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    .end local v4           #newPage:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-virtual {v8}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->finish()V

    goto/16 :goto_0

    .line 144
    .end local v0           #acct:Landroid/accounts/Account;
    .end local v1           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 145
    .local v2, e:Lorg/json/JSONException;
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v8, v8, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    iget-object v9, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v9, v9, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    const v10, 0x7f07001b

    invoke-virtual {v9, v10}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$800(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    iget-object v0, v0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    const/4 v1, 0x1

    #calls: Lcom/miui/cloudservice/authenticator/AddAccountActivity;->setLoginButtonStyles(Z)V
    invoke-static {v0, v1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->access$700(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Z)V

    .line 122
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 123
    return-void
.end method
