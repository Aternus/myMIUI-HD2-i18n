.class Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;
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
    .line 238
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getVerifyCode(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 252
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const/4 v3, 0x0

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->updateStatus(I)V
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$700(Lcom/miui/cloudservice/authenticator/NewAccountActivity;I)V

    .line 253
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$600(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$800(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v1

    .line 261
    .local v1, resp:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const-string v3, "mid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$902(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const-string v3, "token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mToken:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1002(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const-string v3, "salt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mSalt:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$1102(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 267
    .local v0, e:Lorg/json/JSONException;
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$800(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCountDownHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$500(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$300()I

    move-result v2

    invoke-static {}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$400()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, mess:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCountDownHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$500(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$600(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    const v2, 0x7f070036

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->updateStatus(I)V
    invoke-static {v1, v2}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$700(Lcom/miui/cloudservice/authenticator/NewAccountActivity;I)V

    .line 247
    return-void
.end method
