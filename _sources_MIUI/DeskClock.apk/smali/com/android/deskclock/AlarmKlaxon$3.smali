.class Lcom/android/deskclock/AlarmKlaxon$3;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmKlaxon;->play(Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x0

    .line 179
    const-string v1, "Error occurred while playing audio."

    invoke-static {v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 181
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 182
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #setter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v3}, Lcom/android/deskclock/AlarmKlaxon;->access$302(Lcom/android/deskclock/AlarmKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 183
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 184
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 185
    const/4 v1, 0x1

    return v1
.end method
