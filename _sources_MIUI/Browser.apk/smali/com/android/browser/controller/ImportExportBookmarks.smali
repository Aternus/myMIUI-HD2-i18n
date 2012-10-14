.class public Lcom/android/browser/controller/ImportExportBookmarks;
.super Ljava/lang/Object;
.source "ImportExportBookmarks.java"


# static fields
.field private static BOOKMARK_FILE_START_TEXT:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "com.android.browser.controller.ImportExportBookmarks"

    sput-object v0, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    .line 38
    const-string v0, "<!DOCTYPE NETSCAPE-Bookmark-file-1>\n\t<!--This is an automatically generated file.\n\tIt will be read and overwritten.\n\tDo Not Edit! -->\n<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=UTF-8\">\n<Title>Bookmarks</Title>\n<H1>Bookmarks</H1>\n"

    sput-object v0, Lcom/android/browser/controller/ImportExportBookmarks;->BOOKMARK_FILE_START_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exportBookmarks(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "folderPath"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_1
    invoke-static {p0, p1, v5}, Lcom/android/browser/controller/ImportExportBookmarks;->exportDataToHtml(Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1, v4}, Lcom/android/browser/controller/ImportExportBookmarks;->exportDataToHtml(Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    :goto_0
    return v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 49
    goto :goto_0

    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_2
    move v2, v4

    .line 53
    goto :goto_0
.end method

.method private static exportDataToHtml(Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "context"
    .parameter "folderPath"
    .parameter "isBookmark"

    .prologue
    .line 100
    const/4 v7, 0x0

    .line 101
    .local v7, selection:Ljava/lang/String;
    const/4 v0, 0x0

    .line 102
    .local v0, filePath:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 103
    const-string v0, "%s%s%s.html"

    .end local v0           #filePath:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .end local p1
    move-result-object v2

    const v3, 0x7f0900df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .local p1, filePath:Ljava/lang/String;
    move-object v6, p1

    .line 108
    .end local p1           #filePath:Ljava/lang/String;
    .local v6, filePath:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "created> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 112
    .local p1, cursorFolder:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v1, output:Ljava/io/BufferedWriter;
    sget-object v0, Lcom/android/browser/controller/ImportExportBookmarks;->BOOKMARK_FILE_START_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_7

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .end local v7           #selection:Ljava/lang/String;
    .local v2, selection:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 119
    .local v0, folderId:I
    const-string v3, "<DT><H3"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    const-string v3, " ADD_DATE=\""

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    const-string v3, "\">"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    :cond_0
    const-string v3, "</H3>\n"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bookmark = 1 AND folder_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #folderId:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 128
    .end local v2           #selection:Ljava/lang/String;
    .local v0, selection:Ljava/lang/String;
    :try_start_2
    const-string v2, "<DL><p>\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 129
    invoke-static {p0, v1, v0}, Lcom/android/browser/controller/ImportExportBookmarks;->exportDataToHtmlBase(Landroid/app/Activity;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 130
    const-string v2, "</DL><p>\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    .end local v0           #selection:Ljava/lang/String;
    .restart local v2       #selection:Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v1           #output:Ljava/io/BufferedWriter;
    .end local v2           #selection:Ljava/lang/String;
    .end local v6           #filePath:Ljava/lang/String;
    .local v0, filePath:Ljava/lang/String;
    .restart local v7       #selection:Ljava/lang/String;
    .local p1, folderPath:Ljava/lang/String;
    :cond_1
    const-string v0, "%s%s.html"

    .end local v0           #filePath:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .end local p1           #folderPath:Ljava/lang/String;
    move-result-object v2

    const v3, 0x7f0900e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .local p1, filePath:Ljava/lang/String;
    move-object v6, p1

    .end local p1           #filePath:Ljava/lang/String;
    .restart local v6       #filePath:Ljava/lang/String;
    goto/16 :goto_0

    .end local v7           #selection:Ljava/lang/String;
    .restart local v1       #output:Ljava/io/BufferedWriter;
    .restart local v2       #selection:Ljava/lang/String;
    .local p1, cursorFolder:Landroid/database/Cursor;
    :cond_2
    move-object v0, v2

    .line 134
    .end local v2           #selection:Ljava/lang/String;
    .local v0, selection:Ljava/lang/String;
    :goto_2
    :try_start_3
    const-string v0, "bookmark = 1 AND folder_id IS NULL "

    .line 135
    invoke-static {p0, v1, v0}, Lcom/android/browser/controller/ImportExportBookmarks;->exportDataToHtmlBase(Landroid/app/Activity;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 137
    if-nez p2, :cond_6

    .line 138
    const-string p2, "bookmark = 0 "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 139
    .end local v0           #selection:Ljava/lang/String;
    .local p2, selection:Ljava/lang/String;
    :try_start_4
    invoke-static {p0, v1, p2}, Lcom/android/browser/controller/ImportExportBookmarks;->exportDataToHtmlBase(Landroid/app/Activity;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object p0, p2

    .line 142
    .end local p2           #selection:Ljava/lang/String;
    .local p0, selection:Ljava/lang/String;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_3

    .line 148
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_3
    const/4 p1, 0x1

    .end local v1           #output:Ljava/io/BufferedWriter;
    .end local p1           #cursorFolder:Landroid/database/Cursor;
    :goto_4
    return p1

    .line 143
    .restart local v7       #selection:Ljava/lang/String;
    .local p0, context:Landroid/app/Activity;
    .restart local p1       #cursorFolder:Landroid/database/Cursor;
    .local p2, isBookmark:Z
    :catch_0
    move-exception p0

    move-object p2, v7

    .line 144
    .end local v7           #selection:Ljava/lang/String;
    .local p0, e:Ljava/io/IOException;
    .local p2, selection:Ljava/lang/String;
    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 145
    const/4 p0, 0x0

    .line 147
    .end local p0           #e:Ljava/io/IOException;
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 148
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    move p1, p0

    move-object p0, p2

    .end local p2           #selection:Ljava/lang/String;
    .local p0, selection:Ljava/lang/String;
    goto :goto_4

    .line 147
    .restart local v7       #selection:Ljava/lang/String;
    .local p0, context:Landroid/app/Activity;
    .local p2, isBookmark:Z
    :catchall_0
    move-exception p0

    move-object p2, p0

    move-object p0, v7

    .end local v7           #selection:Ljava/lang/String;
    .end local p2           #isBookmark:Z
    .local p0, selection:Ljava/lang/String;
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    .end local p0           #selection:Ljava/lang/String;
    if-nez p0, :cond_5

    .line 148
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p2

    .line 147
    .restart local v1       #output:Ljava/io/BufferedWriter;
    .restart local v2       #selection:Ljava/lang/String;
    .local p0, context:Landroid/app/Activity;
    .restart local p2       #isBookmark:Z
    :catchall_1
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    .end local v2           #selection:Ljava/lang/String;
    .local p0, selection:Ljava/lang/String;
    goto :goto_6

    .restart local v0       #selection:Ljava/lang/String;
    .local p0, context:Landroid/app/Activity;
    :catchall_2
    move-exception p0

    move-object p2, p0

    move-object p0, v0

    .end local v0           #selection:Ljava/lang/String;
    .local p0, selection:Ljava/lang/String;
    goto :goto_6

    .end local v1           #output:Ljava/io/BufferedWriter;
    .end local p0           #selection:Ljava/lang/String;
    .local p2, selection:Ljava/lang/String;
    :catchall_3
    move-exception p0

    move-object v8, p0

    move-object p0, p2

    .end local p2           #selection:Ljava/lang/String;
    .restart local p0       #selection:Ljava/lang/String;
    move-object p2, v8

    goto :goto_6

    .restart local v1       #output:Ljava/io/BufferedWriter;
    :catchall_4
    move-exception p2

    goto :goto_6

    .line 143
    .restart local v2       #selection:Ljava/lang/String;
    .local p0, context:Landroid/app/Activity;
    .local p2, isBookmark:Z
    :catch_1
    move-exception p0

    move-object p2, v2

    .end local v2           #selection:Ljava/lang/String;
    .local p2, selection:Ljava/lang/String;
    goto :goto_5

    .restart local v0       #selection:Ljava/lang/String;
    .local p2, isBookmark:Z
    :catch_2
    move-exception p0

    move-object p2, v0

    .end local v0           #selection:Ljava/lang/String;
    .local p2, selection:Ljava/lang/String;
    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_5

    .end local p2           #selection:Ljava/lang/String;
    .local p0, selection:Ljava/lang/String;
    :catch_4
    move-exception p2

    move-object v8, p2

    move-object p2, p0

    .end local p0           #selection:Ljava/lang/String;
    .restart local p2       #selection:Ljava/lang/String;
    move-object p0, v8

    goto :goto_5

    .restart local v0       #selection:Ljava/lang/String;
    .local p0, context:Landroid/app/Activity;
    .local p2, isBookmark:Z
    :cond_6
    move-object p0, v0

    .end local v0           #selection:Ljava/lang/String;
    .local p0, selection:Ljava/lang/String;
    goto :goto_3

    .restart local v7       #selection:Ljava/lang/String;
    .local p0, context:Landroid/app/Activity;
    :cond_7
    move-object v0, v7

    .end local v7           #selection:Ljava/lang/String;
    .restart local v0       #selection:Ljava/lang/String;
    goto :goto_2
.end method

.method private static exportDataToHtmlBase(Landroid/app/Activity;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "output"
    .parameter "selection"

    .prologue
    .line 57
    const/4 v6, 0x0

    .line 59
    .local v6, cursorWebsites:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 61
    if-eqz v6, :cond_4

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    const-string v0, "<DT><A"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    const-string v0, " HREF=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 67
    :cond_0
    const-string v0, "\" ADD_DATE=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 68
    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 69
    const-string v0, "\" BOOKMARK=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 71
    const-string v0, "\" FOLDER_ID=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 72
    const/16 v0, 0xd

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 73
    const-string v0, "\" VISITS=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 75
    const-string v0, "\" POSITION=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 76
    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 77
    const-string v0, "\" DATE=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 79
    const-string v0, "\" MODE=\""

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 80
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "\" ICON=\"data:image/png;base64,"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/common/Base64Coder;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    :cond_1
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 88
    :cond_2
    const-string v0, "</A>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 92
    .local v7, e:Ljava/io/IOException;
    :try_start_1
    sget-object v0, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void

    .line 94
    :cond_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static importBookmarkHistory(Landroid/app/Activity;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 154
    const-string v0, "%s%s.html"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/browser/util/MirenConstants;->BACKUP_PATH:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/controller/ImportExportBookmarks;->importBookmarkHistory(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static importBookmarkHistory(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 23
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 160
    :try_start_0
    new-instance v21, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    .local v21, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 162
    .local v3, mode:I
    const/4 v12, 0x0

    .line 163
    .local v12, visits:I
    const-wide/16 v13, 0x0

    .line 164
    .local v13, date:J
    const/4 v15, 0x0

    .line 165
    .local v15, position:F
    const-string p1, ""

    .line 166
    .local p1, line:Ljava/lang/String;
    const-string v6, ""

    .line 168
    .local v6, title:Ljava/lang/String;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v19, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, -0x1

    .line 170
    .local v17, folderId:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, cr:Landroid/content/ContentResolver;
    move v9, v3

    .line 171
    .end local v3           #mode:I
    .local v9, mode:I
    :cond_0
    :goto_0
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const-string v3, "<DT><H3"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const/4 v3, 0x0

    const-string v5, "<"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 176
    const-string v3, ">"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1           #line:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    .restart local p1       #line:Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/browser/controller/BookmarkFolder;->addBookmarkFolder(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 178
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/browser/controller/BookmarkFolder;->getFolderIdByTitle(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v17

    goto :goto_0

    .line 180
    :cond_1
    const-string v3, "<DT><A"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 181
    const-string v3, "<DT><A"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1           #line:Ljava/lang/String;
    const-string v3, "\""

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 182
    .local v18, line:Ljava/lang/String;
    const/16 p1, 0x0

    const/16 v3, 0x3e

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move-object/from16 v0, v18

    move/from16 v1, p1

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, " "

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 183
    .local p1, items:[Ljava/lang/String;
    move-object/from16 p1, p1

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v8, v0

    .local v8, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v8, :cond_4

    aget-object v7, p1, v3

    .line 184
    .local v7, item:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 185
    .local v5, index:I
    if-ltz v5, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v5, v10, :cond_3

    .line 183
    .end local v5           #index:I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    .restart local v5       #index:I
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v5           #index:I
    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v10

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 240
    .end local v3           #i$:I
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #item:Ljava/lang/String;
    .end local v8           #len$:I
    .end local v9           #mode:I
    .end local v12           #visits:I
    .end local v13           #date:J
    .end local v15           #position:F
    .end local v17           #folderId:I
    .end local v18           #line:Ljava/lang/String;
    .end local v19           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #reader:Ljava/io/BufferedReader;
    .end local p0
    .end local p1           #arr$:[Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 241
    .local p0, e:Ljava/io/FileNotFoundException;
    sget-object p1, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/16 p0, 0x0

    .line 247
    .end local p0           #e:Ljava/io/FileNotFoundException;
    :goto_3
    return p0

    .line 190
    .restart local v3       #i$:I
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v6       #title:Ljava/lang/String;
    .restart local v8       #len$:I
    .restart local v9       #mode:I
    .restart local v12       #visits:I
    .restart local v13       #date:J
    .restart local v15       #position:F
    .restart local v17       #folderId:I
    .restart local v18       #line:Ljava/lang/String;
    .restart local v19       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21       #reader:Ljava/io/BufferedReader;
    .local p0, context:Landroid/app/Activity;
    .restart local p1       #arr$:[Ljava/lang/String;
    :cond_4
    const/16 p1, 0x3e

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .end local p1           #arr$:[Ljava/lang/String;
    move-result p1

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_5

    .end local v3           #i$:I
    const/16 p1, 0x3c

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_5

    .line 191
    const/16 p1, 0x3e

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/16 v3, 0x3c

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v18

    move/from16 v1, p1

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    :cond_5
    const/4 v11, 0x0

    .line 194
    .local v11, favicon:Landroid/graphics/Bitmap;
    const-string p1, "ICON"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 195
    const-string p1, "ICON"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 196
    .local p1, dataFavicon:Ljava/lang/String;
    const-string v3, "data:image/png;base64,"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p1

    .line 197
    const/4 v3, 0x0

    .line 199
    .local v3, favArr:[B
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/android/browser/common/Base64Coder;->decode(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object p1

    .line 203
    .end local v3           #favArr:[B
    .local p1, favArr:[B
    :goto_4
    if-eqz p1, :cond_6

    .line 204
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v11

    .line 207
    .end local p1           #favArr:[B
    :cond_6
    :try_start_4
    const-string p1, "VISITS"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 208
    const-string p1, "VISITS"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 210
    :cond_7
    const-string p1, "MODE"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 211
    const-string p1, "MODE"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result p1

    .line 213
    .end local v9           #mode:I
    .local p1, mode:I
    :goto_5
    :try_start_5
    const-string v3, "DATE"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 214
    const-string v3, "DATE"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 216
    :cond_8
    const-string v3, "POSITION"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 217
    const-string v3, "POSITION"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v15

    :cond_9
    move/from16 v20, p1

    .line 222
    .end local p1           #mode:I
    .local v20, mode:I
    :goto_6
    :try_start_6
    const-string p1, "BOOKMARK"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "BOOKMARK"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v3, "0"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 223
    const-string p1, "HREF"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateVisitedHistory(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZI)J

    .line 234
    .end local v8           #len$:I
    :goto_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    move-object/from16 p1, v18

    .end local v18           #line:Ljava/lang/String;
    .local p1, line:Ljava/lang/String;
    move/from16 v9, v20

    .line 235
    .end local v20           #mode:I
    .restart local v9       #mode:I
    goto/16 :goto_0

    .line 200
    .restart local v3       #favArr:[B
    .restart local v8       #len$:I
    .restart local v18       #line:Ljava/lang/String;
    .local p1, dataFavicon:Ljava/lang/String;
    :catch_1
    move-exception p1

    .line 201
    .local p1, e:Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    const-string v7, "error"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 p1, v3

    .end local v3           #favArr:[B
    .local p1, favArr:[B
    goto/16 :goto_4

    .line 219
    .end local p1           #favArr:[B
    :catch_2
    move-exception p1

    move v3, v9

    .line 220
    .end local v9           #mode:I
    .local v3, mode:I
    .local p1, e:Ljava/lang/NumberFormatException;
    :goto_8
    sget-object v5, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    const-string v7, "error"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v20, v3

    .end local v3           #mode:I
    .restart local v20       #mode:I
    goto :goto_6

    .line 225
    .end local p1           #e:Ljava/lang/NumberFormatException;
    :cond_a
    new-instance p1, Lcom/android/browser/model/BrowserDatabaseHelper;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/model/BrowserDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 226
    .local p1, dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v7

    .line 229
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_7
    const-string p1, "HREF"

    .end local p1           #dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #len$:I
    const/4 v10, 0x0

    const/16 v16, 0x1

    move-object v9, v6

    invoke-static/range {v7 .. v17}, Lcom/android/browser/api_v8/Bookmarks;->importBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    :try_start_8
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 243
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #favicon:Landroid/graphics/Bitmap;
    .end local v12           #visits:I
    .end local v13           #date:J
    .end local v15           #position:F
    .end local v17           #folderId:I
    .end local v18           #line:Ljava/lang/String;
    .end local v19           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20           #mode:I
    .end local v21           #reader:Ljava/io/BufferedReader;
    .end local p0           #context:Landroid/app/Activity;
    :catch_3
    move-exception p0

    .line 244
    .local p0, e:Ljava/io/IOException;
    sget-object p1, Lcom/android/browser/controller/ImportExportBookmarks;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/16 p0, 0x0

    goto/16 :goto_3

    .line 231
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v6       #title:Ljava/lang/String;
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #favicon:Landroid/graphics/Bitmap;
    .restart local v12       #visits:I
    .restart local v13       #date:J
    .restart local v15       #position:F
    .restart local v17       #folderId:I
    .restart local v18       #line:Ljava/lang/String;
    .restart local v19       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20       #mode:I
    .restart local v21       #reader:Ljava/io/BufferedReader;
    .local p0, context:Landroid/app/Activity;
    :catchall_0
    move-exception p0

    .end local p0           #context:Landroid/app/Activity;
    :try_start_9
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p0

    .line 236
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #favicon:Landroid/graphics/Bitmap;
    .end local v18           #line:Ljava/lang/String;
    .end local v20           #mode:I
    .restart local v9       #mode:I
    .restart local p0       #context:Landroid/app/Activity;
    .local p1, line:Ljava/lang/String;
    :cond_b
    const-string v3, "</DL><p>"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const/16 v17, -0x1

    goto/16 :goto_0

    .line 247
    :cond_c
    const/16 p0, 0x1

    goto/16 :goto_3

    .line 219
    .end local v9           #mode:I
    .restart local v8       #len$:I
    .restart local v11       #favicon:Landroid/graphics/Bitmap;
    .restart local v18       #line:Ljava/lang/String;
    .local p1, mode:I
    :catch_4
    move-exception v3

    move-object/from16 v22, v3

    move/from16 v3, p1

    .end local p1           #mode:I
    .restart local v3       #mode:I
    move-object/from16 p1, v22

    goto :goto_8

    .end local v3           #mode:I
    .restart local v9       #mode:I
    :cond_d
    move/from16 p1, v9

    .end local v9           #mode:I
    .restart local p1       #mode:I
    goto/16 :goto_5
.end method
