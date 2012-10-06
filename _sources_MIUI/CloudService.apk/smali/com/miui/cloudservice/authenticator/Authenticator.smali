.class public Lcom/miui/cloudservice/authenticator/Authenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "Authenticator.java"


# instance fields
.field private am:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    .line 35
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v8, "showDetail"

    const-string v7, "nickname"

    const-string v5, "XMAuthenticator"

    const-string v6, "com.miui.auth"

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v2, "com.miui.auth"

    invoke-virtual {v1, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 44
    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 46
    :goto_0
    if-eqz v2, :cond_1

    .line 47
    aget-object v1, v1, v4

    .line 48
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v3, "username"

    invoke-virtual {v2, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v4, "nickname"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    invoke-virtual {v4, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 52
    const-string v5, "username"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "password"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "nickname"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "token"

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v4, "com.miui.auth"

    invoke-virtual {v3, v1, v6}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "tokensecret"

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v4, "tokensecret"

    invoke-virtual {v3, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_1
    return-object v0

    :cond_0
    move v2, v4

    .line 44
    goto :goto_0

    .line 62
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    const-string v2, "com.miui.auth"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "miuiToken"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "showDetail"

    if-nez p5, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    const-string v1, "XMAuthenticator"

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "XMAuthenticator"

    const-string v1, "\u5f00\u59cb\u521b\u5efa\u4e00\u4e2aMIUI\u5e10\u53f7"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    :cond_2
    const-string v2, "showDetail"

    invoke-virtual {p5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2
.end method

.method public checkXiaomiAccountToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x1000

    const-string v9, "token"

    const-string v8, "booleanResult"

    const-string v7, "account"

    .line 166
    new-instance v0, Lcom/miui/cloudservice/authenticator/AccountHelper;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    .line 167
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v2, "token"

    invoke-virtual {v1, p2, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v3, "booleanResult"

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v1, "account"

    invoke-virtual {v0, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v0, v2

    .line 206
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v3

    .line 180
    const-string v4, "token"

    invoke-virtual {v3, v9, v1}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 182
    invoke-virtual {v0, v3}, Lcom/miui/cloudservice/authenticator/AccountHelper;->checkToken(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    .line 183
    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_3

    .line 188
    :try_start_0
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    :goto_1
    if-nez v0, :cond_1

    move-object v0, v2

    .line 195
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 191
    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v1, "account"

    invoke-virtual {v0, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v0, v2

    .line 203
    goto :goto_0

    .line 205
    :cond_2
    const-string v0, "booleanResult"

    const/4 v0, 0x1

    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v2

    .line 206
    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 3
    .parameter "response"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v8, "type"

    const-string v7, "tokensecret"

    const-string v6, "token"

    const-string v5, "miuiToken"

    .line 122
    const-string v0, "miuiToken"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    const-string v1, "errorMessage"

    const-string v2, "invalid authTokenType"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 131
    new-instance v1, Lcom/miui/cloudservice/authenticator/AccountHelper;

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v2

    .line 133
    const-string v3, "username"

    invoke-virtual {v2, v3, v0}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 134
    const-string v3, "type"

    invoke-virtual {v2, v8, p3}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 135
    invoke-virtual {v1, v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->login(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v0

    .line 141
    :try_start_0
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v2, "miuiToken"

    invoke-virtual {v1, p2, v5, v0}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->am:Landroid/accounts/AccountManager;

    const-string v2, "tokensecret"

    invoke-virtual {v1, p2, v7, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v2, "token"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "tokensecret"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 150
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v4

    goto :goto_1

    .line 154
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/Authenticator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v0, "type"

    invoke-virtual {v1, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
