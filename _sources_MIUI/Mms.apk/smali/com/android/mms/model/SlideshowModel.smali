.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 78
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 80
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 3
    .parameter "layouts"
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 88
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 89
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 92
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 93
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 94
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 95
    invoke-virtual {v1, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 97
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 21
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v18

    .line 112
    .local v18, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v10

    .line 113
    .local v10, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    .line 114
    .local v4, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v8

    .line 115
    .local v8, w:I
    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v9

    .line 116
    .local v9, h:I
    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    .line 117
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v8

    .line 118
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v9

    .line 119
    invoke-interface {v4, v8}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 120
    invoke-interface {v4, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 122
    :cond_1
    new-instance v4, Lcom/android/mms/model/RegionModel;

    .end local v4           #srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 126
    .local v4, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v7, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 128
    .local v6, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 130
    .local v8, regionsNum:I
    const/4 v5, 0x0

    .end local v9           #h:I
    .end local v10           #sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 131
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 132
    .local v9, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v10, Lcom/android/mms/model/RegionModel;

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v13

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v14

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v15

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v16

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v10 .. v17}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 135
    .local v10, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    .end local v9           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    .end local v10           #r:Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v12, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v12, v4, v7}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 140
    .local v12, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v4

    .line 141
    .local v4, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 142
    .local v15, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 143
    .local v16, slidesNum:I
    new-instance v13, Ljava/util/ArrayList;

    move-object v0, v13

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v13, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v4, 0x0

    .end local v5           #i:I
    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .end local v6           #nlRegions:Lorg/w3c/dom/NodeList;
    .end local v7           #regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .end local v8           #regionsNum:I
    .restart local v5       #i:I
    :goto_1
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 148
    invoke-interface {v15, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/smil/SMILParElement;

    .line 151
    .local v14, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface {v14}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 152
    .local v8, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 153
    .local v9, mediaNum:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v10, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v4, 0x0

    .local v4, j:I
    move v6, v4

    .end local v4           #j:I
    .local v6, j:I
    :goto_2
    if-ge v6, v9, :cond_9

    .line 156
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 158
    .local v17, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;

    move-result-object v7

    .line 165
    .local v7, media:Lcom/android/mms/model/MediaModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 166
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v11

    .line 167
    .local v11, mediadur:I
    invoke-interface {v14}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    .line 168
    .local v4, dur:F
    const/16 v19, 0x0

    cmpl-float v19, v4, v19

    if-nez v19, :cond_3

    .line 169
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v11

    .end local v11           #mediadur:I
    mul-int/lit16 v11, v11, 0x3e8

    .line 170
    .restart local v11       #mediadur:I
    invoke-virtual {v7, v11}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 173
    :cond_3
    move v0, v11

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v19, v4

    if-eqz v19, :cond_5

    .line 174
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v19

    .line 176
    .local v19, tag:Ljava/lang/String;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "video"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object v0, v7

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .end local v19           #tag:Ljava/lang/String;
    if-eqz v19, :cond_6

    .line 185
    :cond_4
    int-to-float v4, v11

    const/high16 v11, 0x447a

    div-float/2addr v4, v11

    const/high16 v11, 0x3f80

    add-float/2addr v4, v11

    invoke-interface {v14, v4}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 205
    .end local v4           #dur:F
    .end local v11           #mediadur:I
    :cond_5
    :goto_3
    check-cast v17, Lorg/w3c/dom/events/EventTarget;

    .end local v17           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 207
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    :goto_4
    add-int/lit8 v4, v6, 0x1

    .end local v6           #j:I
    .local v4, j:I
    move v6, v4

    .end local v4           #j:I
    .restart local v6       #j:I
    goto :goto_2

    .line 193
    .local v4, dur:F
    .restart local v7       #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mediadur:I
    .restart local v17       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_6
    move v0, v11

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v19, v4

    if-gez v19, :cond_7

    .line 194
    float-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v7, v4}, Lcom/android/mms/model/MediaModel;->setDuration(I)V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 208
    .end local v4           #dur:F
    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    .end local v11           #mediadur:I
    .end local v17           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v4

    .line 209
    .local v4, e:Landroid/drm/mobile1/DrmException;
    const-string v7, "Mms/slideshow"

    invoke-virtual {v4}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 196
    .local v4, dur:F
    .restart local v7       #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mediadur:I
    .restart local v17       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    move v0, v4

    float-to-int v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 197
    float-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    :try_start_1
    invoke-virtual {v7, v4}, Lcom/android/mms/model/MediaModel;->setDuration(I)V
    :try_end_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 210
    .end local v4           #dur:F
    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    .end local v11           #mediadur:I
    .end local v17           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1
    move-exception v4

    .line 211
    .local v4, e:Ljava/io/IOException;
    const-string v7, "Mms/slideshow"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 199
    .local v4, dur:F
    .restart local v7       #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mediadur:I
    .restart local v17       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    int-to-float v4, v11

    const/high16 v11, 0x447a

    div-float/2addr v4, v11

    :try_start_2
    invoke-interface {v14, v4}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V
    :try_end_2
    .catch Landroid/drm/mobile1/DrmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 212
    .end local v4           #dur:F
    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    .end local v11           #mediadur:I
    .end local v17           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_2
    move-exception v4

    .line 213
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "Mms/slideshow"

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 217
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_9
    new-instance v4, Lcom/android/mms/model/SlideModel;

    invoke-interface {v14}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    .end local v6           #j:I
    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v6, v10}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 218
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface {v14}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 219
    check-cast v14, Lorg/w3c/dom/events/EventTarget;

    .end local v14           #par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-static {v14, v4}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 220
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto/16 :goto_1

    .line 223
    .end local v8           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v9           #mediaNum:I
    .end local v10           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_a
    new-instance v11, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v14, v18

    move-object/from16 v15, p1

    move-object/from16 v16, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 224
    .end local v15           #slideNodes:Lorg/w3c/dom/NodeList;
    .end local v16           #slidesNum:I
    .local v11, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v11, v11}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 225
    return-object v11
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 341
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 343
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 344
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 346
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 348
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 22
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 241
    new-instance v12, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 243
    .local v12, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v4, 0x0

    .line 244
    .local v4, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/model/SlideModel;

    .line 245
    .local v13, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/MediaModel;

    .line 246
    .local v9, media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_2

    .line 247
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z

    move-result v19

    if-nez v19, :cond_2

    .line 248
    const/4 v4, 0x1

    .line 249
    goto :goto_0

    .line 253
    :cond_2
    new-instance v11, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 255
    .local v11, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 256
    move-object v0, v9

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v17, v0

    .line 258
    .local v17, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 262
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v19

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 266
    .end local v17           #text:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 268
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v15

    .line 270
    .local v15, src:Ljava/lang/String;
    const-string v19, "cid:"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    .line 271
    .local v16, startWithContentId:Z
    if-eqz v16, :cond_4

    .line 272
    const-string v19, "cid:"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, location:Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 281
    if-eqz v16, :cond_5

    .line 283
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 292
    :goto_2
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 293
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v18

    .line 294
    .local v18, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 295
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 304
    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    .end local v18           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :goto_3
    invoke-virtual {v12, v11}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 274
    .end local v8           #location:Ljava/lang/String;
    .restart local v9       #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    move-object v8, v15

    .restart local v8       #location:Ljava/lang/String;
    goto :goto_1

    .line 286
    :cond_5
    const-string v19, "."

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 287
    .local v7, index:I
    const/16 v19, -0x1

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object v3, v8

    .line 289
    .local v3, contentId:Ljava/lang/String;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 287
    .end local v3           #contentId:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    move-object v0, v8

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v3, v19

    goto :goto_4

    .line 296
    .end local v7           #index:I
    :cond_7
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 297
    check-cast v9, Lcom/android/mms/model/TextModel;

    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 298
    .restart local v9       #media:Lcom/android/mms/model/MediaModel;
    :cond_8
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v19

    if-nez v19, :cond_9

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v19

    if-nez v19, :cond_9

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 299
    :cond_9
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 301
    :cond_a
    const-string v19, "Mms/slideshow"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unsupport media: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 308
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #location:Ljava/lang/String;
    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    .end local v11           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v13           #slide:Lcom/android/mms/model/SlideModel;
    .end local v15           #src:Ljava/lang/String;
    .end local v16           #startWithContentId:Z
    :cond_b
    if-eqz v4, :cond_c

    if-eqz p3, :cond_c

    if-eqz p1, :cond_c

    .line 309
    const v19, 0x7f09004d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 312
    invoke-static {v12}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 316
    :cond_c
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    .local v10, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 318
    new-instance v14, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 319
    .local v14, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v19, "smil"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 320
    const-string v19, "smil.xml"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 321
    const-string v19, "application/smil"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 322
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 323
    const/16 v19, 0x0

    move-object v0, v12

    move/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 325
    return-object v12
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "document"

    .prologue
    .line 237
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 461
    if-eqz p2, :cond_1

    .line 462
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 463
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 465
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 466
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 467
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 468
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 469
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 471
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 473
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #increaseSize:I
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    .line 380
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 381
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 383
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 385
    invoke-virtual {p1, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 386
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 387
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 389
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v3, v4

    .line 392
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 477
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMessageSize(I)V
    .locals 3
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 595
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 596
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 400
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 401
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 402
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 403
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 404
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 407
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 408
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 409
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 411
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 367
    if-lez p1, :cond_0

    .line 368
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 370
    :cond_0
    return-void
.end method

.method public finalResize(Landroid/net/Uri;)V
    .locals 14
    .parameter "messageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 660
    const/4 v9, 0x0

    .line 661
    .local v9, resizableCnt:I
    const/4 v1, 0x0

    .line 662
    .local v1, fixedSizeTotal:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 663
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 664
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 665
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v12

    add-int/2addr v1, v12

    goto :goto_0

    .line 671
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-lez v9, :cond_a

    .line 672
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v12

    sub-int/2addr v12, v1

    const/16 v13, 0x400

    sub-int v8, v12, v13

    .line 673
    .local v8, remainingSize:I
    if-gtz v8, :cond_3

    .line 674
    new-instance v12, Lcom/android/mms/ExceedMessageSizeException;

    const-string v13, "No room for pictures"

    invoke-direct {v12, v13}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 676
    :cond_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 677
    .local v5, messageId:J
    div-int v0, v8, v9

    .line 679
    .local v0, bytesPerMediaItem:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 680
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 681
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 682
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/mms/model/MediaModel;->resizeMedia(IJ)V

    goto :goto_1

    .line 687
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    const/4 v11, 0x0

    .line 688
    .local v11, totalSize:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 689
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 690
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_2

    .line 696
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v12

    if-le v11, v12, :cond_9

    .line 697
    new-instance v12, Lcom/android/mms/ExceedMessageSizeException;

    const-string v13, "After compressing pictures, message too big"

    invoke-direct {v12, v13}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 699
    :cond_9
    invoke-virtual {p0, v11}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 701
    const/4 v12, 0x1

    invoke-virtual {p0, p0, v12}, Lcom/android/mms/model/SlideshowModel;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    .line 702
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    .line 706
    .local v7, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    invoke-virtual {v12, p1, v7}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 708
    .end local v0           #bytesPerMediaItem:I
    .end local v5           #messageId:J
    .end local v7           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v8           #remainingSize:I
    .end local v11           #totalSize:I
    :cond_a
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 1
    .parameter "location"

    .prologue
    .line 481
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/SlideModel;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 361
    if-lez p1, :cond_0

    .line 362
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 364
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-eq v1, v4, :cond_0

    move v1, v3

    .line 619
    :goto_0
    return v1

    .line 610
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 612
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v1, :cond_1

    move v1, v3

    .line 613
    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 617
    goto :goto_0

    :cond_2
    move v1, v4

    .line 619
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    .line 329
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 576
    if-eqz p2, :cond_0

    .line 577
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 578
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 580
    :cond_0
    return-void
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 641
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 642
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 646
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 549
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 551
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 552
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 554
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 502
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 504
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 505
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 507
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 430
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v1, v0

    .line 432
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 433
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 434
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 437
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .parameter "location"
    .parameter "object"

    .prologue
    .line 511
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 512
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 513
    const/4 v3, 0x0

    .line 514
    .local v3, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 515
    .local v0, addSize:I
    if-eqz v4, :cond_0

    .line 516
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 518
    :cond_0
    if-le v0, v3, :cond_3

    .line 519
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 520
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 526
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 527
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2

    .line 528
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 531
    :cond_2
    if-eqz p2, :cond_4

    .line 532
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 533
    iget-object v5, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 534
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 522
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .restart local v0       #addSize:I
    .restart local v3       #removeSize:I
    :cond_3
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 538
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 539
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 353
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 354
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 6
    .parameter "pb"

    .prologue
    .line 583
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 584
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 585
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 586
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v3, :cond_1

    .line 587
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 591
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 230
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 231
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 570
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 571
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 573
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 561
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 562
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 564
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
