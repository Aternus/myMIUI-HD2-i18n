.class Lcom/android/sidekick/ResultItem$1;
.super Ljava/lang/Object;
.source "ResultItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sidekick/ResultItem;->enterDeleteMode(Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sidekick/ResultItem;

.field final synthetic val$listener:Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;


# direct methods
.method constructor <init>(Lcom/android/sidekick/ResultItem;Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/sidekick/ResultItem$1;->this$0:Lcom/android/sidekick/ResultItem;

    iput-object p2, p0, Lcom/android/sidekick/ResultItem$1;->val$listener:Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/sidekick/ResultItem$1;->val$listener:Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;->confirmDelete(Z)V

    .line 35
    return-void
.end method
