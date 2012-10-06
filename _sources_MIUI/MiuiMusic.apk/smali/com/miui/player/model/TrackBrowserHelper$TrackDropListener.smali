.class public Lcom/miui/player/model/TrackBrowserHelper$TrackDropListener;
.super Ljava/lang/Object;
.source "TrackBrowserHelper.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackDropListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/TrackBrowserHelper;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/TrackBrowserHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserHelper$TrackDropListener;->this$0:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserHelper$TrackDropListener;->this$0:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/model/TrackBrowserHelper;->dropTrack(II)V

    .line 693
    return-void
.end method
