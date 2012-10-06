.class Lcom/android/mms/ui/AudioAttachmentView$1;
.super Ljava/lang/Object;
.source "AudioAttachmentView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AudioAttachmentView;->startAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AudioAttachmentView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AudioAttachmentView;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/ui/AudioAttachmentView$1;->this$0:Lcom/android/mms/ui/AudioAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView$1;->this$0:Lcom/android/mms/ui/AudioAttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 96
    return-void
.end method
