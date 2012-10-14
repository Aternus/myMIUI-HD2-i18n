.class Lcom/miui/player/helper/DrawableProvider$ResponseHolder;
.super Ljava/lang/Object;
.source "DrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/DrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseHolder"
.end annotation


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/helper/DrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/DrawableProvider;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "drawable"

    .prologue
    .line 228
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$ResponseHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.ResponseHolder;"
    iput-object p1, p0, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;->this$0:Lcom/miui/player/helper/DrawableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p3, p0, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    iput-object p2, p0, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;->mKey:Ljava/lang/String;

    .line 231
    return-void
.end method
