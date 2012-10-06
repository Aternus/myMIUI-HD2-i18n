.class public Lcom/miui/player/helper/LyricParser;
.super Ljava/lang/Object;
.source "LyricParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/LyricParser$1;,
        Lcom/miui/player/helper/LyricParser$EntityCompator;,
        Lcom/miui/player/helper/LyricParser$Lyric;,
        Lcom/miui/player/helper/LyricParser$LyricHeader;,
        Lcom/miui/player/helper/LyricParser$LyricEntity;,
        Lcom/miui/player/helper/LyricParser$LyricShot;
    }
.end annotation


# static fields
.field private static final INTERVAL_OF_LAST:I = 0x1f40

.field private static final LINE_PARSE_IGNORE:I = 0x1

.field private static final LINE_PARSE_REGULAR:I = 0x2

.field private static final LINE_PARSE_STOP:I = 0x0

.field public static final MAX_VALID_TIME:I = 0x112a880

.field private static final TAG_ALBUM:Ljava/lang/String; = "al"

.field private static final TAG_ARTIST:Ljava/lang/String; = "ar"

.field private static final TAG_EDITOR:Ljava/lang/String; = "by"

.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern; = null

.field private static final TAG_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG_TITLE:Ljava/lang/String; = "ti"

.field private static final TAG_VERSION:Ljava/lang/String; = "ve"

.field private static final TTPOD_ABOUT:Ljava/lang/String; = "\u5929\u5929\u52a8\u542c"

.field private static final TTPOD_END:Ljava/lang/String; = "</content>"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/LyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    return-void
.end method

.method private static doParse(Ljava/io/File;)Lcom/miui/player/helper/LyricParser$Lyric;
    .locals 12
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v7, 0x0

    .line 373
    .local v7, needModify:Z
    const/4 v6, 0x0

    .line 374
    .local v6, lyric:Lcom/miui/player/helper/LyricParser$Lyric;
    new-instance v2, Lcom/miui/player/helper/LyricParser$LyricHeader;

    invoke-direct {v2}, Lcom/miui/player/helper/LyricParser$LyricHeader;-><init>()V

    .line 375
    .local v2, header:Lcom/miui/player/helper/LyricParser$LyricHeader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v1, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/LyricParser$LyricEntity;>;"
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 377
    .local v3, inputStream:Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/player/helper/LyricEncodingDetector;->detectEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, encoding:Ljava/lang/String;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 379
    .local v4, inputStreamReader:Ljava/io/InputStreamReader;
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 380
    .local v8, reader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 381
    .local v9, str:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 382
    invoke-static {v9, v2, v1}, Lcom/miui/player/helper/LyricParser;->parseLine(Ljava/lang/String;Lcom/miui/player/helper/LyricParser$LyricHeader;Ljava/util/ArrayList;)I

    move-result v5

    .line 384
    .local v5, lineParseRet:I
    if-nez v5, :cond_3

    .line 393
    .end local v5           #lineParseRet:I
    :cond_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 394
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 395
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 397
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 399
    new-instance v10, Lcom/miui/player/helper/LyricParser$EntityCompator;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/miui/player/helper/LyricParser$EntityCompator;-><init>(Lcom/miui/player/helper/LyricParser$1;)V

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 400
    new-instance v6, Lcom/miui/player/helper/LyricParser$Lyric;

    .end local v6           #lyric:Lcom/miui/player/helper/LyricParser$Lyric;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10, v2, v1, v7}, Lcom/miui/player/helper/LyricParser$Lyric;-><init>(Ljava/lang/String;Lcom/miui/player/helper/LyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    .line 403
    .restart local v6       #lyric:Lcom/miui/player/helper/LyricParser$Lyric;
    :cond_2
    return-object v6

    .line 388
    .restart local v5       #lineParseRet:I
    :cond_3
    const/4 v10, 0x1

    if-ne v5, v10, :cond_0

    .line 389
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 9
    .parameter "values"
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/LyricParser$LyricEntity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/LyricParser$LyricEntity;>;"
    const/4 v2, 0x2

    .line 518
    .local v2, lineParseRet:I
    :try_start_0
    array-length v7, p0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-int v3, v7

    .line 519
    .local v3, second:I
    const/16 v6, 0x3c

    .line 520
    .local v6, weight:I
    array-length v7, p0

    const/4 v8, 0x2

    sub-int v1, v7, v8

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 521
    aget-object v7, p0, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 522
    .local v5, val:I
    mul-int/2addr v5, v6

    .line 523
    mul-int/lit8 v6, v6, 0x3c

    .line 524
    add-int/2addr v3, v5

    .line 520
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 527
    .end local v5           #val:I
    :cond_0
    mul-int/lit16 v4, v3, 0x3e8

    .line 529
    .local v4, time:I
    const v7, 0x112a880

    if-ge v4, v7, :cond_1

    .line 530
    new-instance v7, Lcom/miui/player/helper/LyricParser$LyricEntity;

    invoke-direct {v7, v4, p2}, Lcom/miui/player/helper/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v1           #i:I
    .end local v3           #second:I
    .end local v4           #time:I
    .end local v6           #weight:I
    :cond_1
    :goto_1
    return v2

    .line 532
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 534
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static parseHeader(Ljava/lang/String;Lcom/miui/player/helper/LyricParser$LyricHeader;)I
    .locals 7
    .parameter "str"
    .parameter "header"

    .prologue
    const/4 v6, 0x1

    .line 482
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 483
    .local v1, indexOfTag:I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    if-lt v1, v5, :cond_1

    :cond_0
    move v5, v6

    .line 511
    :goto_0
    return v5

    .line 487
    :cond_1
    const/4 v2, 0x2

    .line 488
    .local v2, lineParseRet:I
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, tag:Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, value:Ljava/lang/String;
    const-string v5, "al"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 492
    iput-object v4, p1, Lcom/miui/player/helper/LyricParser$LyricHeader;->album:Ljava/lang/String;

    :goto_1
    move v5, v2

    .line 511
    goto :goto_0

    .line 493
    :cond_2
    const-string v5, "ar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 494
    iput-object v4, p1, Lcom/miui/player/helper/LyricParser$LyricHeader;->artist:Ljava/lang/String;

    goto :goto_1

    .line 495
    :cond_3
    const-string v5, "ti"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 496
    iput-object v4, p1, Lcom/miui/player/helper/LyricParser$LyricHeader;->title:Ljava/lang/String;

    goto :goto_1

    .line 497
    :cond_4
    const-string v5, "by"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 498
    iput-object v4, p1, Lcom/miui/player/helper/LyricParser$LyricHeader;->editor:Ljava/lang/String;

    goto :goto_1

    .line 499
    :cond_5
    const-string v5, "ve"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 500
    iput-object v4, p1, Lcom/miui/player/helper/LyricParser$LyricHeader;->version:Ljava/lang/String;

    goto :goto_1

    .line 501
    :cond_6
    const-string v5, "offset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 503
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 504
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 505
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .line 506
    goto :goto_1

    .line 508
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static parseLine(Ljava/lang/String;Lcom/miui/player/helper/LyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .locals 8
    .parameter "str"
    .parameter "header"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/player/helper/LyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/LyricParser$LyricEntity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 424
    .local p2, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/LyricParser$LyricEntity;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 p0, 0x1

    .line 477
    .end local p0
    :goto_0
    return p0

    .line 429
    .restart local p0
    :cond_0
    const-string v0, "\u5929\u5929\u52a8\u542c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const/4 p0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const-string v0, "</content>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    const/4 p0, 0x0

    goto :goto_0

    .line 438
    :cond_2
    sget-object v0, Lcom/miui/player/helper/LyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 439
    .local p0, matcher:Ljava/util/regex/Matcher;
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 442
    .local p0, str:Ljava/lang/String;
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 443
    .local v1, indexOfLastTag:I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 444
    const/4 p0, 0x1

    goto :goto_0

    .line 446
    :cond_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, content:Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 449
    .local v2, indexOfLeftTag:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 450
    const/4 p0, 0x1

    goto :goto_0

    .line 454
    :cond_4
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 456
    const/4 v3, 0x2

    .line 458
    .local v3, lineParseRet:I
    const-string v1, "]"

    .end local v1           #indexOfLastTag:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 459
    .local p0, entityStr:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v2, p0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_8

    aget-object v4, p0, v1

    .line 460
    .local v4, s:Ljava/lang/String;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 459
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    :cond_6
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 465
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, values:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5

    .line 470
    const/4 v3, 0x0

    aget-object v3, v5, v3

    .end local v3           #lineParseRet:I
    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 471
    invoke-static {v5, p2, v0}, Lcom/miui/player/helper/LyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #lineParseRet:I
    goto :goto_2

    .line 473
    .end local v3           #lineParseRet:I
    :cond_7
    invoke-static {v4, p1}, Lcom/miui/player/helper/LyricParser;->parseHeader(Ljava/lang/String;Lcom/miui/player/helper/LyricParser$LyricHeader;)I

    move-result v3

    .restart local v3       #lineParseRet:I
    goto :goto_2

    .end local v4           #s:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_8
    move p0, v3

    .line 477
    goto :goto_0
.end method

.method public static parseLyric(Ljava/io/File;)Lcom/miui/player/helper/LyricParser$Lyric;
    .locals 3
    .parameter "file"

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 337
    .local v1, lyric:Lcom/miui/player/helper/LyricParser$Lyric;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-static {p0}, Lcom/miui/player/helper/LyricParser;->doParse(Ljava/io/File;)Lcom/miui/player/helper/LyricParser$Lyric;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 345
    :cond_0
    :goto_0
    return-object v1

    .line 340
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 342
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseLyric(Ljava/lang/String;)Lcom/miui/player/helper/LyricParser$Lyric;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    const/4 v3, 0x0

    .line 368
    :goto_0
    return-object v3

    .line 353
    :cond_0
    const/4 v2, 0x0

    .line 356
    .local v2, lrc:Lcom/miui/player/helper/LyricParser$Lyric;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 358
    const/4 v2, 0x0

    .end local v1           #file:Ljava/io/File;
    :goto_1
    move-object v3, v2

    .line 368
    goto :goto_0

    .line 360
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    invoke-static {v1}, Lcom/miui/player/helper/LyricParser;->doParse(Ljava/io/File;)Lcom/miui/player/helper/LyricParser$Lyric;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 363
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 365
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
