.class Lcom/android/systemui/statusbar/StatusBarService$2;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 623
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    invoke-virtual {v0}, Landroid/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/SlidingButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 629
    :cond_0
    return-void

    .line 627
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
