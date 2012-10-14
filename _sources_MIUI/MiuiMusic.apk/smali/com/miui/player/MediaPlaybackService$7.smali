.class Lcom/miui/player/MediaPlaybackService$7;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/MediaPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 971
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 973
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v2, v3}, Lcom/miui/player/MediaPlaybackService;->access$2000(Lcom/miui/player/MediaPlaybackService;Z)V

    .line 974
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mOneShot:Z
    invoke-static {v2, v3}, Lcom/miui/player/MediaPlaybackService;->access$502(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 978
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 984
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 985
    .local v1, cardId:I
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mCardId:I
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$2200(Lcom/miui/player/MediaPlaybackService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$2300(Lcom/miui/player/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 986
    :cond_2
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$2408(Lcom/miui/player/MediaPlaybackService;)I

    .line 987
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mCardId:I
    invoke-static {v2, v1}, Lcom/miui/player/MediaPlaybackService;->access$2202(Lcom/miui/player/MediaPlaybackService;I)I

    .line 988
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->reloadQueue()V
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$2500(Lcom/miui/player/MediaPlaybackService;)V

    .line 989
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v3, "com.miui.player.queuechanged"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/miui/player/MediaPlaybackService;->access$600(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 990
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$7;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v3, "meta_changed_track"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/miui/player/MediaPlaybackService;->access$1400(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
