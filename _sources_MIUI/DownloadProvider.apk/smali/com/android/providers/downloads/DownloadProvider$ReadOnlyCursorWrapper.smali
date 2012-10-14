.class Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "DownloadProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyCursorWrapper"
.end annotation


# instance fields
.field private mCursor:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/android/providers/downloads/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "cursor"

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    .line 1159
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1160
    check-cast p2, Landroid/database/CrossProcessCursor;

    .end local p2
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    .line 1161
    return-void
.end method


# virtual methods
.method public commitUpdates()Z
    .locals 2

    .prologue
    .line 1168
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteRow()Z
    .locals 2

    .prologue
    .line 1164
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 1173
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
