.class public final Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;
.super Ljava/lang/Exception;
.source "OnlinePlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/OnlinePlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnlinePlayDeniedException"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
