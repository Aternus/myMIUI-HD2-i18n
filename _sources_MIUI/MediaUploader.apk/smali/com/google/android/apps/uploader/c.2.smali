.class public final Lcom/google/android/apps/uploader/c;
.super Ljava/lang/Object;


# static fields
.field private static final b:[J

.field private static final c:I

.field private static final d:[I


# instance fields
.field private a:Landroid/os/ConditionVariable;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/uploader/c;->b:[J

    array-length v0, v0

    sput v0, Lcom/google/android/apps/uploader/c;->c:I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/uploader/c;->d:[I

    return-void

    nop

    :array_0
    .array-data 0x8
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x26t 0x0t 0x6t 0x7ft
        0x27t 0x0t 0x6t 0x7ft
        0x28t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/c;->a:Landroid/os/ConditionVariable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/c;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    sget v1, Lcom/google/android/apps/uploader/c;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/c;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/c;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/c;->a:Landroid/os/ConditionVariable;

    sget-object v1, Lcom/google/android/apps/uploader/c;->b:[J

    iget v2, p0, Lcom/google/android/apps/uploader/c;->e:I

    aget-wide v1, v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    long-to-double v5, v1

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4014

    div-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    neg-long v3, v3

    :cond_2
    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    iget-object v0, p0, Lcom/google/android/apps/uploader/c;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final d()Z
    .locals 7

    const/4 v5, 0x1

    const-string v6, "MediaUploader"

    iget v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    sget v1, Lcom/google/android/apps/uploader/c;->c:I

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    const-string v0, "MediaUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry interval set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/c;->b:[J

    iget v2, p0, Lcom/google/android/apps/uploader/c;->e:I

    aget-wide v1, v1, v2

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const-string v0, "MediaUploader"

    const-string v0, "Retry interval maxed out"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    const-string v0, "MediaUploader"

    const-string v1, "Retry policy set to wait indefinitely"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/google/android/apps/uploader/c;->c:I

    iput v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    return-void
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/uploader/c;->e:I

    sget v1, Lcom/google/android/apps/uploader/c;->c:I

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/apps/uploader/c;->d:[I

    iget v1, p0, Lcom/google/android/apps/uploader/c;->e:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
