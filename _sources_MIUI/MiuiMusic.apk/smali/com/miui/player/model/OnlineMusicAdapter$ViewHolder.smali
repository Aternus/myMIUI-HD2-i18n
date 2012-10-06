.class Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OnlineMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/OnlineMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public final artistNameText:Landroid/widget/TextView;

.field public final favoriteIndicator:Landroid/widget/ImageView;

.field public final playIndicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/player/model/OnlineMusicAdapter;

.field public final trackNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/OnlineMusicAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->this$0:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const v0, 0x7f0c005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0c00a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0c005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->trackNameText:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0c005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->artistNameText:Landroid/widget/TextView;

    .line 161
    return-void
.end method
