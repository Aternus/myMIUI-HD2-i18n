.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 4
    .parameter "pb"
    .parameter "src"

    .prologue
    const-string v3, "cid:"

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_0

    .line 64
    invoke-static {p1}, Lcom/android/mms/model/MediaModelFactory;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    const-string v1, "cid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 79
    return-object v0

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No part found for the model."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 18
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "sme"
    .parameter "part"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    .line 132
    .local v5, bytes:[B
    if-nez v5, :cond_0

    .line 133
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Content-Type of the part may not be null."

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v7, contentType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 139
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    if-eqz v5, :cond_d

    .line 140
    new-instance v10, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    invoke-direct {v10, v7, v5, v6}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 142
    .local v10, wrapper:Lcom/android/mms/drm/DrmWrapper;
    const-string v5, "text"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 211
    .end local v10           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .end local p4
    .end local p5
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    const/16 p0, 0x0

    .line 212
    .local p0, begin:I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object p4

    .line 213
    .local p4, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result p2

    .end local p2
    if-lez p2, :cond_1

    .line 215
    const/16 p0, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    .end local p0           #begin:I
    move-result-object p0

    .line 216
    .local p0, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 p0, v0

    .line 218
    .local p0, begin:I
    :cond_1
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 221
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result p2

    const/high16 p5, 0x447a

    mul-float p2, p2, p5

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 p2, v0

    .line 222
    .local p2, duration:I
    if-gtz p2, :cond_19

    .line 223
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object p5

    .line 224
    .end local p4           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p5, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz p5, :cond_18

    invoke-interface/range {p5 .. p5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result p4

    if-lez p4, :cond_18

    .line 226
    const/16 p4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object p4

    .line 227
    .local p4, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v6

    if-eqz v6, :cond_18

    .line 228
    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 p2, v0

    sub-int p0, p2, p0

    .line 230
    .end local p2           #duration:I
    .local p0, duration:I
    if-nez p0, :cond_3

    move-object v0, v5

    instance-of v0, v0, Lcom/android/mms/model/AudioModel;

    move/from16 p2, v0

    if-nez p2, :cond_2

    move-object v0, v5

    instance-of v0, v0, Lcom/android/mms/model/VideoModel;

    move/from16 p2, v0

    if-eqz p2, :cond_3

    .line 232
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result p0

    .line 233
    const-string p2, "Mms:app"

    const/16 p4, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local p4           #t:Lorg/w3c/dom/smil/Time;
    move-result p2

    if-eqz p2, :cond_3

    .line 234
    const-string p2, "Mms:media"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct/range {p4 .. p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] compute new duration for "

    move-object/from16 v0, p4

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string p4, ", duration="

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 p1, p5

    .line 242
    .end local p5           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    :goto_1
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 244
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result p0

    .end local p0           #duration:I
    if-nez p0, :cond_17

    .line 251
    const/16 p0, 0x1

    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 256
    :goto_2
    return-object v5

    .line 145
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v10       #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .local p0, context:Landroid/content/Context;
    .local p1, tag:Ljava/lang/String;
    .local p2, src:Ljava/lang/String;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :cond_4
    const-string v5, "img"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 146
    new-instance v5, Lcom/android/mms/model/ImageModel;

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 148
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    const-string v5, "video"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    new-instance v5, Lcom/android/mms/model/VideoModel;

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 151
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    const-string v5, "audio"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 152
    new-instance v5, Lcom/android/mms/model/AudioModel;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 154
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    const-string v5, "ref"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 155
    invoke-virtual {v10}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, drmContentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 157
    new-instance v5, Lcom/android/mms/model/TextModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 159
    .local v5, drmContentType:Ljava/lang/String;
    :cond_8
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result p4

    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz p4, :cond_9

    .line 160
    new-instance v5, Lcom/android/mms/model/ImageModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 162
    .local v5, drmContentType:Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 163
    new-instance v5, Lcom/android/mms/model/VideoModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 165
    .local v5, drmContentType:Ljava/lang/String;
    :cond_a
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 166
    new-instance v5, Lcom/android/mms/model/AudioModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 169
    .local v5, drmContentType:Ljava/lang/String;
    :cond_b
    new-instance p0, Lcom/android/mms/UnsupportContentTypeException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #tag:Ljava/lang/String;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported Content-Type: "

    .end local p2           #src:Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    .end local v5           #drmContentType:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p4       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #src:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TAG: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #tag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    .end local v10           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p3
    :cond_d
    const-string v5, "text"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 177
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 179
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_e
    const-string v5, "img"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 180
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 182
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_f
    const-string v5, "video"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 183
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 185
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_10
    const-string v5, "audio"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 186
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object p4

    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 188
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local p4       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_11
    const-string v5, "ref"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 189
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 190
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 192
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_12
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 193
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 195
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_13
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 196
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 198
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_14
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result p5

    .end local p5           #regionModel:Lcom/android/mms/model/RegionModel;
    if-eqz p5, :cond_15

    .line 199
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object p4

    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 202
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local p4       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_15
    new-instance p0, Lcom/android/mms/UnsupportContentTypeException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #tag:Ljava/lang/String;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported Content-Type: "

    .end local p2           #src:Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p5       #regionModel:Lcom/android/mms/model/RegionModel;
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #src:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TAG: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #tag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local p5           #regionModel:Lcom/android/mms/model/RegionModel;
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    .restart local p3
    :cond_17
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result p0

    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    goto/16 :goto_2

    .local p0, begin:I
    .local p1, tag:Ljava/lang/String;
    .local p2, duration:I
    .local p5, tl:Lorg/w3c/dom/smil/TimeList;
    :cond_18
    move/from16 p0, p2

    .end local p2           #duration:I
    .local p0, duration:I
    move-object/from16 p1, p5

    .end local p5           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    goto/16 :goto_1

    .local p0, begin:I
    .local p1, tag:Ljava/lang/String;
    .restart local p2       #duration:I
    .local p4, tl:Lorg/w3c/dom/smil/TimeList;
    :cond_19
    move/from16 p0, p2

    .end local p2           #duration:I
    .local p0, duration:I
    move-object/from16 p1, p4

    .end local p4           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    goto/16 :goto_1
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;
    .locals 14
    .parameter "context"
    .parameter "sme"
    .parameter "layouts"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, tag:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, src:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 51
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    instance-of v2, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v2, :cond_0

    .line 52
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v5, v0

    move-object v2, p0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    .line 55
    :goto_0
    return-object v2

    :cond_0
    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, p1

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;
    .locals 8
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "srme"
    .parameter "layouts"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v7

    .line 97
    .local v7, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v7, :cond_0

    .line 98
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 99
    .local v5, region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 100
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 103
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v6, 0x0

    .line 105
    .local v6, rId:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v6, "Text"

    .line 111
    :goto_1
    invoke-virtual {p4, v6}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 112
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 113
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 108
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v6, "Image"

    goto :goto_1

    .line 117
    .end local v6           #rId:Ljava/lang/String;
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 86
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
