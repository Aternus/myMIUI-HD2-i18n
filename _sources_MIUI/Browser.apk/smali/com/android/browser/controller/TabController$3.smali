.class Lcom/android/browser/controller/TabController$3;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/TabController;->registerClickEvent(Lcom/android/browser/controller/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/TabController;

.field final synthetic val$thisTab:Lcom/android/browser/controller/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/TabController;Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/browser/controller/TabController$3;->this$0:Lcom/android/browser/controller/TabController;

    iput-object p2, p0, Lcom/android/browser/controller/TabController$3;->val$thisTab:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/browser/controller/TabController$3;->this$0:Lcom/android/browser/controller/TabController;

    #getter for: Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/TabController;->access$000(Lcom/android/browser/controller/TabController;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/TabController$3;->val$thisTab:Lcom/android/browser/controller/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    .line 226
    return-void
.end method
