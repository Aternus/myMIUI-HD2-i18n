.class Lcom/android/browser/ui/TitleView$7;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 233
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$1100(Lcom/android/browser/ui/TitleView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$1200(Lcom/android/browser/ui/TitleView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$1100(Lcom/android/browser/ui/TitleView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$1200(Lcom/android/browser/ui/TitleView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 248
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 253
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 254
    .local v0, text:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v1}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSearchEngineAdapter:Lcom/android/browser/controller/SearchEngineSelectionAdapter;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$1300(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSearchEngineAdapter:Lcom/android/browser/controller/SearchEngineSelectionAdapter;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$1300(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    :cond_0
    :goto_1
    return-void

    .line 253
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    move-object v0, v1

    goto :goto_0

    .line 259
    .restart local v0       #text:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$7;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method
