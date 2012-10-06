.class Lcom/android/sidekick/GroupCorpus$RowIDComparator;
.super Ljava/lang/Object;
.source "GroupCorpus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/GroupCorpus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowIDComparator"
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
.field private mId:I

.field final synthetic this$0:Lcom/android/sidekick/GroupCorpus;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupCorpus;I)V
    .locals 0
    .parameter
    .parameter "itemId"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/sidekick/GroupCorpus$RowIDComparator;->this$0:Lcom/android/sidekick/GroupCorpus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p2, p0, Lcom/android/sidekick/GroupCorpus$RowIDComparator;->mId:I

    .line 620
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/sidekick/GroupCorpus$RowIDComparator;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 627
    const/4 v0, -0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "row"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus$RowIDComparator;->this$0:Lcom/android/sidekick/GroupCorpus;

    #calls: Lcom/android/sidekick/GroupCorpus;->checkCursorRow(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/android/sidekick/GroupCorpus;->access$000(Lcom/android/sidekick/GroupCorpus;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    const/16 v0, 0xd

    aget-object v0, p1, v0

    iget v1, p0, Lcom/android/sidekick/GroupCorpus$RowIDComparator;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
