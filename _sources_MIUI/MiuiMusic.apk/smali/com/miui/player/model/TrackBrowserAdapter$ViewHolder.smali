.class public Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field public checkBox:Landroid/widget/CheckBox;

.field public favoriteIndicator:Landroid/widget/ImageView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field onlineIndicator:Landroid/widget/TextView;

.field playerIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
