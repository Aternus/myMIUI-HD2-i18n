.class public abstract Lcom/miui/fmradio/IFMRadioPlayerService$Stub;
.super Landroid/os/Binder;
.source "IFMRadioPlayerService.java"

# interfaces
.implements Lcom/miui/fmradio/IFMRadioPlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/IFMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/IFMRadioPlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.fmradio.IFMRadioPlayerService"

.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_getAudioRouting:I = 0xa

.field static final TRANSACTION_getServiceStatus:I = 0x1

.field static final TRANSACTION_getVolume:I = 0x7

.field static final TRANSACTION_isMute:I = 0x9

.field static final TRANSACTION_isPhoneStatusIdle:I = 0xc

.field static final TRANSACTION_open:I = 0x2

.field static final TRANSACTION_seek:I = 0x5

.field static final TRANSACTION_setFMSwitchOffFlag:I = 0xb

.field static final TRANSACTION_setMute:I = 0x8

.field static final TRANSACTION_setVolume:I = 0x6

.field static final TRANSACTION_tune:I = 0x4

.field static final TRANSACTION_unmuteFMOnResume:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFMRadioPlayerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/fmradio/IFMRadioPlayerService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/fmradio/IFMRadioPlayerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "com.miui.fmradio.IFMRadioPlayerService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->getServiceStatus()I

    move-result v1

    .line 49
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 51
    goto :goto_0

    .line 55
    .end local v1           #_result:I
    :sswitch_2
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->open()Z

    move-result v1

    .line 57
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 59
    goto :goto_0

    :cond_0
    move v2, v5

    .line 58
    goto :goto_1

    .line 63
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->close()Z

    move-result v1

    .line 65
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 67
    goto :goto_0

    :cond_1
    move v2, v5

    .line 66
    goto :goto_2

    .line 71
    .end local v1           #_result:Z
    :sswitch_4
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->tune(I)Z

    move-result v1

    .line 75
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v1, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 77
    goto :goto_0

    :cond_2
    move v2, v5

    .line 76
    goto :goto_3

    .line 81
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->seek(I)Z

    move-result v1

    .line 85
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v1, :cond_3

    move v2, v3

    :goto_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 87
    goto :goto_0

    :cond_3
    move v2, v5

    .line 86
    goto :goto_4

    .line 91
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_6
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->setVolume(I)Z

    move-result v1

    .line 95
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v1, :cond_4

    move v2, v3

    :goto_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 97
    goto/16 :goto_0

    :cond_4
    move v2, v5

    .line 96
    goto :goto_5

    .line 101
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_7
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->getVolume()I

    move-result v1

    .line 103
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 105
    goto/16 :goto_0

    .line 109
    .end local v1           #_result:I
    :sswitch_8
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->setMute(I)Z

    move-result v1

    .line 113
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v1, :cond_5

    move v2, v3

    :goto_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 115
    goto/16 :goto_0

    :cond_5
    move v2, v5

    .line 114
    goto :goto_6

    .line 119
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_9
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->isMute()Z

    move-result v1

    .line 121
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v1, :cond_6

    move v2, v3

    :goto_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 123
    goto/16 :goto_0

    :cond_6
    move v2, v5

    .line 122
    goto :goto_7

    .line 127
    .end local v1           #_result:Z
    :sswitch_a
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->getAudioRouting()I

    move-result v1

    .line 129
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v1           #_result:I
    :sswitch_b
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v3

    .line 138
    .local v0, _arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->setFMSwitchOffFlag(Z)Z

    move-result v1

    .line 139
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v1, :cond_8

    move v2, v3

    :goto_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 141
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_7
    move v0, v5

    .line 137
    goto :goto_8

    .restart local v0       #_arg0:Z
    .restart local v1       #_result:Z
    :cond_8
    move v2, v5

    .line 140
    goto :goto_9

    .line 145
    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :sswitch_c
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->isPhoneStatusIdle()Z

    move-result v1

    .line 147
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v1, :cond_9

    move v2, v3

    :goto_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 149
    goto/16 :goto_0

    :cond_9
    move v2, v5

    .line 148
    goto :goto_a

    .line 153
    .end local v1           #_result:Z
    :sswitch_d
    const-string v2, "com.miui.fmradio.IFMRadioPlayerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->unmuteFMOnResume()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 156
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
