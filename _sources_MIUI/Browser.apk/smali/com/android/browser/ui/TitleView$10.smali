.class Lcom/android/browser/ui/TitleView$10;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TitleView;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/TitleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TitleView;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v1}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/browser/controller/SuggestionAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;
    invoke-static {v3}, Lcom/android/browser/ui/TitleView;->access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/browser/controller/SuggestionAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/browser/ui/TitleView;->addShortcutForUrl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/browser/ui/TitleView;->access$800(Lcom/android/browser/ui/TitleView;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v1, v4}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$1500(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/UrlTitleBarView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/browser/ui/UrlTitleBarView;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$1600(Lcom/android/browser/ui/TitleView;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$1000(Lcom/android/browser/ui/TitleView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v1

    const-class v2, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "user_query"

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/browser/controller/SuggestionAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/android/browser/controller/SuggestionAdapter;->fillIntentDataForSelectedItem(Landroid/content/Intent;I)V

    .line 299
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$10;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
