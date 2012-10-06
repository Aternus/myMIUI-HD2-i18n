.class public Lcom/miui/player/model/SectionCursor;
.super Landroid/database/CursorWrapper;
.source "SectionCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/SectionCursor$SectionInfo;
    }
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mIgoreHeaderCount:I

.field private mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

.field private final mSortKeyIdx:I


# direct methods
.method private constructor <init>(Landroid/database/Cursor;Ljava/lang/String;I)V
    .locals 1
    .parameter "cursor"
    .parameter "sortKey"
    .parameter "headerIgnore"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    .line 27
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor;->mCursor:Landroid/database/Cursor;

    .line 28
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/SectionCursor;->mSortKeyIdx:I

    .line 29
    iput p3, p0, Lcom/miui/player/model/SectionCursor;->mIgoreHeaderCount:I

    .line 30
    return-void
.end method

.method private updateSectionInfo()Lcom/miui/player/model/SectionCursor$SectionInfo;
    .locals 14

    .prologue
    const/16 v12, 0x41

    const/4 v13, 0x0

    .line 62
    iget-object v5, p0, Lcom/miui/player/model/SectionCursor;->mCursor:Landroid/database/Cursor;

    .line 64
    .local v5, cursor:Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 65
    new-instance v11, Lcom/miui/player/model/SectionCursor$SectionInfo;

    new-array v12, v13, [Ljava/lang/Character;

    new-array v13, v13, [Ljava/lang/Integer;

    invoke-direct {v11, v12, v13}, Lcom/miui/player/model/SectionCursor$SectionInfo;-><init>([Ljava/lang/Character;[Ljava/lang/Integer;)V

    .line 120
    :goto_0
    return-object v11

    .line 68
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, countArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v9, titleArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Character;>;"
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 71
    .local v6, oldPosition:I
    const/16 v4, 0x23

    .line 72
    .local v4, current:C
    iget v1, p0, Lcom/miui/player/model/SectionCursor;->mIgoreHeaderCount:I

    .line 73
    .local v1, count:I
    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 74
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_1

    .line 75
    iget v11, p0, Lcom/miui/player/model/SectionCursor;->mSortKeyIdx:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, sort:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 77
    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 78
    .local v0, c:C
    if-lt v0, v12, :cond_2

    .line 88
    .end local v0           #c:C
    .end local v8           #sort:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v5}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_6

    .line 93
    iget v11, p0, Lcom/miui/player/model/SectionCursor;->mSortKeyIdx:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-interface {v5}, Landroid/database/Cursor;->isLast()Z

    move-result v11

    if-nez v11, :cond_5

    .line 96
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 97
    iget v11, p0, Lcom/miui/player/model/SectionCursor;->mSortKeyIdx:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 98
    .restart local v0       #c:C
    if-eq v0, v4, :cond_4

    if-lt v0, v12, :cond_4

    const/16 v11, 0x5a

    if-gt v0, v11, :cond_4

    .line 99
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    move v4, v0

    .line 102
    const/4 v1, 0x1

    goto :goto_3

    .line 83
    .end local v0           #c:C
    .restart local v8       #sort:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 74
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 86
    .end local v8           #sort:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_2

    .line 104
    .restart local v0       #c:C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 108
    .end local v0           #c:C
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_6
    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 115
    .local v7, size:I
    new-array v10, v7, [Ljava/lang/Character;

    .line 116
    .local v10, titles:[Ljava/lang/Character;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    new-array v3, v7, [Ljava/lang/Integer;

    .line 118
    .local v3, counts:[Ljava/lang/Integer;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    new-instance v11, Lcom/miui/player/model/SectionCursor$SectionInfo;

    invoke-direct {v11, v10, v3}, Lcom/miui/player/model/SectionCursor$SectionInfo;-><init>([Ljava/lang/Character;[Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method public static wrap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"
    .parameter "sortKey"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroid/database/Cursor;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1
    .parameter "c"
    .parameter "sortKey"
    .parameter "headerIgnore"

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/player/model/SectionCursor;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/model/SectionCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSectionInfo()Lcom/miui/player/model/SectionCursor$SectionInfo;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/miui/player/model/SectionCursor;->updateSectionInfo()Lcom/miui/player/model/SectionCursor$SectionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    monitor-exit p0

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/miui/player/model/SectionCursor;->resetSectionInfo()V

    .line 35
    invoke-super {p0}, Landroid/database/CursorWrapper;->requery()Z

    move-result v0

    return v0
.end method

.method public resetSectionInfo()V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
