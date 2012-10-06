.class Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;
.super Landroid/os/AsyncTask;
.source "NewAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/NewAccountActivity;->onFocusChange(Landroid/view/View;Z)V
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
    .line 192
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->checkNickname(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$000(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v2

    .line 204
    .local v2, resp:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 205
    :try_start_0
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 206
    .local v0, checkResult:Z
    if-nez v0, :cond_0

    .line 207
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$000(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0           #checkResult:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 211
    .local v1, e:Lorg/json/JSONException;
    goto :goto_0
.end method
