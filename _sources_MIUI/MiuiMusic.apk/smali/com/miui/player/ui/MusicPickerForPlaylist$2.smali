.class Lcom/miui/player/ui/MusicPickerForPlaylist$2;
.super Ljava/lang/Object;
.source "MusicPickerForPlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MusicPickerForPlaylist;->initBottom(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$2;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "audioid_list"

    iget-object v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$2;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v2}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/model/MusicPickerAdapter;->getSelectAudioList()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$2;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->setResult(ILandroid/content/Intent;)V

    .line 140
    iget-object v1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$2;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    invoke-virtual {v1}, Lcom/miui/player/ui/MusicPickerForPlaylist;->finish()V

    .line 141
    return-void
.end method
