.class Lcom/miui/uac/AppListActivity$1;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/uac/AppListActivity;


# direct methods
.method constructor <init>(Lcom/miui/uac/AppListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/uac/AppListActivity$1;->this$0:Lcom/miui/uac/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 5
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/uac/AppListActivity$1;->this$0:Lcom/miui/uac/AppListActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    iget-object v3, p0, Lcom/miui/uac/AppListActivity$1;->this$0:Lcom/miui/uac/AppListActivity;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/miui/uac/AppListActivity$1;->this$0:Lcom/miui/uac/AppListActivity;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/uac/AppListActivity$1;->this$0:Lcom/miui/uac/AppListActivity;

    #getter for: Lcom/miui/uac/AppListActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;
    invoke-static {v1}, Lcom/miui/uac/AppListActivity;->access$000(Lcom/miui/uac/AppListActivity;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/app/IPackageGuardian;->enable(Z)V

    .line 104
    iget-object v1, p0, Lcom/miui/uac/AppListActivity$1;->this$0:Lcom/miui/uac/AppListActivity;

    const v2, 0x7f060032

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "com.miui.uac.AppListActivity"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
