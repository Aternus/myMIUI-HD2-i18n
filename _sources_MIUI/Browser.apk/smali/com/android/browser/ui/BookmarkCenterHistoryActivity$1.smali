.class Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;
.super Ljava/lang/Object;
.source "BookmarkCenterHistoryActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

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
    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    const-class v4, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->mAdapter:Lcom/android/browser/controller/HistoryAdapter;
    invoke-static {v3}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterHistoryActivity;)Lcom/android/browser/controller/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lcom/android/browser/controller/HistoryAdapter;->getChildUrl(II)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->mAdapter:Lcom/android/browser/controller/HistoryAdapter;
    invoke-static {v3}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterHistoryActivity;)Lcom/android/browser/controller/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lcom/android/browser/controller/HistoryAdapter;->getChildMode(II)I

    move-result v1

    .line 55
    .local v1, mode:I
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    const-string v3, "mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v3, "id"

    invoke-virtual {v0, v3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    invoke-virtual {v3, v0}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    invoke-virtual {v3}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->finish()V

    .line 61
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 62
    const/4 v3, 0x1

    return v3
.end method
