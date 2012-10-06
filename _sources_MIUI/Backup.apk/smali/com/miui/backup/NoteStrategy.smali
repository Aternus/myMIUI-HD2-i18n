.class abstract Lcom/miui/backup/NoteStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;

.field protected mNoteController:Lcom/miui/milk/control/local/NoteController;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 791
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 787
    iput-object v0, p0, Lcom/miui/backup/NoteStrategy;->mNoteController:Lcom/miui/milk/control/local/NoteController;

    .line 788
    iput-object v0, p0, Lcom/miui/backup/NoteStrategy;->mDataFile:Ljava/io/File;

    .line 789
    iput-object v0, p0, Lcom/miui/backup/NoteStrategy;->mContext:Landroid/content/Context;

    .line 792
    iput-object p3, p0, Lcom/miui/backup/NoteStrategy;->mContext:Landroid/content/Context;

    .line 793
    new-instance v0, Lcom/miui/milk/control/local/NoteController;

    iget-object v1, p0, Lcom/miui/backup/NoteStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/NoteController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/NoteStrategy;->mNoteController:Lcom/miui/milk/control/local/NoteController;

    .line 794
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/NoteStrategy;->mDataFile:Ljava/io/File;

    .line 795
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 799
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 800
    iget-object v0, p0, Lcom/miui/backup/NoteStrategy;->mNoteController:Lcom/miui/milk/control/local/NoteController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/NoteController;->cancel()V

    .line 801
    return-void
.end method
