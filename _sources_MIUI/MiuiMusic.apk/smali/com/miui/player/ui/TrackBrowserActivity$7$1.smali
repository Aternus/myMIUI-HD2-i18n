.class Lcom/miui/player/ui/TrackBrowserActivity$7$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/TrackBrowserActivity$7;->onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/TrackBrowserActivity$7;

.field final synthetic val$audioIdArr:[J


# direct methods
.method constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity$7;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$7$1;->this$1:Lcom/miui/player/ui/TrackBrowserActivity$7;

    iput-object p2, p0, Lcom/miui/player/ui/TrackBrowserActivity$7$1;->val$audioIdArr:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$7$1;->this$1:Lcom/miui/player/ui/TrackBrowserActivity$7;

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$7$1;->val$audioIdArr:[J

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 1268
    return-void
.end method
