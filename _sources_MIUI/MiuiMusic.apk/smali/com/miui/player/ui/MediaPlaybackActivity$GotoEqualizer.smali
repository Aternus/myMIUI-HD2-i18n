.class Lcom/miui/player/ui/MediaPlaybackActivity$GotoEqualizer;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GotoEqualizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GotoEqualizer;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1889
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$GotoEqualizer;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.EQUALIZER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1894
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GotoEqualizer;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/16 v2, 0x23

    invoke-virtual {v1, v0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1895
    return-void
.end method
