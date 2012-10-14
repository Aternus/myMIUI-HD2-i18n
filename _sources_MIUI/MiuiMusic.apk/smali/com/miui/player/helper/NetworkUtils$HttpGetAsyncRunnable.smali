.class public abstract Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpGetAsyncRunnable"
.end annotation


# instance fields
.field protected inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;->inputStream:Ljava/io/InputStream;

    .line 99
    return-void
.end method
