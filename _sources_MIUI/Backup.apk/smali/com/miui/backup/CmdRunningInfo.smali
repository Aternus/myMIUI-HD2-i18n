.class public Lcom/miui/backup/CmdRunningInfo;
.super Ljava/lang/Object;
.source "CmdRunningInfo.java"


# instance fields
.field public finishedSize:Ljava/lang/String;

.field public isBackup:Z

.field public isSystemApp:Z

.field public progress:I

.field public volatile status:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, ""

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v3, p0, Lcom/miui/backup/CmdRunningInfo;->title:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 16
    iput v1, p0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    .line 18
    const-string v0, ""

    iput-object v3, p0, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    .line 20
    iput-boolean v2, p0, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    .line 21
    iput-boolean v2, p0, Lcom/miui/backup/CmdRunningInfo;->isSystemApp:Z

    return-void
.end method
