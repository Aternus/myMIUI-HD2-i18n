.class Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;
.super Landroid/os/Handler;
.source "PreferedNetworkTypeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferedNetworkTypeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/PreferedNetworkTypeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PreferedNetworkTypeListPreference;Lcom/android/phone/PreferedNetworkTypeListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;-><init>(Lcom/android/phone/PreferedNetworkTypeListPreference;)V

    return-void
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    #calls: Lcom/android/phone/PreferedNetworkTypeListPreference;->getCheckedPreference()Landroid/preference/RadioButtonPreference;
    invoke-static {v0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$400(Lcom/android/phone/PreferedNetworkTypeListPreference;)Landroid/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const-string v5, "PreferedNetworkTypeListPreference"

    .line 201
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 203
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 204
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 205
    .local v1, type:I
    const-string v2, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->setValue(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    #setter for: Lcom/android/phone/PreferedNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v2, v1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$102(Lcom/android/phone/PreferedNetworkTypeListPreference;I)I

    .line 213
    .end local v1           #type:I
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v2, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, v4}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->setEnabled(Z)V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const-string v4, "PreferedNetworkTypeListPreference"

    .line 216
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 218
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 220
    invoke-direct {p0, v3}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->setEnabled(Z)V

    .line 222
    const-string v1, "PreferedNetworkTypeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set preferred network type, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    #getter for: Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$500(Lcom/android/phone/PreferedNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    invoke-virtual {v1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->finish()V

    .line 232
    return-void

    .line 225
    :cond_0
    const-string v1, "PreferedNetworkTypeListPreference"

    const-string v1, "set preferred network type done"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    #getter for: Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$500(Lcom/android/phone/PreferedNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-direct {p0}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    invoke-virtual {v0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    #calls: Lcom/android/phone/PreferedNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$200(Lcom/android/phone/PreferedNetworkTypeListPreference;Ljava/lang/String;)V

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
