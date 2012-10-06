.class Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "NormalSingleViewInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/NormalSingleViewInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/NormalSingleViewInteraction;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;->mContext:Landroid/content/Context;

    .line 173
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, -0x1

    .line 192
    if-nez p2, :cond_0

    .line 193
    new-instance p2, Lcom/android/gallery/view/MultiTouchView;

    .end local p2
    iget-object v2, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/android/gallery/view/MultiTouchView;-><init>(Landroid/content/Context;)V

    .line 195
    .restart local p2
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/gallery/view/MultiTouchView;

    move-object v1, v0

    .line 197
    .local v1, v:Lcom/android/gallery/view/MultiTouchView;
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/gallery/view/MultiTouchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v2, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/NormalSingleViewInteraction;->mMeta:Lcom/android/gallery/data/UriMeta;
    invoke-static {v2}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->access$300(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Lcom/android/gallery/data/UriMeta;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery/view/MultiTouchView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    .line 200
    return-object v1
.end method
