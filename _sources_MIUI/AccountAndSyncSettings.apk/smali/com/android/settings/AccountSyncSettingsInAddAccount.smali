.class public Lcom/android/settings/AccountSyncSettingsInAddAccount;
.super Lcom/android/settings/AccountSyncSettings;
.source "AccountSyncSettingsInAddAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFinishArea:Landroid/view/View;

.field private mFinishButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/AccountSyncSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettingsInAddAccount;->finish()V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/AccountSyncSettings;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mRemoveAccountArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettingsInAddAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettingsInAddAccount;->mFinishArea:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettingsInAddAccount;->mFinishArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettingsInAddAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettingsInAddAccount;->mFinishButton:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettingsInAddAccount;->mFinishButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method
