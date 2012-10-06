.class Lcom/miui/player/model/SectionCursorAdapter$ScrollStateChanged;
.super Ljava/lang/Object;
.source "SectionCursorAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateChanged"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/SectionCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/player/model/SectionCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/player/model/SectionCursorAdapter$ScrollStateChanged;->this$0:Lcom/miui/player/model/SectionCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/model/SectionCursorAdapter;Lcom/miui/player/model/SectionCursorAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter$ScrollStateChanged;-><init>(Lcom/miui/player/model/SectionCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 144
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter$ScrollStateChanged;->this$0:Lcom/miui/player/model/SectionCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/player/model/SectionCursorAdapter;->updateScrollState(I)V

    .line 149
    return-void
.end method
