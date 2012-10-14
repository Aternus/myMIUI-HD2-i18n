.class Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileSingleViewInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/FileSingleViewInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/FileSingleViewInteraction;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;->this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;->this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->access$000(Lcom/android/gallery/ui/FileSingleViewInteraction;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;->this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->access$000(Lcom/android/gallery/ui/FileSingleViewInteraction;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, -0x1

    .line 93
    if-nez p2, :cond_0

    .line 94
    new-instance p2, Lcom/android/gallery/view/MultiTouchView;

    .end local p2
    iget-object v3, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/android/gallery/view/MultiTouchView;-><init>(Landroid/content/Context;)V

    .line 96
    .restart local p2
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/gallery/view/MultiTouchView;

    move-object v2, v0

    .line 98
    .local v2, v:Lcom/android/gallery/view/MultiTouchView;
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/gallery/view/MultiTouchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v3, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;->this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v3}, Lcom/android/gallery/ui/FileSingleViewInteraction;->access$000(Lcom/android/gallery/ui/FileSingleViewInteraction;)Lcom/android/gallery/data/FileBucket;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v1

    .line 101
    .local v1, meta:Lcom/android/gallery/data/BaseMeta;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/gallery/view/MultiTouchView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V

    .line 103
    return-object v2
.end method
