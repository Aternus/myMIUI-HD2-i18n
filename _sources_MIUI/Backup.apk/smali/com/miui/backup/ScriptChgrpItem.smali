.class final Lcom/miui/backup/ScriptChgrpItem;
.super Lcom/miui/backup/ScriptChangePermissionItem;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uid"
    .parameter "dir"

    .prologue
    .line 390
    invoke-direct {p0, p1, p2}, Lcom/miui/backup/ScriptChangePermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string v0, "chgrp"

    return-object v0
.end method
