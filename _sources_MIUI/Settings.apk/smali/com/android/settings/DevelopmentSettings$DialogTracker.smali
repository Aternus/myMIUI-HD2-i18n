.class abstract Lcom/android/settings/DevelopmentSettings$DialogTracker;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DialogTracker"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field protected mPositiveClicked:Z

.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DevelopmentSettings;Lcom/android/settings/DevelopmentSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$DialogTracker;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mDialog:Landroid/app/Dialog;

    .line 63
    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->this$0:Lcom/android/settings/DevelopmentSettings;

    return-object v0
.end method

.method protected onClick(I)V
    .locals 0
    .parameter "which"

    .prologue
    .line 74
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 67
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mPositiveClicked:Z

    .line 70
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DevelopmentSettings$DialogTracker;->onClick(I)V

    .line 71
    return-void
.end method

.method protected abstract onCreateDialog()Landroid/app/Dialog;
.end method

.method protected onDismiss()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings$DialogTracker;->onDismiss()V

    .line 78
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings$DialogTracker;->onCreateDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mDialog:Landroid/app/Dialog;

    .line 53
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mPositiveClicked:Z

    .line 55
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$DialogTracker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    return-void
.end method
