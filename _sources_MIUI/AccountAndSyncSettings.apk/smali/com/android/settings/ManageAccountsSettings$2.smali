.class Lcom/android/settings/ManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ManageAccountsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ManageAccountsSettings;

.field final synthetic val$pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageAccountsSettings;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/ManageAccountsSettings$2;->this$0:Lcom/android/settings/ManageAccountsSettings;

    iput-object p2, p0, Lcom/android/settings/ManageAccountsSettings$2;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/settings/ManageAccountsSettings$2;->this$0:Lcom/android/settings/ManageAccountsSettings;

    #calls: Lcom/android/settings/ManageAccountsSettings;->setBackgroundDataInt(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/ManageAccountsSettings;->access$000(Lcom/android/settings/ManageAccountsSettings;Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/ManageAccountsSettings$2;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/ManageAccountsSettings$2;->this$0:Lcom/android/settings/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 157
    return-void
.end method
