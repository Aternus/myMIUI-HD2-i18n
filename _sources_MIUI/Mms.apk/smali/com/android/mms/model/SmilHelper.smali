.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "target"
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 407
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 408
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 409
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 410
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 411
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .parameter "document"

    .prologue
    .line 147
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 149
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x4100

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 150
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 151
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "target"
    .parameter "slide"

    .prologue
    const/4 v1, 0x0

    .line 417
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 418
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 419
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .parameter "tag"
    .parameter "document"
    .parameter "src"

    .prologue
    .line 156
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 158
    .local v0, mediaElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 159
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 12
    .parameter "slideshow"

    .prologue
    .line 262
    new-instance v2, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v2}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 265
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v1, "smil"

    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 266
    .local v6, smilElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v2, v6}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 269
    const-string v1, "head"

    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 270
    .local v1, headElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 273
    const-string v3, "layout"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 275
    .local v5, layoutElement:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v1, v5}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 278
    const-string v1, "root-layout"

    .end local v1           #headElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 280
    .local v4, rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    .line 281
    .local v3, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 282
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 283
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, bgColor:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 285
    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-interface {v5, v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 290
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v1

    .line 291
    .local v1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v9, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3           #layouts:Lcom/android/mms/model/LayoutModel;
    .end local v4           #rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/RegionModel;

    .line 293
    .local v3, r:Lcom/android/mms/model/RegionModel;
    const-string v4, "region"

    invoke-interface {v2, v4}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 294
    .local v4, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 296
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 297
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 298
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 299
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v3

    .end local v3           #r:Lcom/android/mms/model/RegionModel;
    invoke-interface {v4, v3}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v4           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v1, "body"

    .end local v1           #i$:Ljava/util/Iterator;
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 305
    .local v1, bodyElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 307
    const/4 v4, 0x0

    .line 308
    .local v4, txtRegionPresentInLayout:Z
    const/4 v3, 0x0

    .line 309
    .local v3, imgRegionPresentInLayout:Z
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move p0, v3

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #imgRegionPresentInLayout:Z
    .end local v6           #smilElement:Lorg/w3c/dom/smil/SMILElement;
    .local p0, imgRegionPresentInLayout:Z
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 311
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v7

    .line 312
    .local v7, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x447a

    div-float/2addr v6, v8

    invoke-interface {v7, v6}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 314
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object v8, v0

    invoke-static {v8, v3}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 317
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v10, v4

    .end local v4           #txtRegionPresentInLayout:Z
    .local v10, txtRegionPresentInLayout:Z
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 318
    .local v6, media:Lcom/android/mms/model/MediaModel;
    const/4 v4, 0x0

    .line 319
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, src:Ljava/lang/String;
    instance-of v8, v6, Lcom/android/mms/model/TextModel;

    if-eqz v8, :cond_5

    .line 321
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object v8, v0

    .line 322
    .local v8, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    .end local v8           #text:Lcom/android/mms/model/TextModel;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 328
    const-string v8, "text"

    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 329
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v8, v0

    const-string v11, "Text"

    invoke-static {v8, v9, v5, v11, v10}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v8

    .end local v10           #txtRegionPresentInLayout:Z
    .local v8, txtRegionPresentInLayout:Z
    move v10, v8

    .end local v8           #txtRegionPresentInLayout:Z
    .restart local v10       #txtRegionPresentInLayout:Z
    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v8, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .line 356
    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    :goto_3
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result p0

    .line 357
    .local p0, begin:I
    if-eqz p0, :cond_3

    .line 358
    const-string v11, "begin"

    div-int/lit16 p0, p0, 0x3e8

    .end local p0           #begin:I
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v8, v11, p0}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_3
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result p0

    .line 361
    .local p0, duration:I
    if-eqz p0, :cond_4

    .line 362
    int-to-float p0, p0

    const/high16 v11, 0x447a

    div-float/2addr p0, v11

    invoke-interface {v8, p0}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 364
    .end local p0           #duration:I
    :cond_4
    invoke-interface {v7, v8}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 366
    check-cast v8, Lorg/w3c/dom/events/EventTarget;

    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {v8, v6}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    move p0, v4

    .line 367
    .end local v4           #imgRegionPresentInLayout:Z
    .local p0, imgRegionPresentInLayout:Z
    goto :goto_2

    .line 334
    .local v4, src:Ljava/lang/String;
    :cond_5
    instance-of v8, v6, Lcom/android/mms/model/ImageModel;

    if-eqz v8, :cond_6

    .line 335
    const-string v8, "img"

    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 336
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v8, v0

    const-string v11, "Image"

    invoke-static {v8, v9, v5, v11, p0}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result p0

    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v8       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_3

    .line 341
    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_6
    instance-of v8, v6, Lcom/android/mms/model/VideoModel;

    if-eqz v8, :cond_7

    .line 342
    const-string v8, "video"

    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 343
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v8, v0

    const-string v11, "Image"

    invoke-static {v8, v9, v5, v11, p0}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result p0

    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v8       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_3

    .line 348
    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_7
    instance-of v8, v6, Lcom/android/mms/model/AudioModel;

    if-eqz v8, :cond_8

    .line 349
    const-string v8, "audio"

    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v8       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_3

    .line 351
    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_8
    const-string v4, "Mms/smil"

    .end local v4           #src:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupport media: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    move v4, v10

    .line 368
    .end local v10           #txtRegionPresentInLayout:Z
    .local v4, txtRegionPresentInLayout:Z
    goto/16 :goto_1

    .line 376
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_a
    return-object v2
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 11
    .parameter "pb"

    .prologue
    .line 175
    new-instance v1, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 179
    .local v1, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v0, "smil"

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILElement;

    .line 180
    .local v3, smil:Lorg/w3c/dom/smil/SMILElement;
    const-string v0, "xmlns"

    const-string v2, "http://www.w3.org/2001/SMIL20/Language"

    invoke-interface {v3, v0, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v1, v3}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 184
    const-string v0, "head"

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 185
    .local v0, head:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v3, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 187
    const-string v2, "layout"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 188
    .local v2, layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 191
    const-string v0, "body"

    .end local v0           #head:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 192
    .local v0, body:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v3, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 193
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v4

    .line 196
    .local v4, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 197
    .local v8, partsNum:I
    if-nez v8, :cond_0

    move-object v0, v4

    .end local v4           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object p0, v1

    .line 254
    .end local v1           #document:Lorg/w3c/dom/smil/SMILDocument;
    .end local v2           #layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    .end local v3           #smil:Lorg/w3c/dom/smil/SMILElement;
    .local p0, document:Lcom/android/mms/dom/smil/SmilDocumentImpl;
    :goto_0
    return-object p0

    .line 201
    .local v0, body:Lorg/w3c/dom/smil/SMILElement;
    .restart local v1       #document:Lorg/w3c/dom/smil/SMILDocument;
    .restart local v2       #layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    .restart local v3       #smil:Lorg/w3c/dom/smil/SMILElement;
    .restart local v4       #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    const/4 v2, 0x0

    .line 202
    .local v2, hasText:Z
    const/4 v0, 0x0

    .line 203
    .local v0, hasMedia:Z
    const/4 v3, 0x0

    .local v3, i:I
    move v5, v3

    .end local v3           #i:I
    .local v5, i:I
    move-object v3, v4

    .end local v4           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    :goto_1
    if-ge v5, v8, :cond_8

    .line 205
    if-eqz v3, :cond_1

    if-eqz v0, :cond_a

    if-eqz v2, :cond_9

    .line 206
    :cond_1
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v3

    .line 207
    const/4 v2, 0x0

    .line 208
    const/4 v0, 0x0

    move v4, v2

    .end local v2           #hasText:Z
    .local v4, hasText:Z
    move-object v6, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v6, par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v0

    .line 211
    .end local v0           #hasMedia:Z
    .local v3, hasMedia:Z
    :goto_2
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 212
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 213
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    :try_start_0
    new-instance v2, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v10

    invoke-direct {v2, v0, v9, v10}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 218
    .local v2, dw:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 226
    .end local v2           #dw:Lcom/android/mms/drm/DrmWrapper;
    :cond_2
    :goto_3
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    :cond_3
    const-string v0, "text"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 231
    .local v0, textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 232
    const/4 v0, 0x1

    .end local v4           #hasText:Z
    .local v0, hasText:Z
    move v2, v0

    .end local v0           #hasText:Z
    .local v2, hasText:Z
    move v0, v3

    .line 203
    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    :goto_4
    add-int/lit8 v3, v5, 0x1

    .end local v5           #i:I
    .local v3, i:I
    move v5, v3

    .end local v3           #i:I
    .restart local v5       #i:I
    move-object v3, v6

    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    goto :goto_1

    .line 219
    .end local v2           #hasText:Z
    .local v0, contentType:Ljava/lang/String;
    .local v3, hasMedia:Z
    .restart local v4       #hasText:Z
    .restart local v6       #par:Lorg/w3c/dom/smil/SMILParElement;
    :catch_0
    move-exception v2

    .line 220
    .local v2, e:Landroid/drm/mobile1/DrmException;
    const-string v9, "Mms/smil"

    invoke-virtual {v2}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 221
    .end local v2           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v2

    .line 222
    .local v2, e:Ljava/io/IOException;
    const-string v9, "Mms/smil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 233
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    const-string v0, "img"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 236
    .local v0, imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 237
    const/4 v0, 0x1

    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    move v2, v4

    .line 238
    .end local v4           #hasText:Z
    .local v2, hasText:Z
    goto :goto_4

    .end local v2           #hasText:Z
    .local v0, contentType:Ljava/lang/String;
    .restart local v3       #hasMedia:Z
    .restart local v4       #hasText:Z
    :cond_5
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 239
    const-string v0, "video"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 241
    .local v0, videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 242
    const/4 v0, 0x1

    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    move v2, v4

    .line 243
    .end local v4           #hasText:Z
    .restart local v2       #hasText:Z
    goto :goto_4

    .end local v2           #hasText:Z
    .local v0, contentType:Ljava/lang/String;
    .restart local v3       #hasMedia:Z
    .restart local v4       #hasText:Z
    :cond_6
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #contentType:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 244
    const-string v0, "audio"

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 246
    .local v0, audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 247
    const/4 v0, 0x1

    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    move v2, v4

    .line 248
    .end local v4           #hasText:Z
    .restart local v2       #hasText:Z
    goto :goto_4

    .line 250
    .end local v0           #hasMedia:Z
    .end local v2           #hasText:Z
    .restart local v3       #hasMedia:Z
    .restart local v4       #hasText:Z
    :cond_7
    const-string v0, "Mms/smil"

    const-string v2, "unsupport media type"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .end local v3           #hasMedia:Z
    .restart local v0       #hasMedia:Z
    move v2, v4

    .end local v4           #hasText:Z
    .restart local v2       #hasText:Z
    goto :goto_4

    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_8
    move-object v0, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object p0, v1

    .line 254
    .local p0, document:Lcom/android/mms/dom/smil/SmilDocumentImpl;
    goto/16 :goto_0

    .local v0, hasMedia:Z
    .restart local v3       #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_9
    move v4, v2

    .end local v2           #hasText:Z
    .restart local v4       #hasText:Z
    move-object v6, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v6       #par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v0

    .end local v0           #hasMedia:Z
    .local v3, hasMedia:Z
    goto/16 :goto_2

    .end local v4           #hasText:Z
    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v0       #hasMedia:Z
    .restart local v2       #hasText:Z
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_a
    move v4, v2

    .end local v2           #hasText:Z
    .restart local v4       #hasText:Z
    move-object v6, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v6       #par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v0

    .end local v0           #hasMedia:Z
    .local v3, hasMedia:Z
    goto/16 :goto_2
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 163
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .parameter
    .parameter "rId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 382
    .local v1, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 386
    .end local v1           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "body"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 102
    .local v2, partNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 104
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 110
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v3

    .line 102
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "model"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .parameter "pb"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 76
    .local v1, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 79
    .local v0, document:Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_0

    .line 80
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 83
    :cond_0
    if-nez v0, :cond_1

    .line 85
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 88
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 7
    .parameter "smilPart"

    .prologue
    const-string v6, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 126
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 132
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 133
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 134
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 143
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #document:Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 136
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 137
    .local v3, e:Ljava/io/IOException;
    const-string v4, "Mms/smil"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 138
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 139
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v4, "Mms/smil"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 140
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 141
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/smil"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "srme"
    .parameter
    .parameter "smilLayout"
    .parameter "regionId"
    .parameter "regionPresentInLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 395
    .local v0, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 397
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 398
    const/4 v1, 0x1

    .line 400
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "in"

    .prologue
    .line 115
    return-object p0
.end method
