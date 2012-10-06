.class public Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
.super Ljava/lang/Object;
.source "NavigationHomeDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/NavigationHomeDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailData"
.end annotation


# instance fields
.field public loadingInProgress:Z

.field public thumbnailPath:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
