.class public Lcom/android/browser/ui/UrlTitleBarView;
.super Landroid/widget/LinearLayout;
.source "UrlTitleBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/UrlTitleBarView$3;,
        Lcom/android/browser/ui/UrlTitleBarView$AddBookmarkComfirmDialogBuilder;,
        Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;,
        Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;
    }
.end annotation


# static fields
.field private static final GUIDE_READING_MODE:Ljava/lang/String; = "guide_reading_mode"

.field private static Instance:Lcom/android/browser/ui/UrlTitleBarView;

.field private static LONG_PRESS:I


# instance fields
.field private _bookmarkBtnView:Landroid/widget/ImageView;

.field private _lastVisibleRightButton:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

.field private _loadingProgressBar:Landroid/widget/ProgressBar;

.field private _rightBtnView:Landroid/widget/ImageView;

.field private _urlFrameView:Landroid/widget/FrameLayout;

.field private _urlView:Landroid/widget/TextView;

.field private mFuncBtn:Landroid/widget/ImageView;

.field private mFuncBtnType:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

.field private mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/ui/UrlTitleBarView;->Instance:Lcom/android/browser/ui/UrlTitleBarView;

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/android/browser/ui/UrlTitleBarView;->LONG_PRESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x7f0d0086

    .line 250
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 253
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030020

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 255
    const v4, 0x7f0d0087

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/UrlTitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    .line 257
    iget-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 258
    const v4, 0x7f0d0088

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/UrlTitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlView:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f0d008a

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/UrlTitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    .line 261
    const v4, 0x7f0d0085

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/UrlTitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    .line 263
    invoke-virtual {p0, v6}, Lcom/android/browser/ui/UrlTitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    .line 264
    sget-object v4, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_lastVisibleRightButton:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    .line 266
    move-object v0, p1

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object v2, v0

    .line 267
    .local v2, finalActivity:Lcom/android/browser/ui/MiRenBrowserActivity;
    new-instance v3, Lcom/android/browser/ui/UrlTitleBarView$1;

    invoke-direct {v3, p0, v2}, Lcom/android/browser/ui/UrlTitleBarView$1;-><init>(Lcom/android/browser/ui/UrlTitleBarView;Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 275
    .local v3, titleTextClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v6}, Lcom/android/browser/ui/UrlTitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v4, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;-><init>(Lcom/android/browser/ui/UrlTitleBarView;Lcom/android/browser/ui/UrlTitleBarView$1;)V

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    .line 282
    sput-object p0, Lcom/android/browser/ui/UrlTitleBarView;->Instance:Lcom/android/browser/ui/UrlTitleBarView;

    .line 284
    const v4, 0x7f0d0089

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/UrlTitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    .line 285
    iget-object v4, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported attrs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static GetInstance()Lcom/android/browser/ui/UrlTitleBarView;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/browser/ui/UrlTitleBarView;->Instance:Lcom/android/browser/ui/UrlTitleBarView;

    return-object v0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/browser/ui/UrlTitleBarView;->LONG_PRESS:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/ui/UrlTitleBarView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ui/UrlTitleBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/browser/ui/UrlTitleBarView;->showUrlTitleBarContextMenu()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/ui/UrlTitleBarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/ui/UrlTitleBarView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method private showUrlTitleBarContextMenu()V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 71
    .local v0, ctx:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 72
    .local v1, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f0c0003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 74
    return-void
.end method

.method public getBookmarkBtnView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLoadingProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRightBtnView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getUrlView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/browser/api_v8/Bookmarks;->isBookmarkByUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->doAddBookmark()V

    .line 296
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->doRemoveBookmark(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_lastVisibleRightButton:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->StopLoading:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    if-ne v0, v1, :cond_4

    .line 306
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->stopLoading()V

    goto :goto_0

    .line 307
    .restart local p0
    :cond_4
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_lastVisibleRightButton:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->DoRefresh:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->reload()V

    goto :goto_0

    .line 309
    .restart local p0
    :cond_5
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->OnFuncBtnClicked()V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return v6

    .line 123
    :pswitch_0
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v3, v2

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v4

    if-le v3, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    iget-object v3, p0, Lcom/android/browser/ui/UrlTitleBarView;->mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    sget v4, Lcom/android/browser/ui/UrlTitleBarView;->LONG_PRESS:I

    invoke-virtual {v3, v4}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 134
    .local v0, slop:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_3

    .line 138
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 139
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 141
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    sget v3, Lcom/android/browser/ui/UrlTitleBarView;->LONG_PRESS:I

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 145
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v1, v2

    .line 146
    .local v1, x:I
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 148
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    if-le v1, v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 156
    :cond_5
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    if-gt v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_0

    .line 160
    :cond_6
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    sget v3, Lcom/android/browser/ui/UrlTitleBarView;->LONG_PRESS:I

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 165
    .end local v0           #slop:I
    .end local v1           #x:I
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 167
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    sget v3, Lcom/android/browser/ui/UrlTitleBarView;->LONG_PRESS:I

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 171
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 172
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 173
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    :cond_7
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 176
    :cond_8
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 177
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 178
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 180
    :cond_9
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 181
    :cond_a
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->mHandler:Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;

    sget v3, Lcom/android/browser/ui/UrlTitleBarView;->LONG_PRESS:I

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->removeMessages(I)V

    .line 183
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 184
    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refeshFuncBtn(Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;)V
    .locals 4
    .parameter "funcBtnType"

    .prologue
    const/4 v2, 0x0

    const-string v3, "guide_reading_mode"

    .line 315
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtnType:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    if-ne v0, p1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iput-object p1, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtnType:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    .line 319
    sget-object v0, Lcom/android/browser/ui/UrlTitleBarView$3;->$SwitchMap$com$android$browser$ui$MiRenBrowserActivity$FuncButtonTypeEnum:[I

    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtnType:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "guide_reading_mode"

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_reading_mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/browser/ui/UrlTitleBarView$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/UrlTitleBarView$2;-><init>(Lcom/android/browser/ui/UrlTitleBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 353
    :pswitch_4
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 357
    :pswitch_5
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V
    .locals 3
    .parameter "btnType"
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 216
    sget-object v0, Lcom/android/browser/ui/UrlTitleBarView$3;->$SwitchMap$com$android$browser$ui$UrlTitleBarView$ActionButtonTypeEnum:[I

    invoke-virtual {p1}, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported btnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_rightBtnView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->StopLoading:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    if-ne p1, v1, :cond_2

    const v1, 0x7f02002d

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iput-object p1, p0, Lcom/android/browser/ui/UrlTitleBarView;->_lastVisibleRightButton:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    .line 244
    :cond_0
    :goto_2
    return-void

    .line 219
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 221
    :cond_2
    const v1, 0x7f02002c

    goto :goto_1

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    if-eqz p2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/ui/UrlTitleBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/UrlTitleBarView;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/browser/api_v8/Bookmarks;->isBookmarkByUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    move v1, v2

    .line 229
    goto :goto_3

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_bookmarkBtnView:Landroid/widget/ImageView;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLoadingProgress(ILcom/android/browser/ui/MiRenWebView;)V
    .locals 4
    .parameter "newProgress"
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p2}, Lcom/android/browser/ui/MiRenWebView;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->mUrl:Ljava/lang/String;

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedRealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, realUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->DoRefresh:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {p0, v1, v3}, Lcom/android/browser/ui/UrlTitleBarView;->setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V

    .line 99
    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {p0, v1, v3}, Lcom/android/browser/ui/UrlTitleBarView;->setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V

    .line 116
    .end local v0           #realUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 102
    .restart local v0       #realUrl:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->DoRefresh:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/UrlTitleBarView;->setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V

    .line 103
    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/UrlTitleBarView;->setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V

    goto :goto_0

    .line 107
    .end local v0           #realUrl:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView;->_loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    if-eqz p2, :cond_4

    const/16 v1, 0x32

    if-le p1, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/browser/ui/MiRenWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 111
    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {p0, v1, v3}, Lcom/android/browser/ui/UrlTitleBarView;->setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V

    .line 114
    :goto_1
    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->StopLoading:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {p0, v1, v3}, Lcom/android/browser/ui/UrlTitleBarView;->setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V

    goto :goto_0

    .line 113
    :cond_4
    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/UrlTitleBarView;->setActionButtonStatus(Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;Z)V

    goto :goto_1
.end method

.method public setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method public setUrlTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView;->_urlView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method
