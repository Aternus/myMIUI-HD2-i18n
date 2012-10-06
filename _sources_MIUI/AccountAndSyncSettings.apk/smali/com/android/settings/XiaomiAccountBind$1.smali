.class Lcom/android/settings/XiaomiAccountBind$1;
.super Landroid/os/AsyncTaskWithProgress;
.source "XiaomiAccountBind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/XiaomiAccountBind;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTaskWithProgress",
        "<",
        "Lcom/android/settings/Parameter;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/XiaomiAccountBind;

.field final synthetic val$helper:Lcom/android/settings/XiaomiAccountHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/XiaomiAccountBind;Landroid/content/Context;IIZLcom/android/settings/XiaomiAccountHelper;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    iput-object p6, p0, Lcom/android/settings/XiaomiAccountBind$1;->val$helper:Lcom/android/settings/XiaomiAccountHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/AsyncTaskWithProgress;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, [Lcom/android/settings/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/XiaomiAccountBind$1;->doInBackground([Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/settings/Parameter;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    #getter for: Lcom/android/settings/XiaomiAccountBind;->mBindType:I
    invoke-static {v0}, Lcom/android/settings/XiaomiAccountBind;->access$100(Lcom/android/settings/XiaomiAccountBind;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind$1;->val$helper:Lcom/android/settings/XiaomiAccountHelper;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/XiaomiAccountHelper;->bindPhone(Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    #getter for: Lcom/android/settings/XiaomiAccountBind;->mBindType:I
    invoke-static {v0}, Lcom/android/settings/XiaomiAccountBind;->access$100(Lcom/android/settings/XiaomiAccountBind;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind$1;->val$helper:Lcom/android/settings/XiaomiAccountHelper;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/XiaomiAccountHelper;->bindEmail(Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind$1;->val$helper:Lcom/android/settings/XiaomiAccountHelper;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/XiaomiAccountHelper;->bindNickname(Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/XiaomiAccountBind$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v8, 0x2

    const-string v9, "url"

    .line 124
    invoke-super {p0, p1}, Landroid/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 126
    iget-object v6, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    #calls: Lcom/android/settings/XiaomiAccountBind;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v6, p1}, Lcom/android/settings/XiaomiAccountBind;->access$000(Lcom/android/settings/XiaomiAccountBind;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v6, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    #getter for: Lcom/android/settings/XiaomiAccountBind;->mBindType:I
    invoke-static {v6}, Lcom/android/settings/XiaomiAccountBind;->access$100(Lcom/android/settings/XiaomiAccountBind;)I

    move-result v6

    if-nez v6, :cond_2

    .line 130
    iget-object v6, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    invoke-virtual {v6}, Lcom/android/settings/XiaomiAccountBind;->finish()V

    goto :goto_0

    .line 133
    :cond_2
    new-instance v2, Lcom/android/settings/XiaomiAccountBind$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/XiaomiAccountBind$1$1;-><init>(Lcom/android/settings/XiaomiAccountBind$1;)V

    .line 140
    .local v2, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/settings/XiaomiAccountBind$1;->val$helper:Lcom/android/settings/XiaomiAccountHelper;

    invoke-virtual {v6}, Lcom/android/settings/XiaomiAccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v3

    .line 141
    .local v3, resp:Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 146
    :cond_3
    iget-object v6, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    #getter for: Lcom/android/settings/XiaomiAccountBind;->mBindType:I
    invoke-static {v6}, Lcom/android/settings/XiaomiAccountBind;->access$100(Lcom/android/settings/XiaomiAccountBind;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 147
    if-eqz v3, :cond_5

    .line 148
    const-string v4, ""

    .line 149
    .local v4, url:Ljava/lang/String;
    const-string v6, "url"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 151
    :try_start_0
    const-string v6, "url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 158
    :cond_4
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 159
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 160
    .local v5, urltobrowse:Landroid/net/Uri;
    new-instance v2, Lcom/android/settings/XiaomiAccountBind$1$2;

    .end local v2           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0, v5}, Lcom/android/settings/XiaomiAccountBind$1$2;-><init>(Lcom/android/settings/XiaomiAccountBind$1;Landroid/net/Uri;)V

    .line 171
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #urltobrowse:Landroid/net/Uri;
    .restart local v2       #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    invoke-virtual {v6}, Lcom/android/settings/XiaomiAccountBind;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    #getter for: Lcom/android/settings/XiaomiAccountBind;->mBindType:I
    invoke-static {v7}, Lcom/android/settings/XiaomiAccountBind;->access$100(Lcom/android/settings/XiaomiAccountBind;)I

    move-result v7

    if-ne v7, v8, :cond_6

    const v7, 0x7f060055

    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    #getter for: Lcom/android/settings/XiaomiAccountBind;->mBindType:I
    invoke-static {v7}, Lcom/android/settings/XiaomiAccountBind;->access$100(Lcom/android/settings/XiaomiAccountBind;)I

    move-result v7

    if-ne v7, v8, :cond_7

    const v7, 0x7f060056

    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f060059

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 152
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .restart local v4       #url:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 153
    .local v1, e:Lorg/json/JSONException;
    const-string v4, ""

    .line 154
    const-string v6, "XiaomiAccountBind"

    const-string v7, "Theres an error in your JSON File: empty mid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    .end local v1           #e:Lorg/json/JSONException;
    .end local v4           #url:Ljava/lang/String;
    :cond_6
    const v7, 0x7f060057

    goto :goto_2

    :cond_7
    const v7, 0x7f060058

    goto :goto_3
.end method
