.class final Lcom/android/browser/ui/MiRenBrowserActivity$1;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->showAlertDialogBeforeExiting(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$exitConfirmCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$userChoiceCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$userChoiceCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$exitConfirmCheckBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 274
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$userChoiceCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings;->setAutoClearCacheOnExit(Landroid/content/Context;Z)V

    .line 277
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$exitConfirmCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings;->setExitConfirmation(Landroid/content/Context;Z)V

    .line 280
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 281
    return-void

    .line 277
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
