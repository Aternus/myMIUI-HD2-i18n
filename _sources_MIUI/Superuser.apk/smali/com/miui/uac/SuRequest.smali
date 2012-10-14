.class public Lcom/miui/uac/SuRequest;
.super Landroid/app/Activity;
.source "SuRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCallerUid:I

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCheckRemember:Landroid/widget/CheckBox;

.field private mDesiredCmd:Ljava/lang/String;

.field private mDesiredUid:I

.field private mFinishListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSettingListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSocketPath:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput v0, p0, Lcom/miui/uac/SuRequest;->mCallerUid:I

    .line 24
    iput v0, p0, Lcom/miui/uac/SuRequest;->mDesiredUid:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/uac/SuRequest;->mDesiredCmd:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/miui/uac/SuRequest$1;

    invoke-direct {v0, p0}, Lcom/miui/uac/SuRequest$1;-><init>(Lcom/miui/uac/SuRequest;)V

    iput-object v0, p0, Lcom/miui/uac/SuRequest;->mFinishListener:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    new-instance v0, Lcom/miui/uac/SuRequest$2;

    invoke-direct {v0, p0}, Lcom/miui/uac/SuRequest$2;-><init>(Lcom/miui/uac/SuRequest;)V

    iput-object v0, p0, Lcom/miui/uac/SuRequest;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 43
    new-instance v0, Lcom/miui/uac/SuRequest$3;

    invoke-direct {v0, p0}, Lcom/miui/uac/SuRequest$3;-><init>(Lcom/miui/uac/SuRequest;)V

    iput-object v0, p0, Lcom/miui/uac/SuRequest;->mSettingListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/uac/SuRequest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/miui/uac/SuRequest;->rootPermissionOperation(I)V

    return-void
.end method

.method private rootPermissionOperation(I)V
    .locals 5
    .parameter "allow"

    .prologue
    .line 121
    new-instance v0, Lcom/miui/uac/AppDetails;

    iget v1, p0, Lcom/miui/uac/SuRequest;->mCallerUid:I

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/uac/AppDetails;-><init>(IIJ)V

    .line 122
    .local v0, appDetails:Lcom/miui/uac/AppDetails;
    invoke-virtual {v0, p1}, Lcom/miui/uac/AppDetails;->setAllow(I)V

    .line 123
    iget-object v1, p0, Lcom/miui/uac/SuRequest;->mSocketPath:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/miui/uac/ResponseHelper;->sendResult(Landroid/content/Context;Lcom/miui/uac/AppDetails;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private saveAppRootPermissonStatus(I)V
    .locals 4
    .parameter "allow"

    .prologue
    .line 127
    new-instance v0, Lcom/miui/uac/DBHelper;

    invoke-direct {v0, p0}, Lcom/miui/uac/DBHelper;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, db:Lcom/miui/uac/DBHelper;
    iget v1, p0, Lcom/miui/uac/SuRequest;->mCallerUid:I

    iget v2, p0, Lcom/miui/uac/SuRequest;->mDesiredUid:I

    iget-object v3, p0, Lcom/miui/uac/SuRequest;->mDesiredCmd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/miui/uac/DBHelper;->insert(IILjava/lang/String;I)V

    .line 129
    invoke-virtual {v0}, Lcom/miui/uac/DBHelper;->close()V

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 107
    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 110
    .local v0, allow:I
    :goto_0
    iget-object v2, p0, Lcom/miui/uac/SuRequest;->mCheckRemember:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-direct {p0, v0}, Lcom/miui/uac/SuRequest;->saveAppRootPermissonStatus(I)V

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/miui/uac/SuRequest;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 114
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_remember_value"

    iget-object v3, p0, Lcom/miui/uac/SuRequest;->mCheckRemember:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    invoke-direct {p0, v0}, Lcom/miui/uac/SuRequest;->rootPermissionOperation(I)V

    .line 117
    invoke-virtual {p0}, Lcom/miui/uac/SuRequest;->finish()V

    .line 118
    return-void

    .line 107
    .end local v0           #allow:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/uac/SuRequest;->prefs:Landroid/content/SharedPreferences;

    .line 58
    invoke-virtual {p0}, Lcom/miui/uac/SuRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    const-string v4, "SuRequest"

    const-string v5, "SuRequest must be started from su"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/miui/uac/SuRequest;->finish()V

    .line 103
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/miui/uac/SuRequest;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 65
    .local v3, in:Landroid/content/Intent;
    const-string v4, "caller_uid"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/uac/SuRequest;->mCallerUid:I

    .line 66
    const-string v4, "desired_uid"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/uac/SuRequest;->mDesiredUid:I

    .line 67
    const-string v4, "desired_cmd"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/uac/SuRequest;->mDesiredCmd:Ljava/lang/String;

    .line 68
    const-string v4, "socket"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/uac/SuRequest;->mSocketPath:Ljava/lang/String;

    .line 70
    iget v4, p0, Lcom/miui/uac/SuRequest;->mCallerUid:I

    invoke-static {p0, v4}, Lcom/miui/uac/Util;->isSystemApplication(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_open_root_permissain"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/uac/SuRequest;->mCheckRemember:Landroid/widget/CheckBox;

    .line 74
    iget-object v4, p0, Lcom/miui/uac/SuRequest;->mCheckRemember:Landroid/widget/CheckBox;

    const v5, 0x7f060011

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 75
    iget-object v4, p0, Lcom/miui/uac/SuRequest;->mCheckRemember:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/miui/uac/SuRequest;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "last_remember_value"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f020001

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 79
    iget v4, p0, Lcom/miui/uac/SuRequest;->mCallerUid:I

    invoke-static {p0, v4, v8}, Lcom/miui/uac/Util;->getAppName(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, appName:Ljava/lang/String;
    const v4, 0x7f060034

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    :goto_1
    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/miui/uac/SuRequest;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object v4, p0, Lcom/miui/uac/SuRequest;->mCheckRemember:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 83
    const v4, 0x7f06000d

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    const v4, 0x7f060010

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object v4, p0, Lcom/miui/uac/SuRequest;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 87
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 80
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_1
    const v6, 0x7f06001d

    invoke-virtual {p0, v6}, Lcom/miui/uac/SuRequest;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 89
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-direct {p0, v8}, Lcom/miui/uac/SuRequest;->rootPermissionOperation(I)V

    .line 90
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f060039

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/miui/uac/SuRequest;->mCallerUid:I

    invoke-static {p0, v7, v8}, Lcom/miui/uac/Util;->getAppName(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/miui/uac/SuRequest;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060035

    iget-object v6, p0, Lcom/miui/uac/SuRequest;->mSettingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06000f

    iget-object v6, p0, Lcom/miui/uac/SuRequest;->mFinishListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/uac/SuRequest;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 100
    :cond_3
    invoke-direct {p0, v7}, Lcom/miui/uac/SuRequest;->saveAppRootPermissonStatus(I)V

    .line 101
    invoke-direct {p0, v7}, Lcom/miui/uac/SuRequest;->rootPermissionOperation(I)V

    goto/16 :goto_0
.end method
