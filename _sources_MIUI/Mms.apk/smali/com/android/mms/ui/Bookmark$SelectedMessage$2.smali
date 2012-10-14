.class Lcom/android/mms/ui/Bookmark$SelectedMessage$2;
.super Ljava/lang/Object;
.source "Bookmark.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/Bookmark$SelectedMessage;->buildEditNewPhraseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/Bookmark$SelectedMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    #getter for: Lcom/android/mms/ui/Bookmark$SelectedMessage;->mEditNewPhraseView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->access$400(Lcom/android/mms/ui/Bookmark$SelectedMessage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, phrase:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    #getter for: Lcom/android/mms/ui/Bookmark$SelectedMessage;->mIsPhrase:Z
    invoke-static {v1}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->access$000(Lcom/android/mms/ui/Bookmark$SelectedMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    #getter for: Lcom/android/mms/ui/Bookmark$SelectedMessage;->mNewPhrase:Z
    invoke-static {v1}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->access$500(Lcom/android/mms/ui/Bookmark$SelectedMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/Bookmark$SelectedMessage;->mNewPhrase:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->access$502(Lcom/android/mms/ui/Bookmark$SelectedMessage;Z)Z

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    iget-object v1, v1, Lcom/android/mms/ui/Bookmark$SelectedMessage;->this$0:Lcom/android/mms/ui/Bookmark;

    #getter for: Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/Bookmark;->access$200(Lcom/android/mms/ui/Bookmark;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/PhraseListAdapter;->addPhrase(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->delete()V

    goto :goto_0

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    iget-object v1, v1, Lcom/android/mms/ui/Bookmark$SelectedMessage;->this$0:Lcom/android/mms/ui/Bookmark;

    #getter for: Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/Bookmark;->access$200(Lcom/android/mms/ui/Bookmark;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/Bookmark$SelectedMessage$2;->this$1:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    #getter for: Lcom/android/mms/ui/Bookmark$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;
    invoke-static {v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->access$100(Lcom/android/mms/ui/Bookmark$SelectedMessage;)Landroid/util/Pair;

    move-result-object v2

    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/PhraseListAdapter;->setPhrase(ILjava/lang/String;)V

    goto :goto_0
.end method
