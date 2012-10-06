.class public final Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;
.super Ljava/lang/Object;
.source "LauncherUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/util/LauncherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessAliveLock"
.end annotation


# static fields
.field private static mInstance:Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;


# instance fields
.field private mRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;

    invoke-direct {v0}, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;-><init>()V

    sput-object v0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mInstance:Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mRefCount:I

    .line 102
    return-void
.end method

.method public static getInstance()Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mInstance:Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized acquire(Ljava/lang/String;)V
    .locals 4
    .parameter "component"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    const-string v0, "com.android.browser.util/LauncherUtil"

    const-string v1, "Acitivity/service \'%s\' is acquiring the ProcessAliveLock"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Ljava/lang/String;)V
    .locals 5
    .parameter "component"

    .prologue
    const/4 v4, 0x1

    const-string v0, "com.android.browser.util/LauncherUtil"

    .line 94
    monitor-enter p0

    :try_start_0
    const-string v0, "com.android.browser.util/LauncherUtil"

    const-string v1, "Acitivity/service \'%s\' is releasing the ProcessAliveLock"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v0, p0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mRefCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mRefCount:I

    .line 96
    iget v0, p0, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->mRefCount:I

    if-gtz v0, :cond_0

    .line 97
    const-string v0, "com.android.browser.util/LauncherUtil"

    const-string v1, "No acitivity/service exists anymore, let\'s kill the process"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
