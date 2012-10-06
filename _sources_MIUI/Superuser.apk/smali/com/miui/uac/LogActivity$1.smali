.class Lcom/miui/uac/LogActivity$1;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/uac/LogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/uac/LogActivity;


# direct methods
.method constructor <init>(Lcom/miui/uac/LogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/uac/LogActivity$1;->this$0:Lcom/miui/uac/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 72
    new-instance v0, Lcom/miui/uac/DBHelper;

    iget-object v3, p0, Lcom/miui/uac/LogActivity$1;->this$0:Lcom/miui/uac/LogActivity;

    invoke-direct {v0, v3}, Lcom/miui/uac/DBHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, db:Lcom/miui/uac/DBHelper;
    invoke-virtual {v0}, Lcom/miui/uac/DBHelper;->clearLog()V

    .line 74
    invoke-virtual {v0}, Lcom/miui/uac/DBHelper;->close()V

    .line 76
    :try_start_0
    const-string v3, "guardian"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v2

    .line 78
    .local v2, packageGuardian:Lcom/android/internal/app/IPackageGuardian;
    invoke-interface {v2}, Lcom/android/internal/app/IPackageGuardian;->clearLogs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2           #packageGuardian:Lcom/android/internal/app/IPackageGuardian;
    :goto_0
    iget-object v3, p0, Lcom/miui/uac/LogActivity$1;->this$0:Lcom/miui/uac/LogActivity;

    #calls: Lcom/miui/uac/LogActivity;->init()V
    invoke-static {v3}, Lcom/miui/uac/LogActivity;->access$000(Lcom/miui/uac/LogActivity;)V

    .line 83
    iget-object v3, p0, Lcom/miui/uac/LogActivity$1;->this$0:Lcom/miui/uac/LogActivity;

    #getter for: Lcom/miui/uac/LogActivity;->mAdapter:Lcom/miui/uac/LogActivity$LogAdapter;
    invoke-static {v3}, Lcom/miui/uac/LogActivity;->access$100(Lcom/miui/uac/LogActivity;)Lcom/miui/uac/LogActivity$LogAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/uac/LogActivity$LogAdapter;->notifyDataSetChanged()V

    .line 84
    iget-object v3, p0, Lcom/miui/uac/LogActivity$1;->this$0:Lcom/miui/uac/LogActivity;

    iget-object v4, p0, Lcom/miui/uac/LogActivity$1;->this$0:Lcom/miui/uac/LogActivity;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/miui/uac/LogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 86
    return-void

    .line 79
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 80
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Superuser.LogActivity"

    const-string v4, "error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
