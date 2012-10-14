.class Lcom/android/settings/XiaomiAccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "XiaomiAccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/XiaomiAccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/XiaomiAccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/XiaomiAccountSyncSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/android/settings/XiaomiAccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 229
    .local v0, failed:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 239
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 240
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/android/settings/XiaomiAccountSyncSettings$1;

    iget-object v2, v2, Lcom/android/settings/XiaomiAccountSyncSettings$1;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/settings/XiaomiAccountSyncSettings;->showDialog(I)V

    .line 253
    :goto_1
    return-void

    .line 245
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.XIAOMI_ACCOUNT_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/android/settings/XiaomiAccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/settings/XiaomiAccountSyncSettings$1;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    iget-object v3, v3, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/android/settings/XiaomiAccountSyncSettings$1;

    iget-object v2, v2, Lcom/android/settings/XiaomiAccountSyncSettings$1;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/android/settings/XiaomiAccountSyncSettings$1;

    iget-object v2, v2, Lcom/android/settings/XiaomiAccountSyncSettings$1;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/XiaomiAccountSyncSettings;->finish()V

    goto :goto_1

    .line 236
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 234
    :catch_1
    move-exception v2

    goto :goto_0

    .line 232
    :catch_2
    move-exception v2

    goto :goto_0
.end method
