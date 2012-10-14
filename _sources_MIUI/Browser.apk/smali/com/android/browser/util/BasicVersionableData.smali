.class public abstract Lcom/android/browser/util/BasicVersionableData;
.super Ljava/lang/Object;
.source "BasicVersionableData.java"


# static fields
.field private static final PREF_FILE_NAME:Ljava/lang/String; = "VersionableDataInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionableFileFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string v1, "VersionableDataInfo"

    monitor-enter v1

    .line 70
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 72
    :cond_0
    monitor-exit v1

    .line 74
    :cond_1
    return-object v0

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public abstract canDeleteFile(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public doPostUpgradeAction(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "newVersion"

    .prologue
    .line 33
    return-void
.end method

.method public abstract doUpgradeNow(Landroid/content/Context;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getLocalVersion(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const-string v1, "VersionableDataInfo"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/browser/util/BasicVersionableData;->getVersionDataKey()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x8000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public abstract getVersionDataKey()Ljava/lang/String;
.end method

.method public persistLocalVersion(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "newVersion"

    .prologue
    .line 54
    const-string v2, "VersionableDataInfo"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/browser/util/BasicVersionableData;->getVersionDataKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method
