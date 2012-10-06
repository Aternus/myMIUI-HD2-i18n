.class Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;
.super Ljava/lang/Object;
.source "BookmarkCenterFavoriteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 334
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$100(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    const-class v1, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$200(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$200(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getMode(I)I

    move-result v7

    .line 340
    .local v7, mode:I
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 341
    const-string v0, "mode"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string v0, "id"

    invoke-virtual {v6, v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v0, v6}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->startActivity(Landroid/content/Intent;)V

    .line 344
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v6}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->setResult(ILandroid/content/Intent;)V

    .line 345
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->finish()V

    .line 371
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mode:I
    .end local v8           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 350
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    const-class v1, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v8

    .line 354
    .restart local v8       #url:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getMode(I)I

    move-result v7

    .line 355
    .restart local v7       #mode:I
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 356
    const-string v0, "mode"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v0, "id"

    invoke-virtual {v6, v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 359
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v0, v6}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->startActivity(Landroid/content/Intent;)V

    .line 360
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v6}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->setResult(ILandroid/content/Intent;)V

    .line 361
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->finish()V

    goto :goto_0

    .line 363
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mode:I
    .end local v8           #url:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mInFolder:Z
    invoke-static {v0, v1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$102(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;Z)Z

    .line 364
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$000(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getItemId(I)J

    move-result-wide v2

    .line 365
    .local v2, folderId:J
    iget-object v6, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    new-instance v0, Lcom/android/browser/controller/BookmarkFolderAdapter;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    iget-object v4, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mSortOrder:I
    invoke-static {v4}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$300(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;
    invoke-static {v5}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$400(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Landroid/widget/SortableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/controller/BookmarkFolderAdapter;-><init>(Landroid/app/Activity;JILandroid/view/View$OnTouchListener;)V

    #setter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v6, v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$202(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;Lcom/android/browser/controller/BookmarkFolderAdapter;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    .line 367
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$400(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Landroid/widget/SortableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setSpecialItemCount(I)V

    .line 368
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$400(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Landroid/widget/SortableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mChildAdapter:Lcom/android/browser/controller/BookmarkFolderAdapter;
    invoke-static {v1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$200(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Lcom/android/browser/controller/BookmarkFolderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mListView:Landroid/widget/SortableListView;
    invoke-static {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$400(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Landroid/widget/SortableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    #getter for: Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->mEnterFolder:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->access$500(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
