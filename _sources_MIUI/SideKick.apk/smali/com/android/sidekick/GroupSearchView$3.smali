.class Lcom/android/sidekick/GroupSearchView$3;
.super Ljava/lang/Object;
.source "GroupSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sidekick/GroupSearchView;->onStartQuery()V
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
    .line 367
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchView$3;->this$0:Lcom/android/sidekick/GroupSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView$3;->this$0:Lcom/android/sidekick/GroupSearchView;

    const/4 v1, 0x3

    #calls: Lcom/android/sidekick/GroupSearchView;->setViewState(I)V
    invoke-static {v0, v1}, Lcom/android/sidekick/GroupSearchView;->access$500(Lcom/android/sidekick/GroupSearchView;I)V

    .line 371
    return-void
.end method
