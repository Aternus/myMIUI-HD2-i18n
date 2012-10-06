.class public Lcom/android/browser/controller/WebStorageSizeManager$WebKitAppCacheInfo;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"

# interfaces
.implements Lcom/android/browser/controller/WebStorageSizeManager$AppCacheInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/WebStorageSizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebKitAppCacheInfo"
.end annotation


# static fields
.field private static final APPCACHE_FILE:Ljava/lang/String; = "ApplicationCache.db"


# instance fields
.field private mAppCachePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/browser/controller/WebStorageSizeManager$WebKitAppCacheInfo;->mAppCachePath:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public getAppCacheSizeBytes()J
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/browser/controller/WebStorageSizeManager$WebKitAppCacheInfo;->mAppCachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ApplicationCache.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method
