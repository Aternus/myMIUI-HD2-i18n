.class public Lcom/miui/fmradio/StationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "StationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/StationListAdapter$StationListItem;,
        Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StationListAdapter"


# instance fields
.field private mFavoritesChangedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDatasetChangedListener:Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;

.field private mPlayingFreq:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mFavoritesChangedList:Ljava/util/HashMap;

    .line 30
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lcom/miui/fmradio/StationListAdapter$StationListItem;

    .end local p1
    invoke-direct {p1, p0, p2}, Lcom/miui/fmradio/StationListAdapter$StationListItem;-><init>(Lcom/miui/fmradio/StationListAdapter;Landroid/content/Context;)V

    .line 47
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/miui/fmradio/StationListAdapter$StationListItem;

    if-eqz v0, :cond_2

    .line 48
    check-cast p1, Lcom/miui/fmradio/StationListAdapter$StationListItem;

    .end local p1
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/fmradio/StationListAdapter;->mPlayingFreq:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, p3, v0}, Lcom/miui/fmradio/StationListAdapter$StationListItem;->bind(Landroid/database/Cursor;Z)V

    .line 53
    :goto_1
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    .restart local p1
    :cond_2
    const-string v0, "StationListAdapter"

    const-string v1, "bindView: view type is not StationListItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFavoritesChangedList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mFavoritesChangedList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getItemCursor(I)Landroid/database/Cursor;
    .locals 0
    .parameter "position"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/StationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public getPlayingFreq()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/miui/fmradio/StationListAdapter;->mPlayingFreq:I

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 38
    new-instance v0, Lcom/miui/fmradio/StationListAdapter$StationListItem;

    invoke-direct {v0, p0, p1}, Lcom/miui/fmradio/StationListAdapter$StationListItem;-><init>(Lcom/miui/fmradio/StationListAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 74
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mOnDatasetChangedListener:Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mOnDatasetChangedListener:Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;

    invoke-virtual {p0}, Lcom/miui/fmradio/StationListAdapter;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;->onDatasetChanged(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setOnDatasetChangedListener(Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/fmradio/StationListAdapter;->mOnDatasetChangedListener:Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;

    .line 65
    return-void
.end method

.method public setPlayingFreq(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 60
    iput p1, p0, Lcom/miui/fmradio/StationListAdapter;->mPlayingFreq:I

    .line 61
    return-void
.end method
