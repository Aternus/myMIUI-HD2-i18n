.class public Lcom/android/browser/ui/MiRenImageView;
.super Landroid/widget/ImageView;
.source "MiRenImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/MiRenImageView$MyHandler;
    }
.end annotation


# static fields
.field public static IMAGE_PATH:Ljava/lang/String; = null

.field private static LOGTAG:Ljava/lang/String; = null

.field private static final MAP_LOCK:Ljava/lang/Integer; = null

.field public static MESSAGE_IMAGE_LOAD_COMPLETE:I = 0x0

.field public static mIconMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable; = null

.field private static final sMaxLoadingTasks:I = 0x2

.field private static sWaitingViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/browser/ui/MiRenImageView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lcom/android/browser/ui/MiRenImageView$MyHandler;

.field private mImageUrl:Ljava/lang/String;

.field private mIsRssIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "com.android.browser.ui.MiRenImageview"

    sput-object v0, Lcom/android/browser/ui/MiRenImageView;->LOGTAG:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/browser/ui/MiRenImageView;->MAP_LOCK:Ljava/lang/Integer;

    .line 30
    const-string v0, "image_path"

    sput-object v0, Lcom/android/browser/ui/MiRenImageView;->IMAGE_PATH:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/ui/MiRenImageView;->mIconMap:Ljava/util/HashMap;

    .line 36
    sput v1, Lcom/android/browser/ui/MiRenImageView;->MESSAGE_IMAGE_LOAD_COMPLETE:I

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/browser/controller/ImageDownloadRunnable;

    sput-object v0, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/browser/ui/MiRenImageView$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenImageView$MyHandler;-><init>(Lcom/android/browser/ui/MiRenImageView;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenImageView;->mHandler:Lcom/android/browser/ui/MiRenImageView$MyHandler;

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/browser/ui/MiRenImageView;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ui/MiRenImageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/browser/ui/MiRenImageView;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/browser/ui/MiRenImageView;->MAP_LOCK:Ljava/lang/Integer;

    return-object v0
.end method

.method public static onActivityDestroyed()V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 120
    :cond_0
    return-void
.end method

.method public static popNextImageView()Lcom/android/browser/ui/MiRenImageView;
    .locals 2

    .prologue
    .line 97
    sget-object v1, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    monitor-exit v1

    .line 100
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenImageView;

    monitor-exit v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setRssIcon(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "resourceId"
    .parameter "url"

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/browser/util/MirenConstants;->IMAGECACHE_RSSICON_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/android/browser/util/MirenConstants;->IMAGECACHE_RSSICON_PATH:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, folder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 137
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    .local v5, output:Ljava/io/FileOutputStream;
    if-eqz v0, :cond_1

    .line 139
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v4           #folder:Ljava/io/File;
    .end local v5           #output:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 141
    .local v2, ex:Ljava/lang/SecurityException;
    sget-object v6, Lcom/android/browser/ui/MiRenImageView;->LOGTAG:Ljava/lang/String;

    const-string v7, "SecEx while make directory"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v2           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 143
    .local v1, e:Ljava/io/IOException;
    sget-object v6, Lcom/android/browser/ui/MiRenImageView;->LOGTAG:Ljava/lang/String;

    const-string v7, "error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/ui/MiRenImageView;->mHandler:Lcom/android/browser/ui/MiRenImageView$MyHandler;

    return-object v0
.end method

.method public getImageRemoteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/browser/ui/MiRenImageView;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRSSIcon()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenImageView;->mIsRssIcon:Z

    return v0
.end method

.method public setImageRemoteUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenImageView;->setImageRemoteUrl(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public setImageRemoteUrl(Ljava/lang/String;Z)V
    .locals 7
    .parameter "url"
    .parameter "IsRssIcon"

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/android/browser/ui/MiRenImageView;->mImageUrl:Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lcom/android/browser/ui/MiRenImageView;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/browser/ui/MiRenImageView;->setTag(Ljava/lang/Object;)V

    .line 59
    iput-boolean p2, p0, Lcom/android/browser/ui/MiRenImageView;->mIsRssIcon:Z

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, bitmapInCache:Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/browser/ui/MiRenImageView;->MAP_LOCK:Ljava/lang/Integer;

    monitor-enter v6

    .line 62
    :try_start_0
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 65
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 69
    :cond_3
    const/4 v3, 0x0

    .line 71
    .local v3, runNow:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 72
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    aget-object v5, v5, v2

    if-nez v5, :cond_6

    .line 73
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    new-instance v6, Lcom/android/browser/controller/ImageDownloadRunnable;

    invoke-direct {v6}, Lcom/android/browser/controller/ImageDownloadRunnable;-><init>()V

    aput-object v6, v5, v2

    .line 79
    :cond_4
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5, p0}, Lcom/android/browser/controller/ImageDownloadRunnable;->setImageView(Lcom/android/browser/ui/MiRenImageView;)V

    .line 80
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/browser/controller/ImageDownloadRunnable;->setExecuting()V

    .line 81
    new-instance v4, Ljava/lang/Thread;

    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    .local v4, t:Ljava/lang/Thread;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 83
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 84
    const/4 v3, 0x1

    .line 88
    .end local v4           #t:Ljava/lang/Thread;
    :cond_5
    if-nez v3, :cond_0

    .line 89
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    monitor-enter v5

    .line 90
    :try_start_2
    sget-object v6, Lcom/android/browser/ui/MiRenImageView;->sWaitingViews:Ljava/util/Stack;

    invoke-virtual {v6, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 75
    :cond_6
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->sImageLoadingTasks:[Lcom/android/browser/controller/ImageDownloadRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/browser/controller/ImageDownloadRunnable;->isFree()Z

    move-result v5

    if-nez v5, :cond_4

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
