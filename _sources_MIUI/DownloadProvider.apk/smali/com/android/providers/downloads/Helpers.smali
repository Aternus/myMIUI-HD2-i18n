.class public Lcom/android/providers/downloads/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/Helpers$Lexer;,
        Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static sDownloadOnlyOnWifi:Z

.field public static sDownloadsDomainCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sMaxDownloadsCount:I

.field public static sMaxDownloadsCountPerDomain:I

.field public static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    .line 53
    const/4 v0, 0x5

    sput v0, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCount:I

    .line 55
    const/4 v0, 0x2

    sput v0, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCountPerDomain:I

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/downloads/Helpers;->sDownloadOnlyOnWifi:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    .line 62
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "context"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "isPublicApi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "mimeType"
    .parameter "destination"
    .parameter "filename"
    .parameter "dotIndex"

    .prologue
    const-string v5, "DownloadManager"

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 461
    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 462
    .local v1, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, typeFromExt:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 465
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_4

    .line 467
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_1

    .line 468
    const-string v3, "DownloadManager"

    const-string v3, "substituting extension from type"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v1           #lastDotIndex:I
    .end local v2           #typeFromExt:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 478
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_2

    .line 479
    const-string v3, "DownloadManager"

    const-string v3, "keeping extension"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_3
    return-object v0

    .line 471
    .restart local v1       #lastDotIndex:I
    .restart local v2       #typeFromExt:Ljava/lang/String;
    :cond_4
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_1

    .line 472
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find extension for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "mimeType"
    .parameter "useDefaults"

    .prologue
    const-string v3, "DownloadManager"

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 420
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_4

    .line 422
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 423
    const-string v1, "DownloadManager"

    const-string v1, "adding extension from type"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 433
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 434
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_2

    .line 436
    const-string v1, "DownloadManager"

    const-string v1, "adding default html extension"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_2
    const-string v0, ".html"

    .line 452
    :cond_3
    :goto_1
    return-object v0

    .line 427
    :cond_4
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 428
    const-string v1, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t find extension for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_5
    if-eqz p1, :cond_3

    .line 440
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_6

    .line 441
    const-string v1, "DownloadManager"

    const-string v1, "adding default text extension"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_6
    const-string v0, ".txt"

    goto :goto_1

    .line 445
    :cond_7
    if-eqz p1, :cond_3

    .line 446
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_8

    .line 447
    const-string v1, "DownloadManager"

    const-string v1, "adding default binary extension"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_8
    const-string v0, ".bin"

    goto :goto_1
.end method

.method private static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "destination"

    .prologue
    const/16 v8, 0x3f

    const/16 v6, 0x2f

    const-string v7, "/"

    const-string v5, "DownloadManager"

    .line 340
    const/4 v2, 0x0

    .line 343
    .local v2, filename:Ljava/lang/String;
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    const-string v4, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 344
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_0

    .line 345
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from hint"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 348
    .local v3, index:I
    if-lez v3, :cond_a

    .line 349
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    .end local v3           #index:I
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    .line 357
    invoke-static {p2}, Lcom/android/providers/downloads/Helpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_3

    .line 359
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_2

    .line 360
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from content-disposition"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 363
    .restart local v3       #index:I
    if-lez v3, :cond_3

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .end local v3           #index:I
    :cond_3
    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    .line 371
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, decodedContentLocation:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    .line 375
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_4

    .line 376
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from content-location"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 379
    .restart local v3       #index:I
    if-lez v3, :cond_b

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v3           #index:I
    :cond_5
    :goto_1
    if-nez v2, :cond_7

    .line 389
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v4, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_7

    .line 392
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 393
    .restart local v3       #index:I
    if-lez v3, :cond_7

    .line 394
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_6

    .line 395
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from uri"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v3           #index:I
    :cond_7
    if-nez v2, :cond_9

    .line 404
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_8

    .line 405
    const-string v4, "DownloadManager"

    const-string v4, "using default filename"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_8
    const-string v2, "downloadfile"

    .line 412
    :cond_9
    invoke-static {v2}, Lcom/android/providers/downloads/Helpers;->replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    return-object v2

    .line 351
    .restart local v3       #index:I
    :cond_a
    move-object v2, p1

    goto/16 :goto_0

    .line 382
    .restart local v0       #decodedContentLocation:Ljava/lang/String;
    :cond_b
    move-object v2, v0

    goto :goto_1
.end method

.method private static chooseFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .parameter "subDirectory"
    .parameter "appointName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 222
    move-object v2, p0

    move-object v3, p5

    move v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    invoke-static/range {v2 .. v7}, Lcom/android/providers/downloads/Helpers;->locateDestinationDirectory(Landroid/content/Context;Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 223
    .local p0, base:Ljava/io/File;
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    .end local p7
    if-nez p7, :cond_0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #base:Ljava/io/File;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object v0, p0

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_0
    return-object p0

    .line 227
    .restart local p0       #base:Ljava/io/File;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_0
    invoke-static {p1, p2, p3, p4, p6}, Lcom/android/providers/downloads/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 232
    .local p3, filename:Ljava/lang/String;
    const/4 p1, 0x0

    .line 233
    .local p1, extension:Ljava/lang/String;
    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(I)I

    .end local p1           #extension:Ljava/lang/String;
    move-result p1

    .line 234
    .local p1, dotIndex:I
    if-gez p1, :cond_2

    .line 235
    const/4 p1, 0x1

    invoke-static {p5, p1}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    .end local p1           #dotIndex:I
    move-result-object p1

    .local p1, extension:Ljava/lang/String;
    move-object p2, p3

    .line 241
    .end local p3           #filename:Ljava/lang/String;
    .end local p4
    .local p2, filename:Ljava/lang/String;
    :goto_1
    const-string p3, "recovery"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    .line 243
    .local p3, recoveryDir:Z
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #base:Ljava/io/File;
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    .end local p2           #filename:Ljava/lang/String;
    .local p0, filename:Ljava/lang/String;
    sget-boolean p2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz p2, :cond_1

    .line 246
    const-string p2, "DownloadManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "target file: "

    .end local p5
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    invoke-static {p6, p0, p1, p3}, Lcom/android/providers/downloads/Helpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 237
    .local p0, base:Ljava/io/File;
    .local p1, dotIndex:I
    .local p2, hint:Ljava/lang/String;
    .local p3, filename:Ljava/lang/String;
    .restart local p4
    .restart local p5
    :cond_2
    invoke-static {p5, p6, p3, p1}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 238
    .local p2, extension:Ljava/lang/String;
    const/4 p4, 0x0

    invoke-virtual {p3, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p4
    move-result-object p1

    .end local p3           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    move-object v8, p2

    .end local p2           #extension:Ljava/lang/String;
    .local v8, extension:Ljava/lang/String;
    move-object p2, p1

    .end local p1           #filename:Ljava/lang/String;
    .local p2, filename:Ljava/lang/String;
    move-object p1, v8

    .end local v8           #extension:Ljava/lang/String;
    .local p1, extension:Ljava/lang/String;
    goto :goto_1
.end method

.method private static chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "destination"
    .parameter "filename"
    .parameter "extension"
    .parameter "recoveryDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, fullFilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    const/4 v5, 0x3

    if-eq p0, v5, :cond_1

    :cond_0
    move-object v1, v0

    .line 516
    .end local v0           #fullFilename:Ljava/lang/String;
    .local v1, fullFilename:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 496
    .end local v1           #fullFilename:Ljava/lang/String;
    .restart local v0       #fullFilename:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 511
    const/4 v4, 0x1

    .line 512
    .local v4, sequence:I
    const/4 v3, 0x1

    .local v3, magnitude:I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v3, v5, :cond_5

    .line 513
    const/4 v2, 0x0

    .local v2, iteration:I
    :goto_2
    const/16 v5, 0x9

    if-ge v2, v5, :cond_4

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v1, v0

    .line 516
    .end local v0           #fullFilename:Ljava/lang/String;
    .restart local v1       #fullFilename:Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v1           #fullFilename:Ljava/lang/String;
    .restart local v0       #fullFilename:Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_3

    .line 519
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file with sequence number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_3
    sget-object v5, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 512
    :cond_4
    mul-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 524
    .end local v2           #iteration:I
    :cond_5
    new-instance v5, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const/16 v6, 0x1ec

    const-string v7, "failed to generate an unused filename on internal download storage"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method static deleteFile(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "resolver"
    .parameter "id"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 914
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    .end local v1           #file:Ljava/io/File;
    :goto_0
    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 921
    return-void

    .line 916
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 917
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' couldn\'t be deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final discardPurgeableFiles(Landroid/content/Context;J)Z
    .locals 8
    .parameter "context"
    .parameter "targetBytes"

    .prologue
    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "( status = \'200\' AND destination = \'2\' )"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 543
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 544
    const/4 p0, 0x0

    .line 572
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 546
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local p0
    .restart local p1
    :cond_0
    const-wide/16 v1, 0x0

    .line 548
    .local v1, totalFreed:J
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v1

    .line 549
    .end local v1           #totalFreed:J
    .local v2, totalFreed:J
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    .line 550
    new-instance v1, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, file:Ljava/io/File;
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_1

    .line 552
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "purging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    add-long v3, v2, v4

    .line 556
    .end local v2           #totalFreed:J
    .local v3, totalFreed:J
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 557
    const-string v1, "_id"

    .end local v1           #file:Ljava/io/File;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 558
    .local v1, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .end local v1           #id:J
    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 561
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v2, v3

    .line 562
    .end local v3           #totalFreed:J
    .restart local v2       #totalFreed:J
    goto :goto_1

    .line 564
    .end local v2           #totalFreed:J
    .local v1, totalFreed:J
    :catchall_0
    move-exception p0

    move-object p2, p0

    move-wide p0, v1

    .end local v1           #totalFreed:J
    .end local p1
    .local p0, totalFreed:J
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p2

    .restart local v2       #totalFreed:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 566
    sget-boolean p0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    .end local p0           #context:Landroid/content/Context;
    if-eqz p0, :cond_3

    .line 567
    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-lez p0, :cond_3

    .line 568
    .end local v0           #cursor:Landroid/database/Cursor;
    const-string p0, "DownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purged files, freed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string p2, " requested"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_3
    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-lez p0, :cond_4

    const/4 p0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 564
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1
    :catchall_1
    move-exception p0

    move-object p2, p0

    move-wide p0, v2

    .end local v2           #totalFreed:J
    .end local p1
    .local p0, totalFreed:J
    goto :goto_2

    .restart local v3       #totalFreed:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catchall_2
    move-exception p0

    move-object p2, p0

    move-wide p0, v3

    .end local v3           #totalFreed:J
    .end local p1
    .local p0, totalFreed:J
    goto :goto_2
.end method

.method public static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .parameter "isPublicApi"
    .parameter "subDirectory"
    .parameter "appointName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/Helpers;->checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 158
    const/16 p9, 0x4

    move/from16 v0, p6

    move/from16 v1, p9

    if-ne v0, v1, :cond_0

    .line 159
    .end local p9
    move-object/from16 v0, p11

    move-object/from16 v1, p2

    move-wide/from16 v2, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/Helpers;->getPathForFileUri(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 161
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v4 .. v14}, Lcom/android/providers/downloads/Helpers;->chooseFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAvailableBytes(Ljava/io/File;)J
    .locals 7
    .parameter "root"

    .prologue
    .line 332
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 334
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x4

    sub-long v0, v3, v5

    .line 335
    .local v0, availableBlocks:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v0

    return-wide v3
.end method

.method private static getCacheDestination(Landroid/content/Context;J)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 314
    .local v0, base:Ljava/io/File;
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v1

    .line 315
    .local v1, bytesAvailable:J
    :goto_0
    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 317
    sub-long v3, p1, v1

    invoke-static {p0, v3, v4}, Lcom/android/providers/downloads/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    new-instance v3, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const/16 v4, 0x1f2

    const-string v5, "not enough free space in internal download storage, unable to free any more"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v3

    .line 323
    :cond_0
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v1

    goto :goto_0

    .line 325
    :cond_1
    return-object v0
.end method

.method public static getDestinationFilePath(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, path:Ljava/lang/String;
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 952
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 958
    :cond_0
    :goto_0
    return-object v0

    .line 955
    :cond_1
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v1, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getExternalDestination(JLjava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "contentLength"
    .parameter "subDirectory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/android/providers/downloads/Helpers;->isExternalMediaMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    new-instance v2, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const/16 v3, 0x1f3

    const-string v4, "external media not mounted"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 278
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 279
    .local v1, root:Ljava/io/File;
    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-gez v2, :cond_1

    .line 281
    const-string v2, "DownloadManager"

    const-string v3, "download aborted - not enough free space"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v2, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const/16 v3, 0x1f2

    const-string v4, "insufficient space on external media"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 286
    :cond_1
    const/4 v0, 0x0

    .line 287
    .local v0, base:Ljava/io/File;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .restart local v0       #base:Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_3

    .line 295
    new-instance v2, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const/16 v3, 0x1ec

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to create external downloads directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 290
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #base:Ljava/io/File;
    goto :goto_0

    .line 298
    :cond_3
    return-object v0
.end method

.method public static getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "path"

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 203
    .local v0, cache:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 212
    :goto_0
    return-object v3

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 207
    .local v1, external:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 208
    goto :goto_0

    .line 210
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 211
    .local v2, internal:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 212
    goto :goto_0

    .line 214
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot determine filesystem root for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getIsDownloadOnlyOnWifiFromSetting(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    const-string v0, "download_only_on_wifi"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getMaxDownloadsFromSetting(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "cr"

    .prologue
    .line 91
    const-string v0, "max_downloads"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxDownloadsPerDomainFromSetting(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "cr"

    .prologue
    .line 110
    const-string v0, "max_downloads_per_domain"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getPathForFileUri(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .parameter "appointName"
    .parameter "hint"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f2

    const-string v5, "insufficient space on external storage"

    .line 168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, destPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/downloads/Helpers;->isExternalMediaMounted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const/16 v3, 0x1f3

    const-string v4, "external or internal media not mounted"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 176
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    :cond_2
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File already exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v2, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const/16 v3, 0x1e8

    const-string v4, "requested destination file already exists"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 181
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/downloads/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_4

    .line 182
    new-instance v2, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const-string v3, "insufficient space on external storage"

    invoke-direct {v2, v4, v5}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 186
    :cond_4
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/downloads/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_5

    .line 187
    new-instance v2, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;

    const-string v3, "insufficient space on external storage"

    invoke-direct {v2, v4, v5}, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 191
    :cond_5
    move-object v1, p0

    .line 192
    .local v1, path:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 193
    move-object v1, v0

    .line 195
    :cond_6
    return-object v1
.end method

.method public static isExternalMediaMounted()Z
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "DownloadManager"

    const-string v1, "no external storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFilenameValid(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 641
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 642
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "DownloadManager"

    .line 614
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 616
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 617
    const-string v3, "DownloadManager"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_1

    .line 632
    const-string v3, "DownloadManager"

    const-string v3, "network is not available"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 619
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 620
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 621
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 622
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 623
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_3

    .line 624
    const-string v3, "DownloadManager"

    const-string v3, "network is available"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 621
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNetworkAvailable(Lcom/android/providers/downloads/SystemFacade;)Z
    .locals 1
    .parameter "system"

    .prologue
    .line 579
    invoke-interface {p0}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const-string v5, "DownloadManager"

    .line 586
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 587
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 588
    const-string v3, "DownloadManager"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_1

    .line 605
    const-string v3, "DownloadManager"

    const-string v3, "wifi is not available"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 590
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 591
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 592
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 593
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_4

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 596
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_3

    .line 597
    const-string v3, "DownloadManager"

    const-string v3, "wifi is available"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v6

    .line 599
    goto :goto_0

    .line 592
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static locateDestinationDirectory(Landroid/content/Context;Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "context"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .parameter "subDirectory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/android/providers/downloads/Helpers;->getCacheDestination(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p3, p4, p5}, Lcom/android/providers/downloads/Helpers;->getExternalDestination(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contentDisposition"

    .prologue
    .line 76
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 77
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v1

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .parameter "lexer"

    .prologue
    .line 676
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 678
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 687
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 692
    return-void

    .line 685
    :cond_1
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V

    goto :goto_1

    .line 690
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0
.end method

.method private static parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .parameter "lexer"

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 704
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 705
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 706
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 720
    :goto_0
    return-void

    .line 714
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 715
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 716
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0

    .line 724
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"

    .prologue
    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, START_CTRLCODE:C
    const/16 v0, 0x1f

    .line 969
    .local v0, END_CTRLCODE:C
    const/16 v0, 0x22

    .line 970
    .local v0, QUOTEDBL:C
    const/16 v0, 0x2a

    .line 971
    .local v0, ASTERISK:C
    const/16 v0, 0x2f

    .line 972
    .local v0, SLASH:C
    const/16 v0, 0x3a

    .line 973
    .local v0, COLON:C
    const/16 v0, 0x3c

    .line 974
    .local v0, LESS:C
    const/16 v0, 0x3e

    .line 975
    .local v0, GREATER:C
    const/16 v0, 0x3f

    .line 976
    .local v0, QUESTION:C
    const/16 v0, 0x5c

    .line 977
    .local v0, BACKSLASH:C
    const/16 v0, 0x7c

    .line 978
    .local v0, BAR:C
    const/16 v0, 0x7f

    .line 979
    .local v0, DEL:C
    const/16 v0, 0x5f

    .line 981
    .local v0, UNDERSCORE:C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 983
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 984
    .local v1, isRepetition:Z
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v1

    .end local v1           #isRepetition:Z
    .local v2, isRepetition:Z
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 985
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 986
    .local v0, ch:C
    if-ltz v0, :cond_0

    const/16 v4, 0x1f

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x22

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7f

    if-ne v0, v4, :cond_3

    .line 998
    :cond_1
    if-nez v2, :cond_2

    .line 999
    const/16 v0, 0x5f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1000
    .end local v0           #ch:C
    const/4 v0, 0x1

    .end local v2           #isRepetition:Z
    .local v0, isRepetition:Z
    move v2, v0

    .line 984
    .end local v0           #isRepetition:Z
    .restart local v2       #isRepetition:Z
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 1003
    .local v0, ch:C
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1004
    const/4 v0, 0x0

    .end local v2           #isRepetition:Z
    .local v0, isRepetition:Z
    move v2, v0

    .end local v0           #isRepetition:Z
    .restart local v2       #isRepetition:Z
    goto :goto_1

    .line 1007
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static shouldBeScanned(Ljava/lang/String;)Z
    .locals 5
    .parameter "fileUri"

    .prologue
    const/4 v4, 0x0

    .line 927
    if-nez p0, :cond_0

    move v3, v4

    .line 943
    :goto_0
    return v3

    .line 930
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 931
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, scheme:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    .line 933
    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_3

    move v3, v4

    .line 937
    goto :goto_0

    .line 939
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    .line 941
    goto :goto_0

    .line 943
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static validateSelection(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, allowedColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "DownloadManager"

    .line 652
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    :cond_0
    return-void

    .line 655
    :cond_1
    new-instance v1, Lcom/android/providers/downloads/Helpers$Lexer;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/downloads/Helpers$Lexer;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 656
    .local v1, lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 657
    invoke-virtual {v1}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 658
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .end local v1           #lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 661
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_2

    .line 662
    const-string v2, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid selection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] triggered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_0
    throw v0

    .line 664
    :cond_2
    const-string v2, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid selection triggered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
