.class Lcom/android/systemui/statusbar/StatusBarService$1;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarService;->updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SlidingButton;->setEnabled(Z)V

    .line 614
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 615
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const-class v2, Lcom/android/systemui/usb/UsbModeSelection;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 616
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 617
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/SlidingButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UsbModeSelection.action.MOUNT_STORAGE"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarService;->startActivity(Landroid/content/Intent;)V

    .line 621
    return-void

    .line 617
    :cond_0
    const-string v1, "UsbModeSelection.action.CHARGE_ONLY"

    goto :goto_0
.end method
