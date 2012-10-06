.class public Lcom/miui/notes/ui/AlarmAlertActivity;
.super Landroid/app/Activity;
.source "AlarmAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mNoteId:J

.field mPlayer:Landroid/media/MediaPlayer;

.field private mSnippet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 72
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/AlarmAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 73
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private playAlarmSound()V
    .locals 10

    .prologue
    const/4 v3, 0x4

    .line 77
    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    .line 79
    .local v9, url:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 82
    .local v8, silentModeStreams:I
    and-int/lit8 v0, v8, 0x10

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 88
    :goto_0
    if-nez v9, :cond_2

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 91
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 94
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 99
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 100
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 101
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 115
    :goto_2
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 97
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, v9}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 104
    .local v7, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 107
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 108
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 110
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 111
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    move-object v7, v0

    .line 113
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private showActionDialog()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v1, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 122
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v1, 0x7f08000d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-direct {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const v1, 0x7f08000e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    return-void
.end method

.method private stopAlarmSound()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 153
    iget-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 132
    packed-switch p2, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 134
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "android.intent.extra.UID"

    iget-wide v2, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mNoteId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/AlarmAlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x3c

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v3}, Lcom/miui/notes/ui/AlarmAlertActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 40
    .local v2, win:Landroid/view/Window;
    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 42
    invoke-direct {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    const v3, 0x210081

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mNoteId:J

    .line 53
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mNoteId:J

    invoke-static {v3, v4, v5}, Lcom/miui/notes/tool/DataUtils;->getSnippetById(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mSnippet:Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mSnippet:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x3c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 63
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mNoteId:J

    invoke-static {v3, v4, v5, v7}, Lcom/miui/notes/tool/DataUtils;->visibleInNoteDatabase(Landroid/content/ContentResolver;JI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->showActionDialog()V

    .line 65
    invoke-direct {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->playAlarmSound()V

    .line 69
    :goto_1
    return-void

    .line 54
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/notes/ui/AlarmAlertActivity;->mSnippet:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 58
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->finish()V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->stopAlarmSound()V

    .line 147
    invoke-virtual {p0}, Lcom/miui/notes/ui/AlarmAlertActivity;->finish()V

    .line 148
    return-void
.end method
