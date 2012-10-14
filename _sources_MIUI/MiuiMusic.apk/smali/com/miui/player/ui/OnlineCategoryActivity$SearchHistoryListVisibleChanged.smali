.class Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;
.super Ljava/lang/Object;
.source "OnlineCategoryActivity.java"

# interfaces
.implements Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHistoryListVisibleChanged"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineCategoryActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public onVisibleChanged(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$900(Lcom/miui/player/ui/OnlineCategoryActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$900(Lcom/miui/player/ui/OnlineCategoryActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method
