.class Lcom/miui/player/ui/TrackBrowserActivity$6;
.super Landroid/database/DataSetObserver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$6;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1211
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1212
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$6;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->refreshHeader()V

    .line 1213
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$6;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$6;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->updateListHeader(Landroid/widget/ListAdapter;)V

    .line 1214
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 1218
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1219
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$6;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->refreshHeader()V

    .line 1220
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$6;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$6;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->updateListHeader(Landroid/widget/ListAdapter;)V

    .line 1221
    return-void
.end method
