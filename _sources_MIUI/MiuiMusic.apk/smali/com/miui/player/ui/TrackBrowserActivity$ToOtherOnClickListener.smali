.class Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToOtherOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$300(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.music.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "artist"

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$300(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "artistname"

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$400(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "num"

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumNum:I
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$500(Lcom/miui/player/ui/TrackBrowserActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    .line 241
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v1, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 243
    :cond_0
    return-void
.end method
