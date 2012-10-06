.class public Lcom/android/packageinstaller/RetainedList;
.super Ljava/lang/Object;
.source "RetainedList.java"


# instance fields
.field private FILENAME:Ljava/lang/String;

.field private final mList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v4, "/data/media/customized/operator.retained.list"

    iput-object v4, p0, Lcom/android/packageinstaller/RetainedList;->FILENAME:Ljava/lang/String;

    .line 13
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/packageinstaller/RetainedList;->mList:Ljava/util/HashSet;

    .line 16
    const/4 v2, 0x0

    .line 18
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/packageinstaller/RetainedList;->FILENAME:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :goto_0
    const/4 v1, 0x0

    .line 25
    .local v1, packageName:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    iget-object v4, p0, Lcom/android/packageinstaller/RetainedList;->mList:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    .end local v1           #packageName:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 35
    :goto_1
    return-void

    .line 26
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    :cond_0
    move-object v2, v3

    .line 35
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public contain(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/packageinstaller/RetainedList;->mList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
