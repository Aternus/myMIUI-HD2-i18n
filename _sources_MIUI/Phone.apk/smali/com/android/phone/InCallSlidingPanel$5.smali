.class Lcom/android/phone/InCallSlidingPanel$5;
.super Landroid/os/Handler;
.source "InCallSlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallSlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallSlidingPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallSlidingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/phone/InCallSlidingPanel$5;->this$0:Lcom/android/phone/InCallSlidingPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 646
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 652
    :goto_0
    return-void

    .line 648
    :pswitch_0
    const-string v0, "InCallSlidingPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch trigger for event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$5;->this$0:Lcom/android/phone/InCallSlidingPanel;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/InCallSlidingPanel;->dispatchTriggerEvent(I)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallSlidingPanel;->access$1000(Lcom/android/phone/InCallSlidingPanel;I)V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
