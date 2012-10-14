.class public final Lcom/google/android/apps/uploader/g;
.super Ljava/lang/Exception;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p3, p0, Lcom/google/android/apps/uploader/g;->a:Z

    iput p4, p0, Lcom/google/android/apps/uploader/g;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/g;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/g;->b:I

    return v0
.end method
