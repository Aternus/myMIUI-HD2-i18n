.class public Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field albumImageView:Landroid/widget/ImageView;

.field public albumTextView:Landroid/widget/TextView;

.field public artistTextView:Landroid/widget/TextView;

.field play_indicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
