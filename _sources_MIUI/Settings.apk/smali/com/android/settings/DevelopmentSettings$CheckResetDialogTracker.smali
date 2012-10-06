.class abstract Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;
.super Lcom/android/settings/DevelopmentSettings$DialogTracker;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckResetDialogTracker"
.end annotation


# instance fields
.field protected mChecker:Landroid/preference/CheckBoxPreference;

.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DevelopmentSettings;Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter
    .parameter "checker"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;->this$0:Lcom/android/settings/DevelopmentSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DevelopmentSettings$DialogTracker;-><init>(Lcom/android/settings/DevelopmentSettings;Lcom/android/settings/DevelopmentSettings$1;)V

    .line 92
    iput-object p2, p0, Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;->mChecker:Landroid/preference/CheckBoxPreference;

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 97
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;->onPositiveClicked()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onDismiss()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mPositiveClicked:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;->mChecker:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;->mChecker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPositiveClicked()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
