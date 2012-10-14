.class Lcom/android/phone/CallFeaturesMoreSetting$3;
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
    .line 1038
    iput-object p1, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1041
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1042
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1060
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iget-boolean v2, v2, Lcom/android/phone/CallFeaturesMoreSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iget-boolean v2, v2, Lcom/android/phone/CallFeaturesMoreSetting;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #calls: Lcom/android/phone/CallFeaturesMoreSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesMoreSetting;->access$200(Lcom/android/phone/CallFeaturesMoreSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v2, 0x1

    move v0, v2

    .line 1063
    .local v0, done:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1065
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    const/16 v3, 0x643

    #calls: Lcom/android/phone/CallFeaturesMoreSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->access$400(Lcom/android/phone/CallFeaturesMoreSetting;I)V

    .line 1066
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-virtual {v2}, Lcom/android/phone/CallFeaturesMoreSetting;->onRevertDone()V

    .line 1068
    :cond_3
    return-void

    .line 1044
    .end local v0           #done:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iput-object v1, v2, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    goto :goto_0

    .line 1048
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting$3;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #getter for: Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesMoreSetting;->access$100(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1060
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 1042
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
