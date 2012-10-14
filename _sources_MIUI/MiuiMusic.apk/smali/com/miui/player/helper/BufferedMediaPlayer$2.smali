.class Lcom/miui/player/helper/BufferedMediaPlayer$2;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

.field final synthetic val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$2;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iput-object p2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$2;->val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$2;->val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$2;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$300(Lcom/miui/player/helper/BufferedMediaPlayer;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;->onBlockingChanged(Z)V

    .line 803
    return-void
.end method
