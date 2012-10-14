.class Lcom/miui/fmradio/StationListAdapter$StationListItem;
.super Landroid/widget/LinearLayout;
.source "StationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/StationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StationListItem"
.end annotation


# instance fields
.field private mPlayIcon:Landroid/widget/ImageView;

.field private mStationFreq:Landroid/widget/TextView;

.field private mStationName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/fmradio/StationListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/StationListAdapter;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->this$0:Lcom/miui/fmradio/StationListAdapter;

    .line 85
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    const v0, 0x7f030006

    invoke-static {p2, v0, p0}, Lcom/miui/fmradio/StationListAdapter$StationListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/StationListAdapter$StationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mStationFreq:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/StationListAdapter$StationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mStationName:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/StationListAdapter$StationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mPlayIcon:Landroid/widget/ImageView;

    .line 90
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Z)V
    .locals 8
    .parameter "cursor"
    .parameter "isPlayingStation"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 93
    iget-object v1, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mStationFreq:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f05001a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mStationName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_0
    if-eqz p2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :goto_1
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mStationName:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mStationName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/miui/fmradio/StationListAdapter$StationListItem;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
