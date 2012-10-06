.class Lcom/android/stk/StkInputActivity$1;
.super Landroid/os/Handler;
.source "StkInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/stk/StkInputActivity$1;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/stk/StkInputActivity$1;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 v1, 0x14

    #calls: Lcom/android/stk/StkInputActivity;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/stk/StkInputActivity;->access$000(Lcom/android/stk/StkInputActivity;I)V

    .line 80
    iget-object v0, p0, Lcom/android/stk/StkInputActivity$1;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
