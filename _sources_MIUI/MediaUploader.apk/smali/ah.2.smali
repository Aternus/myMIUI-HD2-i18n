.class public final Lah;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:Ljava/util/Hashtable;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lah;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/high16 v1, -0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    if-lez p1, :cond_0

    const/16 v0, 0x40

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lah;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lah;->e:I

    iput v1, p0, Lah;->d:I

    iput v1, p0, Lah;->c:I

    return-void
.end method

.method static synthetic a(Lah;)I
    .locals 1

    iget v0, p0, Lah;->c:I

    return v0
.end method

.method static synthetic b(Lah;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lah;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    iget v0, p0, Lah;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lah;->e:I

    iget-object v1, p0, Lah;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lah;
    .locals 2

    new-instance v0, Lah;

    iget v1, p0, Lah;->c:I

    invoke-direct {v0, v1}, Lah;-><init>(I)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lah;->d:I

    if-le p1, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lah;->c:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lag;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 4

    const/16 v1, 0x40

    const/4 v3, 0x0

    if-nez p2, :cond_3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lah;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lah;->e:I

    :cond_0
    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lag;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-gt p1, v1, :cond_5

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_5

    if-lez p1, :cond_5

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    array-length v0, v0

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lah;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lah;->a:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lah;->a:[Ljava/lang/Object;

    :cond_5
    iget v0, p0, Lah;->d:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lah;->d:I

    if-ltz p1, :cond_7

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_7

    iget v0, p0, Lah;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lah;->c:I

    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_6

    iget v0, p0, Lah;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lah;->e:I

    :cond_6
    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    :cond_8
    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lag;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()LaI;
    .locals 1

    new-instance v0, LaI;

    invoke-direct {v0, p0}, LaI;-><init>(Lah;)V

    return-object v0
.end method

.method public final c()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x8000

    move v0, v4

    :goto_0
    iget-object v1, p0, Lah;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lah;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    iput v3, p0, Lah;->d:I

    iput v3, p0, Lah;->c:I

    iput v4, p0, Lah;->e:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lah;

    if-nez v0, :cond_2

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    check-cast p1, Lah;

    invoke-direct {p0}, Lah;->d()I

    move-result v0

    invoke-direct {p1}, Lah;->d()I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lah;->a:[Ljava/lang/Object;

    iget-object v1, p1, Lah;->a:[Ljava/lang/Object;

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    if-nez v4, :cond_4

    aget-object v4, v1, v3

    if-nez v4, :cond_5

    :cond_4
    aget-object v4, v0, v3

    if-eqz v4, :cond_7

    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    move v0, v6

    :goto_2
    if-eqz v0, :cond_11

    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    iget-object v1, p1, Lah;->b:Ljava/util/Hashtable;

    if-eq v0, v1, :cond_10

    if-eqz v0, :cond_6

    if-nez v1, :cond_d

    :cond_6
    move v0, v6

    :goto_3
    if-eqz v0, :cond_11

    move v0, v7

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    array-length v3, v0

    array-length v4, v1

    if-le v3, v4, :cond_a

    move v1, v2

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_c

    aget-object v2, v0, v1

    if-eqz v2, :cond_9

    move v0, v6

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    array-length v0, v0

    array-length v3, v1

    if-ge v0, v3, :cond_c

    move v0, v2

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_c

    aget-object v2, v1, v0

    if-eqz v2, :cond_b

    move v0, v6

    goto :goto_2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    move v0, v7

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eq v2, v3, :cond_e

    move v0, v6

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v0, v6

    goto :goto_3

    :cond_10
    move v0, v7

    goto :goto_3

    :cond_11
    move v0, v6

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget-object v2, p0, Lah;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lah;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lah;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IntMap{lower:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lah;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lah;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "=>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lah;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", higher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lah;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
