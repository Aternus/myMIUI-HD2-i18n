.class Lcom/android/phone/CallFeaturesMoreSetting$1;
.super Landroid/os/Handler;
.source "CallFeaturesMoreSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesMoreSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesMoreSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesMoreSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/phone/CallFeaturesMoreSetting$1;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 812
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 813
    .local v0, result:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 818
    :goto_0
    return-void

    .line 815
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting$1;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/CallFeaturesMoreSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 813
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
