.class Lcom/android/sidekick/GroupSearchView$2;
.super Ljava/lang/Object;
.source "GroupSearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/GroupSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sidekick/GroupSearchView;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchView$2;->this$0:Lcom/android/sidekick/GroupSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 235
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$2;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->access$100(Lcom/android/sidekick/GroupSearchView;)Lcom/android/sidekick/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/sidekick/PinnedHeaderListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$2;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->access$100(Lcom/android/sidekick/GroupSearchView;)Lcom/android/sidekick/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/sidekick/PinnedHeaderListView;->getSelectedItemId()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$2;->this$0:Lcom/android/sidekick/GroupSearchView;

    #calls: Lcom/android/sidekick/GroupSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/sidekick/GroupSearchView;->access$200(Lcom/android/sidekick/GroupSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$2;->this$0:Lcom/android/sidekick/GroupSearchView;

    #calls: Lcom/android/sidekick/GroupSearchView;->isSearchEditTextEmpty()Z
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->access$300(Lcom/android/sidekick/GroupSearchView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 244
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$2;->this$0:Lcom/android/sidekick/GroupSearchView;

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView$2;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;
    invoke-static {v1}, Lcom/android/sidekick/GroupSearchView;->access$100(Lcom/android/sidekick/GroupSearchView;)Lcom/android/sidekick/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/sidekick/PinnedHeaderListView;->getSelectedItemId()J

    move-result-wide v1

    long-to-int v1, v1

    #calls: Lcom/android/sidekick/GroupSearchView;->launchQuerySearch(I)V
    invoke-static {v0, v1}, Lcom/android/sidekick/GroupSearchView;->access$400(Lcom/android/sidekick/GroupSearchView;I)V

    move v0, v4

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
