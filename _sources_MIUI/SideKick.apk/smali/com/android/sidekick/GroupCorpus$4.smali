.class Lcom/android/sidekick/GroupCorpus$4;
.super Ljava/lang/Object;
.source "GroupCorpus.java"

# interfaces
.implements Lcom/android/sidekick/FlexMatrixCursor$Merger;


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
        "Lcom/android/sidekick/FlexMatrixCursor$Merger",
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
    .line 353
    iput-object p1, p0, Lcom/android/sidekick/GroupCorpus$4;->this$0:Lcom/android/sidekick/GroupCorpus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/sidekick/GroupCorpus$4;->merge([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public merge([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4
    .parameter "src"
    .parameter "dst"

    .prologue
    const/16 v3, 0x10

    .line 356
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 357
    const/4 v1, 0x0

    .line 362
    .end local p0
    :goto_0
    return v1

    .line 359
    .restart local p0
    :cond_0
    move-object p2, p1

    .line 360
    aget-object p0, p1, v3

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 361
    .local v0, count:I
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    .line 362
    const/4 v1, 0x1

    goto :goto_0
.end method
