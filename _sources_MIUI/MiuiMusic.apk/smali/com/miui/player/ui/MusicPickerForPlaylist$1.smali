.class Lcom/miui/player/ui/MusicPickerForPlaylist$1;
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
    .line 125
    iput-object p1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$1;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$1;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->finish()V

    .line 130
    return-void
.end method
