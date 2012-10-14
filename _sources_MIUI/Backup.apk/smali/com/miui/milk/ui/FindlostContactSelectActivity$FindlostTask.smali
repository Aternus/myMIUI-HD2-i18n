.class public Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
.super Landroid/os/AsyncTask;
.source "FindlostContactSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FindlostTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mComputeProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method protected constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    iget-object v2, v2, Lcom/miui/milk/ui/FindlostContactSelectActivity;->callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;

    invoke-virtual {v1, v2}, Lcom/miui/milk/service/CloudBackupService;->getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v1

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$902(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 375
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 384
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const/4 v1, 0x2

    #calls: Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyState(I)V
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$800(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-virtual {v2}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    .line 354
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask$1;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const/4 v1, 0x1

    #calls: Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyState(I)V
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$800(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 369
    return-void

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method
