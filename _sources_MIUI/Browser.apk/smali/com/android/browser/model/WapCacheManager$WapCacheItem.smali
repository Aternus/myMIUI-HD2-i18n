.class public Lcom/android/browser/model/WapCacheManager$WapCacheItem;
.super Ljava/lang/Object;
.source "WapCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/WapCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WapCacheItem"
.end annotation


# instance fields
.field public htmlText:Ljava/lang/String;

.field public lastVisited:Ljava/util/Date;

.field final synthetic this$0:Lcom/android/browser/model/WapCacheManager;


# direct methods
.method public constructor <init>(Lcom/android/browser/model/WapCacheManager;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->this$0:Lcom/android/browser/model/WapCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
