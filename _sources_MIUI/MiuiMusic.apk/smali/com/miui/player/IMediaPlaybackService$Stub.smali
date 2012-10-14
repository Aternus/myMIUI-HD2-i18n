.class public abstract Lcom/miui/player/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.player.IMediaPlaybackService"

.field static final TRANSACTION_duration:I = 0xc

.field static final TRANSACTION_enqueue:I = 0x14

.field static final TRANSACTION_getAbsolutePath:I = 0x25

.field static final TRANSACTION_getAlbumId:I = 0x11

.field static final TRANSACTION_getAlbumName:I = 0x10

.field static final TRANSACTION_getArtistId:I = 0x13

.field static final TRANSACTION_getArtistName:I = 0x12

.field static final TRANSACTION_getAudioId:I = 0x19

.field static final TRANSACTION_getBufferedPercent:I = 0x29

.field static final TRANSACTION_getBufferedPosition:I = 0x27

.field static final TRANSACTION_getLyricStatus:I = 0x24

.field static final TRANSACTION_getMediaMountedCount:I = 0x22

.field static final TRANSACTION_getOnlineId:I = 0x1a

.field static final TRANSACTION_getPath:I = 0x18

.field static final TRANSACTION_getQueue:I = 0x15

.field static final TRANSACTION_getQueuePosition:I = 0x3

.field static final TRANSACTION_getRepeatMode:I = 0x1e

.field static final TRANSACTION_getShuffleMode:I = 0x1d

.field static final TRANSACTION_getTrackName:I = 0xf

.field static final TRANSACTION_isBlocking:I = 0x26

.field static final TRANSACTION_isBuffering:I = 0x5

.field static final TRANSACTION_isOneShot:I = 0x23

.field static final TRANSACTION_isPlaying:I = 0x4

.field static final TRANSACTION_moveQueueItem:I = 0x16

.field static final TRANSACTION_next:I = 0xb

.field static final TRANSACTION_open:I = 0x2

.field static final TRANSACTION_openFile:I = 0x1

.field static final TRANSACTION_pause:I = 0x8

.field static final TRANSACTION_play:I = 0x9

.field static final TRANSACTION_position:I = 0xd

.field static final TRANSACTION_prev:I = 0xa

.field static final TRANSACTION_quit:I = 0x6

.field static final TRANSACTION_removeTrack:I = 0x21

.field static final TRANSACTION_removeTracks:I = 0x1f

.field static final TRANSACTION_removeTracksBatch:I = 0x20

.field static final TRANSACTION_seek:I = 0xe

.field static final TRANSACTION_setQueuePosition:I = 0x17

.field static final TRANSACTION_setRepeatMode:I = 0x1c

.field static final TRANSACTION_setShuffleMode:I = 0x1b

.field static final TRANSACTION_stop:I = 0x7

.field static final TRANSACTION_updateEqualizerBands:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/player/IMediaPlaybackService;
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
    const-string v1, "com.miui.player.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/player/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/player/IMediaPlaybackService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/player/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/player/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.miui.player.IMediaPlaybackService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v6

    .line 52
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 54
    goto :goto_0

    .end local v2           #_arg1:Z
    :cond_0
    move v2, v8

    .line 51
    goto :goto_1

    .line 58
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 62
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->open([JI)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 65
    goto :goto_0

    .line 69
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 71
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 73
    goto :goto_0

    .line 77
    .end local v3           #_result:I
    :sswitch_4
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 79
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v3, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 81
    goto :goto_0

    :cond_1
    move v5, v8

    .line 80
    goto :goto_2

    .line 85
    .end local v3           #_result:Z
    :sswitch_5
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->isBuffering()Z

    move-result v3

    .line 87
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v3, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 89
    goto :goto_0

    :cond_2
    move v5, v8

    .line 88
    goto :goto_3

    .line 93
    .end local v3           #_result:Z
    :sswitch_6
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->quit()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 96
    goto :goto_0

    .line 100
    :sswitch_7
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->stop()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 103
    goto/16 :goto_0

    .line 107
    :sswitch_8
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->pause()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 110
    goto/16 :goto_0

    .line 114
    :sswitch_9
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->play()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 117
    goto/16 :goto_0

    .line 121
    :sswitch_a
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->prev()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 124
    goto/16 :goto_0

    .line 128
    :sswitch_b
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->next()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 131
    goto/16 :goto_0

    .line 135
    :sswitch_c
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 137
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 139
    goto/16 :goto_0

    .line 143
    .end local v3           #_result:J
    :sswitch_d
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 145
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 147
    goto/16 :goto_0

    .line 151
    .end local v3           #_result:J
    :sswitch_e
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 154
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/miui/player/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 155
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 157
    goto/16 :goto_0

    .line 161
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_f
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 165
    goto/16 :goto_0

    .line 169
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 173
    goto/16 :goto_0

    .line 177
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 179
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 181
    goto/16 :goto_0

    .line 185
    .end local v3           #_result:J
    :sswitch_12
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 189
    goto/16 :goto_0

    .line 193
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v3

    .line 195
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 197
    goto/16 :goto_0

    .line 201
    .end local v3           #_result:J
    :sswitch_14
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 205
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 208
    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_15
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v3

    .line 214
    .local v3, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 216
    goto/16 :goto_0

    .line 220
    .end local v3           #_result:[J
    :sswitch_16
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 227
    goto/16 :goto_0

    .line 231
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_17
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 236
    goto/16 :goto_0

    .line 240
    .end local v0           #_arg0:I
    :sswitch_18
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 244
    goto/16 :goto_0

    .line 248
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_19
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v3

    .line 250
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 252
    goto/16 :goto_0

    .line 256
    .end local v3           #_result:J
    :sswitch_1a
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 260
    goto/16 :goto_0

    .line 264
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 269
    goto/16 :goto_0

    .line 273
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 278
    goto/16 :goto_0

    .line 282
    .end local v0           #_arg0:I
    :sswitch_1d
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 284
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 286
    goto/16 :goto_0

    .line 290
    .end local v3           #_result:I
    :sswitch_1e
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 292
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 294
    goto/16 :goto_0

    .line 298
    .end local v3           #_result:I
    :sswitch_1f
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v3

    .line 304
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 306
    goto/16 :goto_0

    .line 310
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_result:I
    :sswitch_20
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 313
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->removeTracksBatch([I)I

    move-result v3

    .line 314
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 316
    goto/16 :goto_0

    .line 320
    .end local v0           #_arg0:[I
    .end local v3           #_result:I
    :sswitch_21
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 323
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/miui/player/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v3

    .line 324
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 326
    goto/16 :goto_0

    .line 330
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_22
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 332
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 334
    goto/16 :goto_0

    .line 338
    .end local v3           #_result:I
    :sswitch_23
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->isOneShot()Z

    move-result v3

    .line 340
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v3, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 342
    goto/16 :goto_0

    :cond_3
    move v5, v8

    .line 341
    goto :goto_4

    .line 346
    .end local v3           #_result:Z
    :sswitch_24
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getLyricStatus()I

    move-result v3

    .line 348
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 350
    goto/16 :goto_0

    .line 354
    .end local v3           #_result:I
    :sswitch_25
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 358
    goto/16 :goto_0

    .line 362
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_26
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->isBlocking()Z

    move-result v3

    .line 364
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v3, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 366
    goto/16 :goto_0

    :cond_4
    move v5, v8

    .line 365
    goto :goto_5

    .line 370
    .end local v3           #_result:Z
    :sswitch_27
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getBufferedPosition()J

    move-result-wide v3

    .line 372
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 374
    goto/16 :goto_0

    .line 378
    .end local v3           #_result:J
    :sswitch_28
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 381
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->updateEqualizerBands([I)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 383
    goto/16 :goto_0

    .line 387
    .end local v0           #_arg0:[I
    :sswitch_29
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getBufferedPercent()F

    move-result v3

    .line 389
    .local v3, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    move v5, v6

    .line 391
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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
