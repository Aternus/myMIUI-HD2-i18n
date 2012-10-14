.class final Lcom/android/browser/controller/Tab$OnSiteItemClickListener;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnSiteItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/Tab;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/browser/controller/Tab$OnSiteItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/Tab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/browser/controller/Tab$OnSiteItemClickListener;-><init>(Lcom/android/browser/controller/Tab;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 156
    const v3, 0x7f090109

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, category:I
    const v3, 0x7f09010a

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 158
    .local v1, site:I
    iget-object v3, p0, Lcom/android/browser/controller/Tab$OnSiteItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v3}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/controller/NavigationHomeController;->getInstance(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/controller/NavigationHomeController;->getYellowPageData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/model/YellowPageDataProvider$Category;

    iget-object v3, v3, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/model/YellowPageDataProvider$Site;

    .line 160
    .local v2, targetSite:Lcom/android/browser/model/YellowPageDataProvider$Site;
    iget-object v3, v2, Lcom/android/browser/model/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/browser/controller/Tab$OnSiteItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    iget-object v4, v2, Lcom/android/browser/model/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method
