.class Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;
.super Ljava/lang/Object;
.source "BookmarkCenterMostVisitedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 38
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    const-class v4, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->mAdapter:Lcom/android/browser/controller/BookmarkAdapter;
    invoke-static {v3}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;)Lcom/android/browser/controller/BookmarkAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/browser/controller/BookmarkAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->mAdapter:Lcom/android/browser/controller/BookmarkAdapter;
    invoke-static {v3}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;)Lcom/android/browser/controller/BookmarkAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/browser/controller/BookmarkAdapter;->getMode(I)I

    move-result v1

    .line 42
    .local v1, mode:I
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    const-string v3, "mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v3, "id"

    invoke-virtual {v0, v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 46
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    invoke-virtual {v3, v0}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->setResult(ILandroid/content/Intent;)V

    .line 49
    iget-object v3, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    invoke-virtual {v3}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->finish()V

    .line 51
    return-void
.end method
