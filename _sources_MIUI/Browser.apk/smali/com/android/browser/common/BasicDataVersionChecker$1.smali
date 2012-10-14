.class Lcom/android/browser/common/BasicDataVersionChecker$1;
.super Ljava/lang/Object;
.source "BasicDataVersionChecker.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/common/BasicDataVersionChecker;->doUpgrade(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/common/BasicDataVersionChecker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/browser/common/BasicDataVersionChecker;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/browser/common/BasicDataVersionChecker$1;->this$0:Lcom/android/browser/common/BasicDataVersionChecker;

    iput-object p2, p0, Lcom/android/browser/common/BasicDataVersionChecker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 73
    iget-object v4, p0, Lcom/android/browser/common/BasicDataVersionChecker$1;->this$0:Lcom/android/browser/common/BasicDataVersionChecker;

    #getter for: Lcom/android/browser/common/BasicDataVersionChecker;->mVersionableData:[Lcom/android/browser/util/BasicVersionableData;
    invoke-static {v4}, Lcom/android/browser/common/BasicDataVersionChecker;->access$000(Lcom/android/browser/common/BasicDataVersionChecker;)[Lcom/android/browser/util/BasicVersionableData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 74
    iget-object v4, p0, Lcom/android/browser/common/BasicDataVersionChecker$1;->this$0:Lcom/android/browser/common/BasicDataVersionChecker;

    #getter for: Lcom/android/browser/common/BasicDataVersionChecker;->mVersionableData:[Lcom/android/browser/util/BasicVersionableData;
    invoke-static {v4}, Lcom/android/browser/common/BasicDataVersionChecker;->access$000(Lcom/android/browser/common/BasicDataVersionChecker;)[Lcom/android/browser/util/BasicVersionableData;

    move-result-object v0

    .local v0, arr$:[Lcom/android/browser/util/BasicVersionableData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 75
    .local v1, data:Lcom/android/browser/util/BasicVersionableData;
    iget-object v4, p0, Lcom/android/browser/common/BasicDataVersionChecker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4, p2}, Lcom/android/browser/util/BasicVersionableData;->canDeleteFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    const/4 v4, 0x0

    .line 79
    .end local v0           #arr$:[Lcom/android/browser/util/BasicVersionableData;
    .end local v1           #data:Lcom/android/browser/util/BasicVersionableData;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 74
    .restart local v0       #arr$:[Lcom/android/browser/util/BasicVersionableData;
    .restart local v1       #data:Lcom/android/browser/util/BasicVersionableData;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0           #arr$:[Lcom/android/browser/util/BasicVersionableData;
    .end local v1           #data:Lcom/android/browser/util/BasicVersionableData;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method
