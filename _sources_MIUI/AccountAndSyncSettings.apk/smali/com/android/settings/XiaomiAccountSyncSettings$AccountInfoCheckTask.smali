.class Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;
.super Landroid/os/AsyncTask;
.source "XiaomiAccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/XiaomiAccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountInfoCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private helper:Lcom/android/settings/XiaomiAccountHelper;

.field final synthetic this$0:Lcom/android/settings/XiaomiAccountSyncSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/XiaomiAccountSyncSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 364
    new-instance v0, Lcom/android/settings/XiaomiAccountHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/XiaomiAccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->helper:Lcom/android/settings/XiaomiAccountHelper;

    .line 365
    return-void
.end method

.method private fillAccountInfo(Lorg/json/JSONObject;)V
    .locals 17
    .parameter "resp"

    .prologue
    .line 400
    if-eqz p1, :cond_3

    .line 405
    :try_start_0
    const-string v8, ""

    .line 406
    .local v8, mid:Ljava/lang/String;
    const-string v13, "mid"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 407
    const-string v13, "mid"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 408
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 409
    const-string v8, ""

    .line 410
    const-string v13, "XiaomiAccountSyncSettings"

    const-string v14, "Theres an error in your JSON File: empty mid"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v13, v0

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v13}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$500(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v15, "mid"

    invoke-virtual {v13, v14, v15, v8}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v9, ""

    .line 416
    .local v9, nickname:Ljava/lang/String;
    const-string v13, "nickname"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 417
    const-string v13, "nickname"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 418
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 419
    const-string v9, ""

    .line 420
    const-string v13, "XiaomiAccountSyncSettings"

    const-string v14, "Theres an error in your JSON File: empty nickname"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v13, v0

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v13}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$500(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v15, "nickname"

    invoke-virtual {v13, v14, v15, v9}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v5, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v10, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "c"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 429
    const-string v13, "c"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 430
    .local v3, contacts:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    .local v7, max:I
    :goto_0
    if-ge v6, v7, :cond_8

    .line 431
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 432
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 433
    .local v2, contact:Lorg/json/JSONObject;
    const-string v13, "t"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 434
    .local v11, type:Ljava/lang/String;
    const-string v13, "v"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 436
    .local v12, value:Ljava/lang/String;
    const-string v13, "EM"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 437
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 438
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v2           #contact:Lorg/json/JSONObject;
    .end local v11           #type:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 440
    .restart local v2       #contact:Lorg/json/JSONObject;
    .restart local v11       #type:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    :cond_2
    const-string v13, "XiaomiAccountSyncSettings"

    const-string v14, "Theres an error in your JSON File: empty value"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 463
    .end local v2           #contact:Lorg/json/JSONObject;
    .end local v3           #contacts:Lorg/json/JSONArray;
    .end local v5           #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v7           #max:I
    .end local v8           #mid:Ljava/lang/String;
    .end local v9           #nickname:Ljava/lang/String;
    .end local v10           #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #type:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 464
    .local v4, e:Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v14, v0

    const v15, 0x7f060053

    invoke-virtual {v14, v15}, Lcom/android/settings/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/settings/XiaomiAccountSyncSettings;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$300(Lcom/android/settings/XiaomiAccountSyncSettings;Ljava/lang/String;)V

    .line 467
    .end local v4           #e:Lorg/json/JSONException;
    :cond_3
    :goto_2
    return-void

    .line 442
    .restart local v2       #contact:Lorg/json/JSONObject;
    .restart local v3       #contacts:Lorg/json/JSONArray;
    .restart local v5       #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #i:I
    .restart local v7       #max:I
    .restart local v8       #mid:Ljava/lang/String;
    .restart local v9       #nickname:Ljava/lang/String;
    .restart local v10       #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #type:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v13, "PH"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 443
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 444
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 446
    :cond_5
    const-string v13, "XiaomiAccountSyncSettings"

    const-string v14, "Theres an error in your JSON File: empty value"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 449
    :cond_6
    const-string v13, "XiaomiAccountSyncSettings"

    const-string v14, "Theres an error in your JSON File: unknown or none Contacts type"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    .end local v2           #contact:Lorg/json/JSONObject;
    .end local v11           #type:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_7
    const-string v13, "XiaomiAccountSyncSettings"

    const-string v14, "Theres an error in your JSON File: NULL object in Contacts"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    .end local v3           #contacts:Lorg/json/JSONArray;
    .end local v6           #i:I
    .end local v7           #max:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v13, v0

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v13}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$500(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v15, "EM"

    const-string v16, ";"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v13, v0

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v13}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$500(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v15, "PH"

    const-string v16, ";"

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .parameter "pars"

    .prologue
    const-string v5, "token"

    .line 390
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->helper:Lcom/android/settings/XiaomiAccountHelper;

    invoke-virtual {v2}, Lcom/android/settings/XiaomiAccountHelper;->getParameter()Lcom/android/settings/Parameter;

    move-result-object v0

    .line 391
    .local v0, params:Lcom/android/settings/Parameter;
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v2}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$500(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    iget-object v3, v3, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v4, "token"

    invoke-virtual {v2, v3, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    const-string v2, "token"

    invoke-virtual {v0, v5, v1}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->helper:Lcom/android/settings/XiaomiAccountHelper;

    invoke-virtual {v2, v0}, Lcom/android/settings/XiaomiAccountHelper;->viewCard(Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$200(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #calls: Lcom/android/settings/XiaomiAccountSyncSettings;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$300(Lcom/android/settings/XiaomiAccountSyncSettings;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->helper:Lcom/android/settings/XiaomiAccountHelper;

    invoke-virtual {v1}, Lcom/android/settings/XiaomiAccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v0

    .line 384
    .local v0, resp:Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->fillAccountInfo(Lorg/json/JSONObject;)V

    .line 385
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #calls: Lcom/android/settings/XiaomiAccountSyncSettings;->initValueAndContact()V
    invoke-static {v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$400(Lcom/android/settings/XiaomiAccountSyncSettings;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 370
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$200(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 371
    return-void
.end method
