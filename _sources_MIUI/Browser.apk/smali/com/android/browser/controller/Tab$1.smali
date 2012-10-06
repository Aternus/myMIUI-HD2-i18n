.class Lcom/android/browser/controller/Tab$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/Tab;->fillFavorite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/Tab;

.field final synthetic val$adapter:Lcom/android/browser/controller/HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/HistoryAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/browser/controller/Tab$1;->this$0:Lcom/android/browser/controller/Tab;

    iput-object p2, p0, Lcom/android/browser/controller/Tab$1;->val$adapter:Lcom/android/browser/controller/HistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/browser/controller/Tab$1;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v3}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v3

    const-class v4, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v3, p0, Lcom/android/browser/controller/Tab$1;->val$adapter:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/browser/controller/HistoryAdapter;->getChildUrl(II)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/controller/Tab$1;->val$adapter:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/browser/controller/HistoryAdapter;->getChildMode(II)I

    move-result v1

    .line 399
    .local v1, mode:I
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    const-string v3, "mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v3, "id"

    invoke-virtual {v0, v3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 402
    iget-object v3, p0, Lcom/android/browser/controller/Tab$1;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v3}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 403
    const/4 v3, 0x1

    return v3
.end method
