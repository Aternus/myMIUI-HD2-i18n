.class Lcom/android/deskclock/AlarmKlaxon$4;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 189
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 194
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 195
    return-void
.end method
