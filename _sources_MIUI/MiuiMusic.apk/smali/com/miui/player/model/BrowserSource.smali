.class public interface abstract Lcom/miui/player/model/BrowserSource;
.super Ljava/lang/Object;
.source "BrowserSource.java"


# static fields
.field public static final STYLE_DARK:I = 0x1

.field public static final STYLE_NORMAL:I


# virtual methods
.method public abstract createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
.end method

.method public abstract getBrowserView()Landroid/view/View;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentBrowserCursor()Landroid/database/Cursor;
.end method

.method public abstract getListStyle()I
.end method

.method public abstract getPlayList()Ljava/lang/String;
.end method

.method public abstract inititalizeByCursor(Landroid/database/Cursor;Z)V
.end method

.method public abstract isCurrentBrowserCursor(Landroid/database/Cursor;)Z
.end method

.method public abstract isPlaylistEditMode()Z
.end method

.method public abstract setCurrentBrowserCursor(Landroid/database/Cursor;)V
.end method

.method public abstract updateViews()V
.end method
