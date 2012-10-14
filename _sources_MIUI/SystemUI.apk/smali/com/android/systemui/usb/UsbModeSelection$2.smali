.class Lcom/android/systemui/usb/UsbModeSelection$2;
.super Ljava/lang/Object;
.source "UsbModeSelection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbModeSelection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbModeSelection;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbModeSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/usb/UsbModeSelection$2;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/systemui/usb/UsbModeSelection$2;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    #getter for: Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/systemui/usb/UsbModeSelection;->access$100(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 76
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/systemui/usb/UsbModeSelection$2;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    invoke-virtual {v1}, Lcom/android/systemui/usb/UsbModeSelection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ask_user_usb_mode"

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    return-void

    .line 76
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method
