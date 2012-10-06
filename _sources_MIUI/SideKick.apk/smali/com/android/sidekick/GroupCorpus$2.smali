.class Lcom/android/sidekick/GroupCorpus$2;
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
    .line 322
    iput-object p1, p0, Lcom/android/sidekick/GroupCorpus$2;->this$0:Lcom/android/sidekick/GroupCorpus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/sidekick/GroupCorpus$2;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v3, -0x1

    .line 325
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_4

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/sidekick/GroupCorpus;->access$200()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 327
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    if-nez v1, :cond_1

    .line 328
    :cond_0
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    if-eq v1, v2, :cond_2

    move v1, v3

    .line 339
    .end local v0           #i:I
    :goto_1
    return v1

    .line 333
    .restart local v0       #i:I
    :cond_1
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 334
    goto :goto_1

    .line 326
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .end local v0           #i:I
    :cond_4
    move v1, v3

    .line 339
    goto :goto_1
.end method
