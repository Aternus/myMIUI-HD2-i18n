.class Lcom/miui/player/helper/DrawableProvider$RequestHolder;
.super Ljava/lang/Object;
.source "DrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/DrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHolder"
.end annotation


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field public final mInfo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/helper/DrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/DrawableProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter
    .parameter "imageView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$RequestHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;"
    .local p3, info:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/miui/player/helper/DrawableProvider$RequestHolder;->this$0:Lcom/miui/player/helper/DrawableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/miui/player/helper/DrawableProvider$RequestHolder;->mKey:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/miui/player/helper/DrawableProvider$RequestHolder;->mInfo:Ljava/lang/Object;

    .line 244
    iput-object p4, p0, Lcom/miui/player/helper/DrawableProvider$RequestHolder;->mImageView:Landroid/widget/ImageView;

    .line 245
    return-void
.end method
