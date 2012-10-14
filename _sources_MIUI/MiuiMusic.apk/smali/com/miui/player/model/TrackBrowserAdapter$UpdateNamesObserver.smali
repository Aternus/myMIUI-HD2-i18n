.class Lcom/miui/player/model/TrackBrowserAdapter$UpdateNamesObserver;
.super Landroid/database/ContentObserver;
.source "TrackBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateNamesObserver"
.end annotation


# instance fields
.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/model/TrackBrowserAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/player/model/TrackBrowserAdapter;)V
    .locals 1
    .parameter "handler"
    .parameter "adapter"

    .prologue
    .line 544
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 545
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter$UpdateNamesObserver;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 546
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 551
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter$UpdateNamesObserver;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/model/TrackBrowserAdapter;

    .line 552
    .local v0, a:Lcom/miui/player/model/TrackBrowserAdapter;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->updateAppointNames()V

    .line 555
    :cond_0
    return-void
.end method
