.class public Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;
.source "TimeId3Frame.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fieldId"
    .parameter "content"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .parameter "fieldId"
    .parameter "calendar"

    .prologue
    .line 89
    invoke-static {p2}, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;->createString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BB)V
    .locals 0
    .parameter "fieldId"
    .parameter "rawContent"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    .line 78
    return-void
.end method

.method private static createString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "calendar"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, result:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected populate([B)V
    .locals 3
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->populate([B)V

    .line 111
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    .line 112
    return-void
.end method
