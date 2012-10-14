.class Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;
.super Ljava/lang/Object;
.source "GroupSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/GroupSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndQueryRunnable"
.end annotation


# instance fields
.field private mResultCount:I

.field private mResultType:I

.field final synthetic this$0:Lcom/android/sidekick/GroupSearchView;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupSearchView;II)V
    .locals 0
    .parameter
    .parameter "resultCount"
    .parameter "resultType"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput p2, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->mResultCount:I

    .line 381
    iput p3, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->mResultType:I

    .line 382
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 385
    iget v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->mResultCount:I

    if-lez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->access$600(Lcom/android/sidekick/GroupSearchView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    #calls: Lcom/android/sidekick/GroupSearchView;->setViewState(I)V
    invoke-static {v0, v2}, Lcom/android/sidekick/GroupSearchView;->access$500(Lcom/android/sidekick/GroupSearchView;I)V

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mResultListHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->access$900(Lcom/android/sidekick/GroupSearchView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->mResultType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mRelultListHeaderHintSearch:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sidekick/GroupSearchView;->access$700(Lcom/android/sidekick/GroupSearchView;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->mResultCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :goto_2
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    const/4 v1, 0x4

    #calls: Lcom/android/sidekick/GroupSearchView;->setViewState(I)V
    invoke-static {v0, v1}, Lcom/android/sidekick/GroupSearchView;->access$500(Lcom/android/sidekick/GroupSearchView;I)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mRelultListHeaderHintRecent:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sidekick/GroupSearchView;->access$800(Lcom/android/sidekick/GroupSearchView;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->access$600(Lcom/android/sidekick/GroupSearchView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    const/4 v1, 0x2

    #calls: Lcom/android/sidekick/GroupSearchView;->setViewState(I)V
    invoke-static {v0, v1}, Lcom/android/sidekick/GroupSearchView;->access$500(Lcom/android/sidekick/GroupSearchView;I)V

    .line 400
    :goto_3
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    #getter for: Lcom/android/sidekick/GroupSearchView;->mResultListHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->access$900(Lcom/android/sidekick/GroupSearchView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;->this$0:Lcom/android/sidekick/GroupSearchView;

    const/4 v1, 0x5

    #calls: Lcom/android/sidekick/GroupSearchView;->setViewState(I)V
    invoke-static {v0, v1}, Lcom/android/sidekick/GroupSearchView;->access$500(Lcom/android/sidekick/GroupSearchView;I)V

    goto :goto_3
.end method
