.class public Lcom/miui/player/helper/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/MediaInfo$ID3CorrectCompletedListener;,
        Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    }
.end annotation


# static fields
.field public static final EDIT_TYPE_ALBUM:I = 0x2

.field public static final EDIT_TYPE_ARTIST:I = 0x1

.field private static final SYS_UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = ""

.field private static sUnknownAlbumName:Ljava/lang/CharSequence;

.field private static sUnknownArtistName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/miui/player/helper/MediaInfo;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 27
    sput-object v0, Lcom/miui/player/helper/MediaInfo;->sUnknownArtistName:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static batchCorretID3Async(Landroid/content/Context;[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;)V
    .locals 2
    .parameter "context"
    .parameter "editInfo"

    .prologue
    .line 97
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Lcom/miui/player/helper/MediaInfo$1;

    invoke-direct {v0, p1, p0}, Lcom/miui/player/helper/MediaInfo$1;-><init>([Lcom/miui/player/helper/MediaInfo$MediaEditInfo;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/MediaInfo$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "file"
    .parameter "title"
    .parameter "artist"
    .parameter "album"

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 132
    .local v2, ret:Z
    invoke-static {p1, p2, p3, p4}, Lcom/miui/player/helper/MediaInfo;->doCorrect(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-static {p1}, Lcom/miui/player/helper/MediaInfo;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 135
    const/4 v2, 0x0

    .line 143
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 137
    .restart local v1       #mimeType:Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doCorrect(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "file"
    .parameter "title"
    .parameter "artist"
    .parameter "album"

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 189
    :goto_0
    return v4

    .line 151
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v5

    .line 152
    goto :goto_0

    .line 155
    :cond_2
    const/4 v2, 0x0

    .line 158
    .local v2, isModified:Z
    :try_start_0
    invoke-static {p0}, Lentagged/audioformats/AudioFileIO;->read(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    .line 159
    .local v0, audio:Lentagged/audioformats/AudioFile;
    invoke-virtual {v0}, Lentagged/audioformats/AudioFile;->getTag()Lentagged/audioformats/Tag;

    move-result-object v3

    .line 160
    .local v3, t:Lentagged/audioformats/Tag;
    invoke-interface {v3}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 161
    invoke-interface {v3, p1}, Lentagged/audioformats/Tag;->setTitle(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x1

    .line 165
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {v3}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 166
    invoke-interface {v3, p2}, Lentagged/audioformats/Tag;->setArtist(Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x1

    .line 170
    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {v3}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 171
    invoke-interface {v3, p3}, Lentagged/audioformats/Tag;->setAlbum(Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x1

    .line 175
    :cond_5
    if-eqz v2, :cond_6

    .line 176
    invoke-virtual {v0}, Lentagged/audioformats/AudioFile;->commit()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lentagged/audioformats/exceptions/CannotWriteException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0           #audio:Lentagged/audioformats/AudioFile;
    .end local v3           #t:Lentagged/audioformats/Tag;
    :cond_6
    :goto_1
    move v4, v2

    .line 189
    goto :goto_0

    .line 181
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 182
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x0

    .line 187
    goto :goto_1

    .line 183
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 184
    .local v1, e:Lentagged/audioformats/exceptions/CannotReadException;
    const/4 v2, 0x0

    .line 187
    goto :goto_1

    .line 185
    .end local v1           #e:Lentagged/audioformats/exceptions/CannotReadException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 186
    .local v1, e:Lentagged/audioformats/exceptions/CannotWriteException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "ar"
    .parameter "al"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-static {p0, p1}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 194
    invoke-static {p0, p2}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 195
    const-string v2, ""

    .line 196
    .local v2, showName:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v5

    .line 197
    .local v1, hasArtist:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v5

    .line 198
    .local v0, hasAlbum:Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    :cond_0
    :goto_2
    return-object v2

    .end local v0           #hasAlbum:Z
    .end local v1           #hasArtist:Z
    :cond_1
    move v1, v4

    .line 196
    goto :goto_0

    .restart local v1       #hasArtist:Z
    :cond_2
    move v0, v4

    .line 197
    goto :goto_1

    .line 200
    .restart local v0       #hasAlbum:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 201
    move-object v2, p1

    goto :goto_2

    .line 202
    :cond_4
    if-eqz v0, :cond_0

    .line 203
    move-object v2, p2

    goto :goto_2
.end method

.method public static getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/miui/player/helper/MediaInfo;->sUnknownAlbumName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 43
    sget-object p1, Lcom/miui/player/helper/MediaInfo;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 50
    :cond_0
    :goto_0
    return-object p1

    .line 45
    :cond_1
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/MediaInfo;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 46
    sget-object p1, Lcom/miui/player/helper/MediaInfo;->sUnknownAlbumName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 54
    invoke-static {p1}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/miui/player/helper/MediaInfo;->sUnknownArtistName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 56
    sget-object p1, Lcom/miui/player/helper/MediaInfo;->sUnknownArtistName:Ljava/lang/CharSequence;

    .line 63
    :cond_0
    :goto_0
    return-object p1

    .line 58
    :cond_1
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/MediaInfo;->sUnknownArtistName:Ljava/lang/CharSequence;

    .line 59
    sget-object p1, Lcom/miui/player/helper/MediaInfo;->sUnknownArtistName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .parameter "file"

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, fileName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 32
    .local v2, lastIndexOfDot:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 33
    const/4 v3, 0x0

    .line 37
    :goto_0
    return-object v3

    .line 36
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, extName:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getRawName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static isUnknowName(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "src"

    .prologue
    .line 71
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
