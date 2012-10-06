.class public Lcom/android/providers/downloads/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final LOGV:Z

.field public static final LOGVV:Z

.field public static sDownloadSetNeedToUpdateProgress:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/Constants;->sDownloadSetNeedToUpdateProgress:Ljava/util/HashSet;

    .line 155
    sput-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    .line 160
    sput-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
