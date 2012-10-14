.class public abstract Ld;
.super Ljava/lang/Object;

# interfaces
.implements Lt;


# instance fields
.field private final a:Lcom/google/android/apps/uploader/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/i;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/i;-><init>(Lt;)V

    iput-object v0, p0, Ld;->a:Lcom/google/android/apps/uploader/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ld;->a:Lcom/google/android/apps/uploader/i;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/i;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Ld;->a:Lcom/google/android/apps/uploader/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/i;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Ld;->a:Lcom/google/android/apps/uploader/i;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/i;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
