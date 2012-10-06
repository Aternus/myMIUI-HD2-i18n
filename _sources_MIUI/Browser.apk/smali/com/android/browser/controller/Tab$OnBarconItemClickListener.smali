.class final Lcom/android/browser/controller/Tab$OnBarconItemClickListener;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnBarconItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/Tab;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/Tab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;-><init>(Lcom/android/browser/controller/Tab;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;
    invoke-static {v1}, Lcom/android/browser/controller/Tab;->access$400(Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/NavigationHomeController;->getThumbnailAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    .line 200
    .local v0, data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    iget-object v2, v0, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;
    invoke-static {v1}, Lcom/android/browser/controller/Tab;->access$400(Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/NavigationHomeController;->addNewThumbnail()V

    .line 204
    iget-object v1, p0, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v1}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/model/NavigationHomeDataLoader;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/NavigationHomeDataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/model/NavigationHomeDataLoader;->notifyChanged()V

    goto :goto_0
.end method
