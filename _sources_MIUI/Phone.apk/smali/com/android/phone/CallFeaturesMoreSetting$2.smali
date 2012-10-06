.class Lcom/android/phone/CallFeaturesMoreSetting$2;
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
    .line 978
    iput-object p1, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 981
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 982
    .local v4, result:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 983
    .local v1, done:Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1025
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1027
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #getter for: Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesMoreSetting;->access$100(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1028
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    const/16 v6, 0x641

    #calls: Lcom/android/phone/CallFeaturesMoreSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesMoreSetting;->access$400(Lcom/android/phone/CallFeaturesMoreSetting;I)V

    .line 1030
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #calls: Lcom/android/phone/CallFeaturesMoreSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesMoreSetting;->access$500(Lcom/android/phone/CallFeaturesMoreSetting;)V

    .line 1032
    :cond_2
    return-void

    .line 985
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iput-object v4, v5, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 986
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #calls: Lcom/android/phone/CallFeaturesMoreSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/CallFeaturesMoreSetting;->access$000(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move v6, v8

    :goto_1
    iput-boolean v6, v5, Lcom/android/phone/CallFeaturesMoreSetting;->mVMChangeCompletedSuccesfully:Z

    .line 989
    const/4 v1, 0x1

    .line 990
    goto :goto_0

    :cond_3
    move v6, v7

    .line 986
    goto :goto_1

    .line 992
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #getter for: Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesMoreSetting;->access$100(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/util/Map;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_4

    .line 999
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #calls: Lcom/android/phone/CallFeaturesMoreSetting;->checkForwardingCompleted()Z
    invoke-static {v5}, Lcom/android/phone/CallFeaturesMoreSetting;->access$200(Lcom/android/phone/CallFeaturesMoreSetting;)Z

    move-result v0

    .line 1000
    .local v0, completed:Z
    if-eqz v0, :cond_0

    .line 1001
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #calls: Lcom/android/phone/CallFeaturesMoreSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesMoreSetting;->access$300(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1003
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-virtual {v5}, Lcom/android/phone/CallFeaturesMoreSetting;->setVMNumberWithCarrier()V

    goto :goto_0

    .line 1006
    :cond_5
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iput-boolean v7, v5, Lcom/android/phone/CallFeaturesMoreSetting;->mFwdChangesRequireRollback:Z

    .line 1007
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    #getter for: Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesMoreSetting;->access$100(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1009
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1010
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1011
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 1014
    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting$2;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    iput-boolean v8, v5, Lcom/android/phone/CallFeaturesMoreSetting;->mFwdChangesRequireRollback:Z

    .line 1018
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_7
    const/4 v1, 0x1

    .line 1019
    goto/16 :goto_0

    .line 983
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
