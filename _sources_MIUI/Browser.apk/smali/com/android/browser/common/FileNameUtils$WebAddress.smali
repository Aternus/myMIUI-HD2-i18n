.class public Lcom/android/browser/common/FileNameUtils$WebAddress;
.super Ljava/lang/Object;
.source "FileNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/common/FileNameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebAddress"
.end annotation


# static fields
.field static final MATCH_GROUP_AUTHORITY:I = 0x2

.field static final MATCH_GROUP_HOST:I = 0x3

.field static final MATCH_GROUP_PATH:I = 0x5

.field static final MATCH_GROUP_PORT:I = 0x4

.field static final MATCH_GROUP_SCHEME:I = 0x1

.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mAuthInfo:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mPort:I

.field public mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "(?:(http|HTTP|https|HTTPS|file|FILE)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([-A-Za-z0-9%]+(?:\\.[-A-Za-z0-9%]+)*)?(?:\\:([0-9]+))?(\\/?.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/common/FileNameUtils$WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x2f

    const/4 v9, -0x1

    const-string v12, "/"

    const-string v10, ""

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 187
    :cond_0
    const/16 v7, 0x3a

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 188
    .local v1, index:I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 189
    .local v2, index2:I
    const/16 v7, 0x3f

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 199
    .local v3, index3:I
    if-eq v1, v9, :cond_4

    if-ge v2, v1, :cond_1

    if-ne v2, v9, :cond_4

    :cond_1
    if-ge v3, v1, :cond_2

    if-ne v3, v9, :cond_4

    .line 202
    :cond_2
    const/4 v4, 0x1

    .line 207
    .local v4, isAbsoluteUri:Z
    :goto_0
    if-nez v4, :cond_6

    .line 208
    iput-object v11, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 209
    iput-object v11, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    .line 210
    iput v9, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    .line 211
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_5

    .line 212
    iput-object p1, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    .line 215
    :goto_1
    iput-object v11, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 275
    :cond_3
    :goto_2
    return-void

    .line 204
    .end local v4           #isAbsoluteUri:Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #isAbsoluteUri:Z
    goto :goto_0

    .line 214
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 217
    :cond_6
    const-string v7, ""

    iput-object v10, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 218
    const-string v7, ""

    iput-object v10, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    .line 219
    iput v9, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    .line 220
    const-string v7, "/"

    iput-object v12, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    .line 221
    const-string v7, ""

    iput-object v10, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 223
    sget-object v7, Lcom/android/browser/common/FileNameUtils$WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 225
    .local v5, m:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 226
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, t:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 228
    iput-object v6, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 229
    :cond_7
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    if-eqz v6, :cond_8

    .line 231
    iput-object v6, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 232
    :cond_8
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 233
    if-eqz v6, :cond_9

    .line 234
    iput-object v6, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    .line 235
    :cond_9
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_a

    .line 238
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_a
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 244
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 249
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_d

    .line 250
    iput-object v6, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    .line 265
    :cond_b
    :goto_3
    iget v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    const/16 v8, 0x1bb

    if-ne v7, v8, :cond_f

    iget-object v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 266
    const-string v7, "https"

    iput-object v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 273
    :cond_c
    :goto_4
    iget-object v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "http"

    iput-object v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    goto/16 :goto_2

    .line 239
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 240
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/apache/http/ParseException;

    const-string v8, "Bad port"

    invoke-direct {v7, v8}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    goto :goto_3

    .line 258
    .end local v6           #t:Ljava/lang/String;
    :cond_e
    new-instance v7, Lorg/apache/http/ParseException;

    const-string v8, "Bad address"

    invoke-direct {v7, v8}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 267
    .restart local v6       #t:Ljava/lang/String;
    :cond_f
    iget v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    if-ne v7, v9, :cond_c

    .line 268
    iget-object v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 269
    const/16 v7, 0x1bb

    iput v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    goto :goto_4

    .line 271
    :cond_10
    const/16 v7, 0x50

    iput v7, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    goto :goto_4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    const-string v1, ""

    .line 279
    .local v1, port:Ljava/lang/String;
    iget v2, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    const/16 v3, 0x1bb

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    :cond_2
    const-string v0, ""

    .line 284
    .local v0, authInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/common/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
