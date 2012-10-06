.class final Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;
.super Ljava/lang/Object;
.source "GroupSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/GroupSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChildViewCache"
.end annotation


# instance fields
.field public final mIcon1:Landroid/widget/ImageView;

.field public final mIcon2:Landroid/widget/ImageView;

.field public final mText1:Landroid/widget/TextView;

.field public final mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f09001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f09001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    .line 230
    const v0, 0x7f09001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    .line 231
    return-void
.end method
