.class Lcom/android/sidekick/GroupSearchView$1;
.super Ljava/lang/Object;
.source "GroupSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 213
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchView$1;->this$0:Lcom/android/sidekick/GroupSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 222
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ltz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$1;->this$0:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/sidekick/GroupSearchView;->setUserQuery(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/sidekick/GroupSearchView;->access$000(Lcom/android/sidekick/GroupSearchView;Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 215
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 219
    return-void
.end method
