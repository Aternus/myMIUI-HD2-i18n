.class Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;
.super Ljava/lang/Object;
.source "OnlineCategoryActivity.java"

# interfaces
.implements Lcom/miui/player/helper/controller/SearchBarController$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchCommond"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineCategoryActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public doSearch(Ljava/lang/String;I)V
    .locals 5
    .parameter "searchInput"
    .parameter "type"

    .prologue
    .line 215
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$900(Lcom/miui/player/ui/OnlineCategoryActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 220
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$900(Lcom/miui/player/ui/OnlineCategoryActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 223
    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;
    invoke-static {v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$700(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/helper/controller/SearchBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/SearchBarController;->clearSearchInput()V

    .line 225
    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$900(Lcom/miui/player/ui/OnlineCategoryActivity;)Landroid/widget/GridView;

    move-result-object v1

    new-instance v2, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond$1;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
