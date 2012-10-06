.class public final Lcom/android/browser/LogSettings;
.super Ljava/lang/Object;
.source "LogSettings.java"


# static fields
.field public static final NetworkDebuggingLogOn:Z

.field public static final ReportStatForDebugChannelUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final LogDebugInfoWithDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 33
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static final reportExceptionAsync(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/browser/common/ExceptionHandler;->sendMessageAsync(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public static final reportExceptionAsync(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter "e"
    .parameter "extraMsg"

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1}, Lcom/android/browser/common/ExceptionHandler;->sendMessageAsync(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 52
    return-void
.end method
