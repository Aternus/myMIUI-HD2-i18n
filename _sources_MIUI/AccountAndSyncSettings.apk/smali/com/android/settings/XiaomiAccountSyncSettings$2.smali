.class Lcom/android/settings/XiaomiAccountSyncSettings$2;
.super Ljava/lang/Object;
.source "XiaomiAccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/XiaomiAccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

.field final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/XiaomiAccountSyncSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    iput-boolean p2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->val$isEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 276
    const-string v1, "persist.sys.mitalk.enable"

    iget-boolean v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->val$isEnable:Z

    if-eqz v2, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.XIAOMI_ACCOUNT_MITALK_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    iget-object v2, v2, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$000(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->val$isEnable:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$2;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #calls: Lcom/android/settings/XiaomiAccountSyncSettings;->reload()V
    invoke-static {v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$100(Lcom/android/settings/XiaomiAccountSyncSettings;)V

    .line 291
    return-void

    .line 276
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method
