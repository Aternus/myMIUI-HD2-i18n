.class final Lcom/xiaomi/common/BasicVersionChecker$1;
.super Ljava/lang/Object;
.source "BasicVersionChecker.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/common/BasicVersionChecker;->cleanupTemporaryFile(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "dir"
    .parameter "filename"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_1

    move v0, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 92
    goto :goto_0
.end method
