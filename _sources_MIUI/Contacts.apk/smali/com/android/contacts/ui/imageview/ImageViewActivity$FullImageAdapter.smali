.class Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/imageview/ImageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/imageview/ImageViewActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;->mContext:Landroid/content/Context;

    .line 169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    #getter for: Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->access$000(Lcom/android/contacts/ui/imageview/ImageViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    #getter for: Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->access$000(Lcom/android/contacts/ui/imageview/ImageViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    #getter for: Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->access$000(Lcom/android/contacts/ui/imageview/ImageViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 189
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

    .line 194
    if-nez p2, :cond_0

    .line 195
    new-instance p2, Lcom/android/contacts/ui/imageview/MultiTouchView;

    .end local p2
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/android/contacts/ui/imageview/MultiTouchView;-><init>(Landroid/content/Context;)V

    .line 197
    .restart local p2
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object v1, v0

    .line 199
    .local v1, i:Lcom/android/contacts/ui/imageview/MultiTouchView;
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    #getter for: Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->access$000(Lcom/android/contacts/ui/imageview/ImageViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setBitmap(Landroid/graphics/Bitmap;I)V

    .line 203
    return-object v1
.end method
