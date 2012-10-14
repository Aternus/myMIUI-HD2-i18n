.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallControlState$VoiceDevices;
    }
.end annotation


# instance fields
.field public bluetoothAvailable:Z

.field public canAddCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRecordCall:Z

.field public canSwap:Z

.field public currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field public isCallRecording:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public popupMorePanel:Z

.field public speakerEnabled:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 103
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 104
    return-void
.end method

.method public static isSupportCallRecording()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Landroid/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_I9000:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_T959:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public update()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 111
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 112
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 113
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v10, :cond_7

    move v3, v13

    .line 114
    .local v3, hasActiveForegroundCall:Z
    :goto_0
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 117
    .local v4, hasHoldingCall:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 121
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 122
    iget-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v10

    if-nez v10, :cond_8

    move v10, v13

    :goto_1
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 130
    :goto_2
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 132
    .local v9, oldCanAddCall:Z
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 135
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 136
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 142
    if-nez v9, :cond_a

    iget-boolean v10, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v10, :cond_a

    if-eqz v4, :cond_a

    move v10, v13

    :goto_3
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->popupMorePanel:Z

    .line 145
    sget-object v10, Lcom/android/phone/InCallControlState$VoiceDevices;->HandsetOrHeadset:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v10, p0, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 148
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 149
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothAvailable:Z

    .line 150
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 151
    sget-object v10, Lcom/android/phone/InCallControlState$VoiceDevices;->Bluetooth:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v10, p0, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 159
    :cond_0
    :goto_4
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 160
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 161
    sget-object v10, Lcom/android/phone/InCallControlState$VoiceDevices;->Speaker:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v10, p0, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 168
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 169
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const/4 v6, 0x0

    .line 170
    .local v6, isEmergencyCall:Z
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 171
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    .line 172
    .local v5, isECM:Z
    if-nez v6, :cond_3

    if-eqz v5, :cond_c

    .line 173
    :cond_3
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 174
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 182
    :goto_5
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 186
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 189
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 193
    if-eqz v4, :cond_d

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v10, :cond_d

    move v10, v13

    :goto_6
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 196
    if-eqz v3, :cond_e

    if-nez v4, :cond_e

    move v7, v13

    .line 197
    .local v7, okToHold:Z
    :goto_7
    iget-boolean v8, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 198
    .local v8, okToUnhold:Z
    if-nez v7, :cond_4

    if-eqz v8, :cond_f

    :cond_4
    move v10, v13

    :goto_8
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 199
    iget-boolean v10, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v10, v14, :cond_5

    .line 200
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-nez v10, :cond_10

    move v10, v13

    :goto_9
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 203
    :cond_5
    invoke-static {}, Lcom/android/phone/InCallControlState;->isSupportCallRecording()Z

    move-result v10

    if-eqz v10, :cond_11

    if-nez v4, :cond_6

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v10, v14, :cond_11

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_11

    :cond_6
    move v10, v13

    :goto_a
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canRecordCall:Z

    .line 207
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isCallRecording()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->isCallRecording:Z

    .line 210
    return-void

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #hasActiveForegroundCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #isECM:Z
    .end local v6           #isEmergencyCall:Z
    .end local v7           #okToHold:Z
    .end local v8           #okToUnhold:Z
    .end local v9           #oldCanAddCall:Z
    :cond_7
    move v3, v12

    .line 113
    goto/16 :goto_0

    .restart local v3       #hasActiveForegroundCall:Z
    .restart local v4       #hasHoldingCall:Z
    :cond_8
    move v10, v12

    .line 122
    goto/16 :goto_1

    .line 126
    :cond_9
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 127
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_2

    .restart local v9       #oldCanAddCall:Z
    :cond_a
    move v10, v12

    .line 142
    goto/16 :goto_3

    .line 154
    :cond_b
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothAvailable:Z

    goto/16 :goto_4

    .line 176
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v5       #isECM:Z
    .restart local v6       #isEmergencyCall:Z
    :cond_c
    iput-boolean v3, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 177
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_5

    :cond_d
    move v10, v12

    .line 193
    goto :goto_6

    :cond_e
    move v7, v12

    .line 196
    goto :goto_7

    .restart local v7       #okToHold:Z
    .restart local v8       #okToUnhold:Z
    :cond_f
    move v10, v12

    .line 198
    goto :goto_8

    :cond_10
    move v10, v12

    .line 200
    goto :goto_9

    :cond_11
    move v10, v12

    .line 203
    goto :goto_a
.end method
