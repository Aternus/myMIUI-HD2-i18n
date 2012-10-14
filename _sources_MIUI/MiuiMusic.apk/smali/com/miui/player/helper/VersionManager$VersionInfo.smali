.class public Lcom/miui/player/helper/VersionManager$VersionInfo;
.super Ljava/lang/Object;
.source "VersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/VersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VersionInfo"
.end annotation


# instance fields
.field public newVersion:I

.field public oldVersion:I

.field public product:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/helper/VersionManager;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/VersionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/player/helper/VersionManager$VersionInfo;->this$0:Lcom/miui/player/helper/VersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
