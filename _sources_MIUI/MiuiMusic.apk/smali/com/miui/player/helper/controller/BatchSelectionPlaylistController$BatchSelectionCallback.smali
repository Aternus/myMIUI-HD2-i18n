.class public interface abstract Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
.super Ljava/lang/Object;
.source "BatchSelectionPlaylistController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatchSelectionCallback"
.end annotation


# virtual methods
.method public abstract allowBatchSelect()Z
.end method

.method public abstract getAllItemIds(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTotalItemCount()I
.end method

.method public abstract onEndBatchSelection(ZLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartBatchSelection()V
.end method

.method public abstract refreshByBatchSelection()V
.end method
