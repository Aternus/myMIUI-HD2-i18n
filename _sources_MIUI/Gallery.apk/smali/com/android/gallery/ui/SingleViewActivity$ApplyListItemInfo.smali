.class Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;
.super Ljava/lang/Object;
.source "SingleViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/SingleViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplyListItemInfo"
.end annotation


# instance fields
.field mIconId:I

.field mTitleId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "iconId"
    .parameter "titleId"

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput p1, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;->mIconId:I

    .line 666
    iput p2, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;->mTitleId:I

    .line 667
    return-void
.end method
