.class final Lcom/android/providers/downloads/ui/DownloadUtils$1;
.super Ljava/util/ArrayList;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    const-string v0, "com.miui.supermarket"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadUtils$1;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v0, "com.miui.player"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadUtils$1;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v0, "com.android.thememanager"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadUtils$1;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v0, "com.android.browser"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadUtils$1;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
