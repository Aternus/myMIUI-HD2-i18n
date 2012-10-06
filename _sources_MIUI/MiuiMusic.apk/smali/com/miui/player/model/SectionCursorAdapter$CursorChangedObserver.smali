.class Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;
.super Landroid/database/ContentObserver;
.source "SectionCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorChangedObserver"
.end annotation


# instance fields
.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/model/SectionCursorAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursorAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "adapter"
    .parameter "handler"

    .prologue
    .line 157
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 159
    return-void
.end method

.method private updateSectionInfo()V
    .locals 5

    .prologue
    .line 168
    iget-object v4, p0, Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/model/SectionCursorAdapter;

    .line 169
    .local v1, adapter:Lcom/miui/player/model/SectionCursorAdapter;
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/miui/player/model/SectionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 171
    .local v2, c:Landroid/database/Cursor;
    instance-of v4, v2, Lcom/miui/player/model/SectionCursor;

    if-eqz v4, :cond_0

    .line 172
    move-object v0, v2

    check-cast v0, Lcom/miui/player/model/SectionCursor;

    move-object v3, v0

    .line 175
    .local v3, sc:Lcom/miui/player/model/SectionCursor;
    invoke-virtual {v3}, Lcom/miui/player/model/SectionCursor;->resetSectionInfo()V

    .line 176
    invoke-virtual {v1, v3}, Lcom/miui/player/model/SectionCursorAdapter;->setSectionIndexer(Landroid/database/Cursor;)V

    .line 179
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #sc:Lcom/miui/player/model/SectionCursor;
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 164
    invoke-direct {p0}, Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;->updateSectionInfo()V

    .line 165
    return-void
.end method
