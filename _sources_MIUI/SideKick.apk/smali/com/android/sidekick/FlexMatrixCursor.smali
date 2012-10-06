.class public Lcom/android/sidekick/FlexMatrixCursor;
.super Landroid/database/AbstractCursor;
.source "FlexMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sidekick/FlexMatrixCursor$Merger;
    }
.end annotation


# instance fields
.field private final columnNames:[Ljava/lang/String;

.field private data:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShadowMode:Z

.field private mRowCountThreshold:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "columnNames"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->mIsShadowMode:Z

    .line 22
    iput-object p1, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    .line 24
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->mRowCountThreshold:I

    .line 25
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0
    .parameter "columnNames"
    .parameter "rowCountThresHold"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 29
    iput p2, p0, Lcom/android/sidekick/FlexMatrixCursor;->mRowCountThreshold:I

    .line 30
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0
    .parameter "columnNames"
    .parameter "shadowMode"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 34
    iput-boolean p2, p0, Lcom/android/sidekick/FlexMatrixCursor;->mIsShadowMode:Z

    .line 35
    return-void
.end method

.method private addEmptyRow()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/sidekick/FlexMatrixCursor;->addRowInner([Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method private addRowInner([Ljava/lang/Object;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->mRowCountThreshold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/sidekick/FlexMatrixCursor;->mRowCountThreshold:I

    if-ge v0, v1, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void

    .line 172
    :cond_1
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "row threshold reached."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .parameter "column"

    .prologue
    .line 38
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iget v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->mPos:I

    if-gez v0, :cond_2

    .line 43
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iget v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->mPos:I

    iget-object v1, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 46
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    iget v1, p0, Lcom/android/sidekick/FlexMatrixCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    return-object v0
.end method


# virtual methods
.method public addRow([Ljava/lang/Object;)V
    .locals 5
    .parameter "columnValues"

    .prologue
    const/4 v4, 0x0

    .line 72
    array-length v2, p1

    iget-object v3, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "columnNames.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", columnValues.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    iget-boolean v2, p0, Lcom/android/sidekick/FlexMatrixCursor;->mIsShadowMode:Z

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 79
    .local v1, obj:[Ljava/lang/Object;
    if-ne v1, p1, :cond_1

    .line 88
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #obj:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 83
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->addRowInner([Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/sidekick/FlexMatrixCursor;->addEmptyRow()V

    .line 86
    invoke-virtual {p0}, Lcom/android/sidekick/FlexMatrixCursor;->getLastRow()[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public deleteRow([Ljava/lang/Object;)Z
    .locals 1
    .parameter "src"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method

.method findRow(Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, c:Ljava/util/Comparator;,"Ljava/util/Comparator<[Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 260
    .local v1, row:[Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 264
    .end local v1           #row:[Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method findRow([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 3
    .parameter "src"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<[Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 271
    .local v0, dst:[Ljava/lang/Object;
    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 275
    .end local v0           #dst:[Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentRow()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    iget v1, p0, Lcom/android/sidekick/FlexMatrixCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "column"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 230
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 229
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 230
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 222
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 221
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 222
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 206
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 205
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 206
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLastRow()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 214
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 213
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 214
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 198
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 197
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 198
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeRow([Ljava/lang/Object;Ljava/util/Comparator;Lcom/android/sidekick/FlexMatrixCursor$Merger;)V
    .locals 1
    .parameter "src"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/sidekick/FlexMatrixCursor$Merger",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<[Ljava/lang/Object;>;"
    .local p3, merger:Lcom/android/sidekick/FlexMatrixCursor$Merger;,"Lcom/android/sidekick/FlexMatrixCursor$Merger<[Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/sidekick/FlexMatrixCursor;->findRow([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, dst:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/sidekick/FlexMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-interface {p3, p1, v0}, Lcom/android/sidekick/FlexMatrixCursor$Merger;->merge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, c:Ljava/util/Comparator;,"Ljava/util/Comparator<[Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/sidekick/FlexMatrixCursor;->data:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 293
    return-void
.end method
