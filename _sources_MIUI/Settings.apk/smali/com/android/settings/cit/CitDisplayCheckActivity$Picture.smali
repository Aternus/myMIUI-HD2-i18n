.class Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;
.super Ljava/lang/Object;
.source "CitDisplayCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitDisplayCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Picture"
.end annotation


# instance fields
.field private mBmpFilePath:Ljava/lang/String;

.field private mColor:I

.field final synthetic this$0:Lcom/android/settings/cit/CitDisplayCheckActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V
    .locals 1
    .parameter
    .parameter "color"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->this$0:Lcom/android/settings/cit/CitDisplayCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->mColor:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->mBmpFilePath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/cit/CitDisplayCheckActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->this$0:Lcom/android/settings/cit/CitDisplayCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->mBmpFilePath:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->mColor:I

    .line 38
    return-void
.end method


# virtual methods
.method public getImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 41
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, view:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->mBmpFilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 43
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->mBmpFilePath:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 44
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-object v1

    .line 46
    :cond_0
    iget v2, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->mColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method
