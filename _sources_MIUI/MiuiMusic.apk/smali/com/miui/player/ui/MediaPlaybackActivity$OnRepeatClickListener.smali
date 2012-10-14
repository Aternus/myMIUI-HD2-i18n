.class Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRepeatClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1629
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/miui/player/MusicUtils$ScanInfo;)V
    .locals 1
    .parameter "scanInfo"

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->refreshTimeIndicator()V
    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3100(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 1634
    return-void
.end method
