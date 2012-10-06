.class public Lcom/miui/milk/ui/CloudBaseActivity;
.super Landroid/app/Activity;
.source "CloudBaseActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;
.implements Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;"
    }
.end annotation


# instance fields
.field protected mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field protected mLoginLayout:Landroid/view/View;

.field protected mLogoutLayout:Landroid/view/View;

.field protected mNetWorkErrorDialog:Landroid/app/Dialog;

.field private mService:Lcom/miui/milk/service/CloudBackupService;

.field private mToast:Landroid/widget/Toast;

.field protected refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    new-instance v0, Lcom/miui/milk/ui/CloudBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/CloudBaseActivity$4;-><init>(Lcom/miui/milk/ui/CloudBaseActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->refreshRunnable:Ljava/lang/Runnable;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mIsBound:Z

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    .line 256
    new-instance v0, Lcom/miui/milk/ui/CloudBaseActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/CloudBaseActivity$6;-><init>(Lcom/miui/milk/ui/CloudBaseActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/milk/ui/CloudBaseActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->leave()V

    .line 85
    return-void
.end method

.method protected doBackup(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060055

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    :goto_0
    return-void

    .line 208
    :cond_0
    const-wide/16 v0, 0x0

    .line 210
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1}, Lcom/miui/milk/service/CloudBackupService;->runBackup(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 215
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-class v2, Lcom/miui/milk/service/CloudBackupService;

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mIsBound:Z

    .line 280
    return-void
.end method

.method public doRestore()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method protected doRestore(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    const-wide/16 v0, 0x0

    .line 190
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1}, Lcom/miui/milk/service/CloudBackupService;->runRestore(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 195
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mIsBound:Z

    .line 288
    :cond_0
    return-void
.end method

.method public leave()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 54
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->finish()V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-static {}, Lcom/miui/backup/AppInitializer;->getInstance()Lcom/miui/backup/AppInitializer;

    move-result-object v0

    .line 43
    .local v0, appInit:Lcom/miui/backup/AppInitializer;
    invoke-virtual {v0}, Lcom/miui/backup/AppInitializer;->init()Z

    .line 45
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    .line 46
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    .line 47
    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseActivity;->doUnbindService(Landroid/content/Context;)V

    .line 173
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 175
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->dismissDialog()V

    .line 177
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->cancel(Z)Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 180
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseActivity;->doBindService(Landroid/content/Context;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseActivity;->refreshUI(Z)Z

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    return-void
.end method

.method public refreshBackupInfo()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseActivity;->refreshUI(Z)Z

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshUI(Z)Z
    .locals 7
    .parameter "requestError"

    .prologue
    const/4 v6, 0x1

    .line 94
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_4

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 96
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f06008e

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, errorString:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v3}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getErrorStatusCode()I

    move-result v1

    .line 100
    .local v1, errorStatusCode:I
    if-lez v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v1           #errorStatusCode:I
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06008f

    new-instance v5, Lcom/miui/milk/ui/CloudBaseActivity$3;

    invoke-direct {v5, p0}, Lcom/miui/milk/ui/CloudBaseActivity$3;-><init>(Lcom/miui/milk/ui/CloudBaseActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060005

    new-instance v5, Lcom/miui/milk/ui/CloudBaseActivity$2;

    invoke-direct {v5, p0}, Lcom/miui/milk/ui/CloudBaseActivity$2;-><init>(Lcom/miui/milk/ui/CloudBaseActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/miui/milk/ui/CloudBaseActivity$1;

    invoke-direct {v4, p0}, Lcom/miui/milk/ui/CloudBaseActivity$1;-><init>(Lcom/miui/milk/ui/CloudBaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    .line 129
    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 138
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #errorString:Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v3, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v3, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->retryComputeBackupInfo()Z

    .line 140
    const/4 v3, 0x0

    .line 142
    :goto_1
    return v3

    .line 132
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 133
    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 134
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_5
    move v3, v6

    .line 142
    goto :goto_1
.end method

.method protected restore(Z)V
    .locals 5
    .parameter "hasContact"

    .prologue
    .line 221
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    const v2, 0x7f06008e

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseActivity;->showToast(I)V

    .line 249
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v2}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060055

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 233
    :cond_1
    if-eqz p1, :cond_2

    .line 234
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060072

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060073

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000d

    new-instance v4, Lcom/miui/milk/ui/CloudBaseActivity$5;

    invoke-direct {v4, p0}, Lcom/miui/milk/ui/CloudBaseActivity$5;-><init>(Lcom/miui/milk/ui/CloudBaseActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 245
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 247
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseActivity;->doRestore()V

    goto :goto_0
.end method

.method protected retryComputeBackupInfo()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    move v1, v4

    .line 68
    :goto_0
    return v1

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 63
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-direct {v1, p0, p0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;)V

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 65
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v4

    .line 66
    goto :goto_0

    :cond_1
    move v1, v3

    .line 68
    goto :goto_0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 75
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-direct {v1, p0, p0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;)V

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 77
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    :cond_0
    return-void
.end method

.method protected showToast(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mToast:Landroid/widget/Toast;

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 157
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method
