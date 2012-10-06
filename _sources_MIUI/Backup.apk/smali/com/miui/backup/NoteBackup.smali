.class final Lcom/miui/backup/NoteBackup;
.super Lcom/miui/backup/NoteStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 806
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/NoteStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 807
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/miui/backup/NoteStrategy;->mNoteController:Lcom/miui/milk/control/local/NoteController;

    iget-object v1, p0, Lcom/miui/backup/NoteStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/NoteController;->exportNotes(Ljava/io/File;)V

    .line 812
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/miui/backup/NoteStrategy;->mNoteController:Lcom/miui/milk/control/local/NoteController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/NoteController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/miui/backup/NoteStrategy;->mNoteController:Lcom/miui/milk/control/local/NoteController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/NoteController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
