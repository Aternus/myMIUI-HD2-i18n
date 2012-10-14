.class final Lcom/android/browser/controller/Tab$OnBarconLongClickListener;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnBarconLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/Tab;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;->this$0:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/Tab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;-><init>(Lcom/android/browser/controller/Tab;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;
    invoke-static {v1}, Lcom/android/browser/controller/Tab;->access$400(Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/NavigationHomeController;->getThumbnailAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    .line 171
    .local v0, data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v2}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070008

    new-instance v3, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;-><init>(Lcom/android/browser/controller/Tab$OnBarconLongClickListener;Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 191
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
