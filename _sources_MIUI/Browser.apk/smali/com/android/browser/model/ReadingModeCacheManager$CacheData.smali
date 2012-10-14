.class public final Lcom/android/browser/model/ReadingModeCacheManager$CacheData;
.super Ljava/lang/Object;
.source "ReadingModeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ReadingModeCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheData"
.end annotation


# instance fields
.field public data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

.field public fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
