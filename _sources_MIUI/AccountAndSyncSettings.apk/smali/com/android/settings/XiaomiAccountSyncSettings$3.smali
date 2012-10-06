.class Lcom/android/settings/XiaomiAccountSyncSettings$3;
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
    .line 267
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$3;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    iput-boolean p2, p0, Lcom/android/settings/XiaomiAccountSyncSettings$3;->val$isEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings$3;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    #getter for: Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->access$000(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$3;->val$isEnable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
