.class Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToTrackClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;Lcom/miui/player/ui/AlbumBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 496
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    #getter for: Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$100(Lcom/miui/player/ui/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v1, "artist"

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    #getter for: Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$100(Lcom/miui/player/ui/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v1, "num"

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    #getter for: Lcom/miui/player/ui/AlbumBrowserActivity;->mSongNum:I
    invoke-static {v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$200(Lcom/miui/player/ui/AlbumBrowserActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->finish()V

    .line 502
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v1, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 504
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
