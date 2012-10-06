.class Lcom/android/sidekick/GroupCorpus$1;
.super Ljava/lang/Object;
.source "GroupCorpus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/GroupCorpus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sidekick/GroupCorpus;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupCorpus;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/sidekick/GroupCorpus$1;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0x10

    const/16 v2, 0xe

    .line 294
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->checkCursorRow(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/android/sidekick/GroupCorpus;->access$000(Lcom/android/sidekick/GroupCorpus;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->checkCursorRow(Ljava/lang/Object;)Z
    invoke-static {v0, p2}, Lcom/android/sidekick/GroupCorpus;->access$000(Lcom/android/sidekick/GroupCorpus;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v0, p1, v2}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v1, p2, v2}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v5

    .line 308
    :goto_0
    return v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v0, p1, v2}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v1, p2, v2}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    move v0, v4

    .line 300
    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v0, p1, v3}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v1, p2, v3}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v5

    .line 303
    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v0, p1, v3}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus$1;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    invoke-static {v1, p2, v3}, Lcom/android/sidekick/GroupCorpus;->access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_3

    move v0, v4

    .line 306
    goto :goto_0

    .line 308
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
