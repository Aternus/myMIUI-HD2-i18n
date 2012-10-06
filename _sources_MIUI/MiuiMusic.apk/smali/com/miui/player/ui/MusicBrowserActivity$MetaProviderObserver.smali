.class Lcom/miui/player/ui/MusicBrowserActivity$MetaProviderObserver;
.super Landroid/database/ContentObserver;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$MetaProviderObserver;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    .line 429
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 430
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 435
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$MetaProviderObserver;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/miui/player/ui/MusicBrowserActivity;->mNeedRefresh:Z
    invoke-static {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->access$302(Lcom/miui/player/ui/MusicBrowserActivity;Z)Z

    .line 436
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$MetaProviderObserver;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicBrowserActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$MetaProviderObserver;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshAfterRecovery()V

    .line 439
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->setHasSynchronized(Z)V

    .line 440
    return-void
.end method
