.class Lcom/android/providers/downloads/DownloadNotification$DownloadItem;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadItem"
.end annotation


# instance fields
.field lastProgress:J

.field final synthetic this$0:Lcom/android/providers/downloads/DownloadNotification;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;->this$0:Lcom/android/providers/downloads/DownloadNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
