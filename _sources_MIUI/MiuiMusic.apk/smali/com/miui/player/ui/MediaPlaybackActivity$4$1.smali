.class Lcom/miui/player/ui/MediaPlaybackActivity$4$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MediaPlaybackActivity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/MediaPlaybackActivity$4;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$4$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$4$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$4;

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity$4;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finishParent(Landroid/app/Activity;)V

    .line 1370
    return-void
.end method
