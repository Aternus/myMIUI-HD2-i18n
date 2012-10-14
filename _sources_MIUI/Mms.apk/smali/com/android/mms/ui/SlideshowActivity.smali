.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;,
        Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;,
        Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Landroid/widget/MediaController;

.field private mSlideView:Lcom/android/mms/ui/SlideView;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 557
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$500(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/mms/ui/SlideshowActivity;->isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z

    move-result v0

    return v0
.end method

.method private initMediaController()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    const v1, 0x7f0d0057

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;Z)V

    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/MediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 495
    return-void
.end method

.method private static final isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 7
    .parameter "smilDoc"

    .prologue
    .line 105
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object p0

    .line 106
    .local p0, head:Lorg/w3c/dom/smil/SMILElement;
    if-nez p0, :cond_0

    .line 108
    const/4 p0, 0x0

    .line 174
    .end local p0           #head:Lorg/w3c/dom/smil/SMILElement;
    :goto_0
    return p0

    .line 110
    .restart local p0       #head:Lorg/w3c/dom/smil/SMILElement;
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 111
    .local p0, children:Lorg/w3c/dom/NodeList;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 113
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 116
    .local p0, layout:Lorg/w3c/dom/Node;
    if-eqz p0, :cond_3

    const-string v0, "layout"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .line 120
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 121
    .local v2, layoutChildren:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_5

    .line 123
    const/4 p0, 0x0

    goto :goto_0

    .line 125
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 126
    .local v5, num:I
    if-gtz v5, :cond_6

    .line 128
    const/4 p0, 0x0

    goto :goto_0

    .line 130
    :cond_6
    const/4 p0, 0x0

    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_10

    .line 131
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 132
    .local p0, layoutChild:Lorg/w3c/dom/Node;
    if-nez p0, :cond_7

    .line 134
    const/4 p0, 0x0

    goto :goto_0

    .line 136
    :cond_7
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, name:Ljava/lang/String;
    const-string v3, "root-layout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    .end local v1           #name:Ljava/lang/String;
    .end local p0           #layoutChild:Lorg/w3c/dom/Node;
    :cond_8
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 139
    .restart local v1       #name:Ljava/lang/String;
    .local p0, layoutChild:Lorg/w3c/dom/Node;
    :cond_9
    const-string v3, "region"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #name:Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 140
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 141
    .local v3, map:Lorg/w3c/dom/NamedNodeMap;
    const/4 p0, 0x0

    .local p0, j:I
    move v1, p0

    .end local p0           #j:I
    .local v1, j:I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p0

    if-ge v1, p0, :cond_8

    .line 142
    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 143
    .local v4, node:Lorg/w3c/dom/Node;
    if-nez v4, :cond_a

    .line 144
    const/4 p0, 0x0

    goto :goto_0

    .line 146
    :cond_a
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    .line 148
    .local p0, attrName:Ljava/lang/String;
    const-string v6, "left"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "top"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "height"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "width"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "fit"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 141
    .end local v4           #node:Lorg/w3c/dom/Node;
    .end local p0           #attrName:Ljava/lang/String;
    :cond_b
    add-int/lit8 p0, v1, 0x1

    .end local v1           #j:I
    .local p0, j:I
    move v1, p0

    .end local p0           #j:I
    .restart local v1       #j:I
    goto :goto_2

    .line 152
    .restart local v4       #node:Lorg/w3c/dom/Node;
    .local p0, attrName:Ljava/lang/String;
    :cond_c
    const-string v6, "id"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #attrName:Ljava/lang/String;
    if-eqz p0, :cond_e

    .line 154
    instance-of p0, v4, Lcom/android/mms/dom/AttrImpl;

    if-eqz p0, :cond_d

    .line 155
    check-cast v4, Lcom/android/mms/dom/AttrImpl;

    .end local v4           #node:Lorg/w3c/dom/Node;
    invoke-virtual {v4}, Lcom/android/mms/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 159
    .local p0, value:Ljava/lang/String;
    const-string v4, "Text"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "Image"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #value:Ljava/lang/String;
    if-nez p0, :cond_b

    .line 163
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 157
    .restart local v4       #node:Lorg/w3c/dom/Node;
    :cond_d
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 166
    :cond_e
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 171
    .end local v1           #j:I
    .end local v3           #map:Lorg/w3c/dom/NamedNodeMap;
    .end local v4           #node:Lorg/w3c/dom/Node;
    .local p0, layoutChild:Lorg/w3c/dom/Node;
    :cond_f
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 174
    .end local p0           #layoutChild:Lorg/w3c/dom/Node;
    :cond_10
    const/4 p0, 0x1

    goto/16 :goto_0
.end method

.method private pauseAndHideController()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 692
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 554
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 611
    move-object v0, p1

    .line 612
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const v6, 0x7f0d0057

    const/high16 v5, 0x80

    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 393
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->loadFontSizeConfiguration(Landroid/content/Context;)V

    .line 394
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 396
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 398
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 400
    .local v3, msg:Landroid/net/Uri;
    invoke-static {}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    const v4, 0x7f030015

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 402
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 403
    .local v1, lv:Landroid/widget/ListView;
    new-instance v4, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 477
    .end local v1           #lv:Landroid/widget/ListView;
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v4, Landroid/view/GestureDetector;

    invoke-direct {v4, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 410
    :try_start_0
    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 417
    .local v2, model:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    .line 418
    const v4, 0x7f03004e

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 419
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SlideView;

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    .line 420
    const-string v4, "SlideshowPresenter"

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-static {v4, p0, v5, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    .line 422
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 411
    .end local v2           #model:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "SlideshowActivity"

    const-string v5, "Cannot present the slide show."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->pauseAndHideController()V

    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 524
    sparse-switch p1, :sswitch_data_0

    .line 542
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 546
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 534
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 676
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 504
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 665
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->pauseAndHideController()V

    .line 669
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 654
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 624
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 631
    :cond_0
    :goto_0
    return v1

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 508
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 520
    :cond_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopWhenReload()V

    goto :goto_0
.end method
