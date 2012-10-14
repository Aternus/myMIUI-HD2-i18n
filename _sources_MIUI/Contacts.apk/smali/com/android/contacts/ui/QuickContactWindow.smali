.class public Lcom/android/contacts/ui/QuickContactWindow;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/Window$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/QuickContactWindow$DataQuery;,
        Lcom/android/contacts/ui/QuickContactWindow$ActionMap;,
        Lcom/android/contacts/ui/QuickContactWindow$ActionList;,
        Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;,
        Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;,
        Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;,
        Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;,
        Lcom/android/contacts/ui/QuickContactWindow$DataAction;,
        Lcom/android/contacts/ui/QuickContactWindow$Action;,
        Lcom/android/contacts/ui/QuickContactWindow$RootLayout;,
        Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

.field private static final FOLLOWING_MIMETYPES:[Ljava/lang/String;

.field private static final PRECEDING_MIMETYPES:[Ljava/lang/String;

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnKnownEmailActions:[Ljava/lang/String;

.field private static sUnKnownEmailIcons:[I

.field private static sUnKnownEmailStrings:[I

.field private static sUnKnownPhoneActions:[Ljava/lang/String;

.field private static sUnknownPhoneIcons:[I

.field private static sUnknownPhoneStrings:[I


# instance fields
.field private mActionPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRecycled:I

.field private mActions:Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mDecor:Landroid/view/View;

.field private mDialog:Lcom/android/contacts/ui/DisambigChooseDialog;

.field private mDismissListener:Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;

.field private mDismissed:Z

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFooter:Landroid/view/View;

.field private mFooterDisambig:Landroid/view/View;

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasData:Z

.field private mHasValidSocial:Z

.field private mHeader:Landroid/view/View;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastAction:Lcom/android/contacts/ui/widget/CheckableImageView;

.field private mLookupUri:Landroid/net/Uri;

.field private mMakePrimary:Z

.field private mMode:I

.field private mQuerying:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRequestedY:I

.field private mResolveCache:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

.field private mResolveList:Landroid/widget/ListView;

.field private mRootView:Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSetPrimaryCheckBox:Landroid/widget/CheckBox;

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mShowing:Z

.field private mTrack:Landroid/widget/ScreenView;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private mWasDownArrow:Z

.field private mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowRecycled:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v3, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    .line 228
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/sms-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/contact"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->PRECEDING_MIMETYPES:[Ljava/lang/String;

    .line 239
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->FOLLOWING_MIMETYPES:[Ljava/lang/String;

    .line 251
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v5

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v6

    const-string v1, "com.android.mms"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const-string v1, "com.android.browser"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sPreferResolve:Ljava/util/HashSet;

    .line 441
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.SENDTO"

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.VIEW"

    aput-object v1, v0, v6

    const-string v1, "android.intent.action.INSERT"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    aput-object v2, v0, v1

    const-string v1, "android.intent.action.ADD_FIREWALL"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownPhoneActions:[Ljava/lang/String;

    .line 450
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sUnknownPhoneIcons:[I

    .line 459
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sUnknownPhoneStrings:[I

    .line 491
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.intent.action.SENDTO"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.INSERT"

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownEmailActions:[Ljava/lang/String;

    .line 497
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownEmailIcons:[I

    .line 503
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownEmailStrings:[I

    return-void

    .line 450
    :array_0
    .array-data 0x4
        0xc0t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
    .end array-data

    .line 459
    :array_1
    .array-data 0x4
        0x82t 0x1t 0xbt 0x7ft
        0x80t 0x1t 0xbt 0x7ft
        0x81t 0x1t 0xbt 0x7ft
        0x86t 0x1t 0xbt 0x7ft
        0x87t 0x1t 0xbt 0x7ft
        0x88t 0x1t 0xbt 0x7ft
    .end array-data

    .line 497
    :array_2
    .array-data 0x4
        0xc3t 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
    .end array-data

    .line 503
    :array_3
    .array-data 0x4
        0x83t 0x1t 0xbt 0x7ft
        0x86t 0x1t 0xbt 0x7ft
        0x87t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    .line 160
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissed:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mQuerying:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShowing:Z

    .line 179
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasValidSocial:Z

    .line 180
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasData:Z

    .line 181
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 198
    iput v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowRecycled:I

    .line 199
    iput v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActionRecycled:I

    .line 200
    iput-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDialog:Lcom/android/contacts/ui/DisambigChooseDialog;

    .line 207
    new-instance v1, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;-><init>(Lcom/android/contacts/ui/QuickContactWindow;Lcom/android/contacts/ui/QuickContactWindow$1;)V

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActions:Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

    .line 213
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    .line 1734
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWasDownArrow:Z

    .line 270
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0e0006

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    .line 271
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 272
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 274
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    .line 275
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 276
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 279
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f030037

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 281
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRootView:Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

    .line 282
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRootView:Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

    iput-object p0, v1, Lcom/android/contacts/ui/QuickContactWindow$RootLayout;->mQuickContactWindow:Lcom/android/contacts/ui/QuickContactWindow;

    .line 283
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRootView:Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

    invoke-virtual {v1, v5}, Lcom/android/contacts/ui/QuickContactWindow$RootLayout;->setFocusable(Z)V

    .line 284
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRootView:Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

    invoke-virtual {v1, v5}, Lcom/android/contacts/ui/QuickContactWindow$RootLayout;->setFocusableInTouchMode(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRootView:Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/QuickContactWindow$RootLayout;->setDescendantFocusability(I)V

    .line 287
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700ce

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 288
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700cf

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 290
    new-instance v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

    .line 292
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 293
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowHoriz:I

    .line 294
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowVert:I

    .line 295
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowTouch:I

    .line 297
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mScreenWidth:I

    .line 298
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mScreenHeight:I

    .line 300
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700cc

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScreenView;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    .line 301
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    const v2, 0x7f0200be

    const v3, 0x7f0200bf

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/ScreenView;->setArrowIndicatorResource(IIII)V

    .line 303
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    sget-object v2, Lcom/android/contacts/ui/QuickContactWindow;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/ScreenView;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 305
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mFooter:Landroid/view/View;

    .line 306
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700cd

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    .line 307
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mResolveList:Landroid/widget/ListView;

    .line 308
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    .line 310
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    .line 314
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/contacts/ui/QuickContactWindow$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/ui/QuickContactWindow$1;-><init>(Lcom/android/contacts/ui/QuickContactWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 323
    new-instance v1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;)V
    .locals 0
    .parameter "context"
    .parameter "dismissListener"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow;-><init>(Landroid/content/Context;)V

    .line 332
    iput-object p2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissListener:Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/QuickContactWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->onBackPressed()V

    return-void
.end method

.method static synthetic access$200(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/contacts/ui/QuickContactWindow;->sPreferResolve:Ljava/util/HashSet;

    return-object v0
.end method

.method private considerAdd(Lcom/android/contacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "mimeType"

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->hasResolve(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActions:Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

    #calls: Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->collect(Ljava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)V
    invoke-static {v0, p2, p1}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->access$700(Lcom/android/contacts/ui/QuickContactWindow$ActionMap;Ljava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)V

    .line 1659
    :cond_0
    return-void
.end method

.method private considerShowing()V
    .locals 2

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasData:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissed:Z

    if-nez v0, :cond_1

    .line 713
    iget v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasValidSocial:Z

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    .line 720
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->showInternal()V

    .line 722
    :cond_1
    return-void
.end method

.method private dismissInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 658
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_1

    move v0, v4

    .line 659
    .local v0, hadDecor:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 661
    iget v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowRecycled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowRecycled:I

    .line 662
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 663
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    .line 664
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 666
    :cond_0
    iput-boolean v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShowing:Z

    .line 667
    iput-boolean v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissed:Z

    .line 670
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v1, v4}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 671
    iput-boolean v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mQuerying:Z

    .line 674
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    return-void

    .end local v0           #hadDecor:Z
    :cond_1
    move v0, v3

    .line 658
    goto :goto_0
.end method

.method private static getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 803
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 804
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method private static getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 797
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 798
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDataUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .parameter "lookupUri"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 530
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 531
    .local v2, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    const-string v4, "lookup"

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v6

    .line 532
    .local v3, validLookup:Z
    :goto_0
    if-nez v3, :cond_1

    .line 534
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expecting lookup-style Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 531
    .end local v3           #validLookup:Z
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 535
    .restart local v3       #validLookup:Z
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 537
    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 540
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 541
    .local v0, contactId:J
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private getHeaderView(I)Landroid/view/View;
    .locals 5
    .parameter "mode"

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, header:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 349
    :goto_0
    instance-of v3, v1, Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 351
    move-object v0, v1

    check-cast v0, Landroid/view/ViewStub;

    move-object v2, v0

    .line 352
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 357
    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_0
    :goto_1
    return-object v1

    .line 339
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v4, 0x7f0700c8

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 340
    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v4, 0x7f0700c9

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 343
    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v4, 0x7f0700ca

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 353
    :cond_1
    if-eqz v1, :cond_0

    .line 354
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUnknownTrackView(ILjava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)Landroid/view/View;
    .locals 1
    .parameter "resBg"
    .parameter "text"
    .parameter "action"

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->obtainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/CheckableImageView;

    .line 484
    .local v0, view:Lcom/android/contacts/ui/widget/CheckableImageView;
    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/widget/CheckableImageView;->setImageResource(I)V

    .line 485
    invoke-virtual {v0, p2}, Lcom/android/contacts/ui/widget/CheckableImageView;->setText(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p3}, Lcom/android/contacts/ui/widget/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 487
    invoke-virtual {v0, p0}, Lcom/android/contacts/ui/widget/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    return-object v0
.end method

.method private handleData(Landroid/database/Cursor;)V
    .locals 25
    .parameter

    .prologue
    .line 1512
    if-nez p1, :cond_1

    .line 1648
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    const-string v5, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1516
    new-instance v5, Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mActions:Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

    move-object v6, v0

    const-string v7, "vnd.android.cursor.item/contact"

    #calls: Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->collect(Ljava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)V
    invoke-static {v6, v7, v5}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->access$700(Lcom/android/contacts/ui/QuickContactWindow$ActionMap;Ljava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)V

    .line 1520
    :cond_2
    new-instance v19, Lcom/android/contacts/util/DataStatus;

    invoke-direct/range {v19 .. v19}, Lcom/android/contacts/util/DataStatus;-><init>()V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v20

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0700c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 1525
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 1527
    const/4 v5, 0x0

    move-object/from16 v22, v5

    .line 1528
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1529
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1530
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1531
    const/16 v5, 0xc

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1534
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 1537
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1540
    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1541
    const-string v5, "data15"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1542
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1543
    if-eqz v5, :cond_3

    .line 1544
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v22, v5

    goto :goto_1

    .line 1549
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object v2, v7

    move-object v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/Sources;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v8

    .line 1552
    if-eqz v8, :cond_5

    .line 1556
    new-instance v5, Lcom/android/contacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/contacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$DataKind;JLandroid/database/Cursor;)V

    .line 1557
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->considerAdd(Lcom/android/contacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 1561
    :cond_5
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v8, :cond_6

    .line 1562
    new-instance v11, Lcom/android/contacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "vnd.android.cursor.item/sms-address"

    move-object v14, v8

    move-wide v15, v9

    move-object/from16 v17, p1

    invoke-direct/range {v11 .. v17}, Lcom/android/contacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$DataKind;JLandroid/database/Cursor;)V

    .line 1564
    const-string v5, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->considerAdd(Lcom/android/contacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 1565
    const/16 v5, 0x10

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1569
    :cond_6
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    .line 1570
    :goto_2
    if-eqz v5, :cond_3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1571
    const-string v5, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/Sources;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v8

    .line 1573
    if-eqz v8, :cond_3

    .line 1574
    new-instance v5, Lcom/android/contacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "vnd.android.cursor.item/im"

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/contacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$DataKind;JLandroid/database/Cursor;)V

    .line 1576
    const-string v6, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->considerAdd(Lcom/android/contacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1569
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 1581
    :cond_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1583
    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1584
    const/4 v6, 0x4

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7, v6}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1587
    const v7, 0x7f070046

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 1588
    const v5, 0x7f0700d3

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 1591
    :cond_9
    if-eqz v18, :cond_a

    .line 1593
    if-eqz v22, :cond_d

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1594
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1597
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ui/QuickContactWindow;->mHasValidSocial:Z

    .line 1598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mHasValidSocial:Z

    move v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    .line 1600
    const v5, 0x7f0700d1

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 1601
    const v5, 0x7f0700d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 1607
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v5

    .line 1610
    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mActions:Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1613
    sget-object v7, Lcom/android/contacts/ui/QuickContactWindow;->PRECEDING_MIMETYPES:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    move/from16 v24, v9

    move v9, v5

    move/from16 v5, v24

    :goto_4
    if-ge v5, v8, :cond_e

    aget-object v10, v7, v5

    .line 1614
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    move-object v11, v0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v12

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v11, v12, v9}, Landroid/widget/ScreenView;->addView(Landroid/view/View;I)V

    .line 1616
    invoke-interface {v6, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v9, v13

    .line 1613
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1593
    :cond_d
    const/16 v5, 0x8

    goto/16 :goto_3

    .line 1624
    :cond_e
    sget-object v5, Lcom/android/contacts/ui/QuickContactWindow;->FOLLOWING_MIMETYPES:[Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x0

    move v10, v9

    :goto_5
    if-ge v8, v7, :cond_10

    aget-object v11, v5, v8

    .line 1625
    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v12, v13, v10}, Landroid/widget/ScreenView;->addView(Landroid/view/View;I)V

    .line 1627
    invoke-interface {v6, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v10, v14

    .line 1624
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1633
    :cond_10
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1634
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1635
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x0

    move v7, v9

    :goto_6
    if-ge v6, v5, :cond_11

    aget-object v8, p1, v6

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v8, v7}, Landroid/widget/ScreenView;->addView(Landroid/view/View;I)V

    .line 1635
    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_6

    .line 1640
    :cond_11
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1641
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 1642
    new-instance v6, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;

    sget-object v8, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownPhoneActions:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1644
    sget-object v5, Lcom/android/contacts/ui/QuickContactWindow;->sUnknownPhoneIcons:[I

    const/4 v8, 0x5

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/android/contacts/ui/QuickContactWindow;->sUnknownPhoneStrings:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ui/QuickContactWindow;->getUnknownTrackView(ILjava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)Landroid/view/View;

    move-result-object v5

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    move-object v6, v0

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/widget/ScreenView;->addView(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private inflateAction(Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .parameter "mimeType"

    .prologue
    const/4 v9, 0x1

    .line 1689
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->obtainView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/ui/widget/CheckableImageView;

    .line 1690
    .local v7, view:Lcom/android/contacts/ui/widget/CheckableImageView;
    const/4 v6, 0x0

    .line 1693
    .local v6, isActionSet:Z
    iget-object v8, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActions:Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

    invoke-virtual {v8, p1}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/QuickContactWindow$ActionList;

    .line 1694
    .local v1, children:Lcom/android/contacts/ui/QuickContactWindow$ActionList;
    invoke-virtual {v1}, Lcom/android/contacts/ui/QuickContactWindow$ActionList;->size()I

    move-result v8

    if-le v8, v9, :cond_0

    .line 1695
    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1697
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/contacts/ui/QuickContactWindow$ActionList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .line 1698
    .local v3, firstInfo:Lcom/android/contacts/ui/QuickContactWindow$Action;
    invoke-virtual {v1}, Lcom/android/contacts/ui/QuickContactWindow$ActionList;->size()I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 1699
    invoke-virtual {v7, v3}, Lcom/android/contacts/ui/widget/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 1714
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v8, v3}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getDescription(Lcom/android/contacts/ui/QuickContactWindow$Action;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1715
    .local v2, descrip:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/contacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v8, v3}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getIcon(Lcom/android/contacts/ui/QuickContactWindow$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1716
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v2}, Lcom/android/contacts/ui/widget/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1717
    invoke-virtual {v7, v5}, Lcom/android/contacts/ui/widget/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1718
    invoke-virtual {v7, p0}, Lcom/android/contacts/ui/widget/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1719
    iget-object v8, p0, Lcom/android/contacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v8, v3}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getString(Lcom/android/contacts/ui/QuickContactWindow$Action;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/ui/widget/CheckableImageView;->setText(Ljava/lang/String;)V

    .line 1720
    return-object v7

    .line 1701
    .end local v2           #descrip:Ljava/lang/CharSequence;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v1}, Lcom/android/contacts/ui/QuickContactWindow$ActionList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .line 1702
    .local v0, action:Lcom/android/contacts/ui/QuickContactWindow$Action;
    invoke-interface {v0}, Lcom/android/contacts/ui/QuickContactWindow$Action;->isPrimary()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1703
    invoke-virtual {v7, v0}, Lcom/android/contacts/ui/widget/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 1704
    const/4 v6, 0x1

    .line 1708
    .end local v0           #action:Lcom/android/contacts/ui/QuickContactWindow$Action;
    :cond_4
    if-nez v6, :cond_1

    .line 1709
    invoke-virtual {v7, v1}, Lcom/android/contacts/ui/widget/CheckableImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x0

    .line 1499
    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    if-nez v4, :cond_0

    move v4, v5

    .line 1505
    :goto_0
    return v4

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1501
    .local v1, excludedMime:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1502
    const/4 v4, 0x1

    goto :goto_0

    .line 1500
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #excludedMime:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 1505
    goto :goto_0
.end method

.method private layoutInScreen()V
    .locals 5

    .prologue
    .line 625
    iget-boolean v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShowing:Z

    if-nez v3, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 628
    .local v1, l:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 630
    .local v2, originalY:I
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 632
    .local v0, blockHeight:I
    iget v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRequestedY:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 633
    iget v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRequestedY:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mScreenHeight:I

    if-le v3, v4, :cond_2

    .line 635
    iget v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mScreenHeight:I

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 638
    :cond_2
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v3, :cond_0

    .line 640
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private declared-synchronized obtainView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1668
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    if-eqz v0, :cond_0

    .line 1672
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1670
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003b

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onBackPressed()V
    .locals 2

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1810
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->setResolveVisible(ZLcom/android/contacts/ui/widget/CheckableImageView;)V

    .line 1811
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 1812
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1816
    :goto_0
    return-void

    .line 1814
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactWindow;->dismiss()V

    goto :goto_0
.end method

.method private declared-synchronized releaseView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1681
    iget v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActionRecycled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActionRecycled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    monitor-exit p0

    return-void

    .line 1680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 682
    iput-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mLastAction:Lcom/android/contacts/ui/widget/CheckableImageView;

    .line 685
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v0}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->clear()V

    .line 686
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mActions:Lcom/android/contacts/ui/QuickContactWindow$ActionMap;

    invoke-virtual {v0}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->clear()V

    .line 689
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/QuickContactWindow;->releaseView(Landroid/view/View;)V

    .line 691
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->removeScreen(I)V

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDialog:Lcom/android/contacts/ui/DisambigChooseDialog;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDialog:Lcom/android/contacts/ui/DisambigChooseDialog;

    invoke-virtual {v0}, Lcom/android/contacts/ui/DisambigChooseDialog;->dismiss()V

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->invalidate()V

    .line 698
    iput-boolean v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWasDownArrow:Z

    .line 701
    iput-boolean v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 702
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 704
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow;->setResolveVisible(ZLcom/android/contacts/ui/widget/CheckableImageView;)V

    .line 705
    return-void
.end method

.method private setHeaderImage(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 762
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 763
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 764
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    if-nez p2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    :cond_0
    return-void

    .line 765
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setHeaderText(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 749
    return-void
.end method

.method private setHeaderText(ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "id"
    .parameter "value"

    .prologue
    .line 753
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 754
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 755
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 758
    :cond_0
    return-void

    .line 756
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setResolveVisible(ZLcom/android/contacts/ui/widget/CheckableImageView;)V
    .locals 7
    .parameter "visible"
    .parameter "actionView"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1742
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v4

    .line 1744
    .local v0, visibleNow:Z
    :goto_0
    iput-object p2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mLastAction:Lcom/android/contacts/ui/widget/CheckableImageView;

    .line 1747
    if-ne p1, v0, :cond_1

    .line 1760
    :goto_1
    return-void

    .end local v0           #visibleNow:Z
    :cond_0
    move v0, v3

    .line 1742
    goto :goto_0

    .line 1749
    .restart local v0       #visibleNow:Z
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mFooter:Landroid/view/View;

    if-eqz p1, :cond_3

    move v2, v6

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1750
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    if-eqz p1, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    if-eqz p1, :cond_6

    .line 1754
    iget-boolean v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWasDownArrow:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWasDownArrow:Z

    .line 1755
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1749
    goto :goto_2

    :cond_4
    move v2, v6

    .line 1750
    goto :goto_3

    :cond_5
    move v1, v3

    .line 1754
    goto :goto_4

    .line 1758
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWasDownArrow:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v2, v5

    goto :goto_5
.end method

.method private showArrow(II)V
    .locals 6
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v5, 0x7f0700ce

    .line 549
    if-ne p1, v5, :cond_0

    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    move-object v3, v4

    .line 550
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v5, :cond_1

    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    move-object v1, v4

    .line 552
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 554
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 556
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 558
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    return-void

    .line 549
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    move-object v3, v4

    goto :goto_0

    .line 550
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    move-object v1, v4

    goto :goto_1
.end method

.method private showInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 566
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    .line 567
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 568
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 570
    .local v1, l:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mScreenWidth:I

    iget v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowHoriz:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowHoriz:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 571
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 574
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 575
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 577
    .local v0, blockHeight:I
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 578
    iget v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowHoriz:I

    neg-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 580
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v0, :cond_0

    .line 583
    const v2, 0x7f0700cf

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/ui/QuickContactWindow;->showArrow(II)V

    .line 584
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowVert:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 585
    const v2, 0x7f0e0007

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 596
    :goto_0
    const/16 v2, 0x300

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 599
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRequestedY:I

    .line 600
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShowing:Z

    .line 602
    iput-boolean v5, p0, Lcom/android/contacts/ui/QuickContactWindow;->mQuerying:Z

    .line 603
    iput-boolean v5, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissed:Z

    .line 605
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ScreenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 606
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    invoke-virtual {v2, v5}, Landroid/widget/ScreenView;->scrollToScreen(I)V

    .line 613
    return-void

    .line 590
    :cond_0
    const v2, 0x7f0700ce

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/ui/QuickContactWindow;->showArrow(II)V

    .line 591
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowVert:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 592
    const v2, 0x7f0e0008

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method private showTrackForUnKnowEmail(Ljava/lang/String;)V
    .locals 9
    .parameter "email"

    .prologue
    .line 510
    sget-object v6, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownEmailActions:[Ljava/lang/String;

    array-length v1, v6

    .line 511
    .local v1, actionCount:I
    const/4 v3, 0x0

    .line 512
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 513
    new-instance v0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;

    sget-object v6, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownEmailActions:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v0, v6, p1}, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v0, action:Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;
    sget-object v6, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownEmailIcons:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownEmailStrings:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v0}, Lcom/android/contacts/ui/QuickContactWindow;->getUnknownTrackView(ILjava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)Landroid/view/View;

    move-result-object v5

    .line 516
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    invoke-virtual {v6}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v3

    .line 517
    iget-object v6, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v6, v5, v3}, Landroid/widget/ScreenView;->addView(Landroid/view/View;I)V

    .line 512
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 520
    .end local v0           #action:Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasData:Z

    .line 521
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->considerShowing()V

    .line 522
    return-void
.end method

.method private showTrackForUnknownNumber(Ljava/lang/String;)V
    .locals 9
    .parameter "phoneNumber"

    .prologue
    .line 469
    sget-object v6, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownPhoneActions:[Ljava/lang/String;

    array-length v1, v6

    .line 470
    .local v1, actionCount:I
    const/4 v3, 0x0

    .line 471
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 472
    new-instance v0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;

    sget-object v6, Lcom/android/contacts/ui/QuickContactWindow;->sUnKnownPhoneActions:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v0, v6, p1}, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .local v0, action:Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;
    sget-object v6, Lcom/android/contacts/ui/QuickContactWindow;->sUnknownPhoneIcons:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/contacts/ui/QuickContactWindow;->sUnknownPhoneStrings:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v0}, Lcom/android/contacts/ui/QuickContactWindow;->getUnknownTrackView(ILjava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)Landroid/view/View;

    move-result-object v5

    .line 475
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    invoke-virtual {v6}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v3

    .line 476
    iget-object v6, p0, Lcom/android/contacts/ui/QuickContactWindow;->mTrack:Landroid/widget/ScreenView;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v6, v5, v3}, Landroid/widget/ScreenView;->addView(Landroid/view/View;I)V

    .line 471
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 478
    .end local v0           #action:Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasData:Z

    .line 479
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->considerShowing()V

    .line 480
    return-void
.end method


# virtual methods
.method protected detectEventOutside(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 1869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1871
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1872
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1873
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShadowTouch:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 1875
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 1876
    .local v1, y:I
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1877
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1880
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissListener:Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissListener:Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;->onDismiss(Lcom/android/contacts/ui/QuickContactWindow;)V

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->dismissInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    monitor-exit p0

    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    const/4 v0, 0x1

    .line 1823
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1861
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1884
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow;->detectEventOutside(Landroid/view/MotionEvent;)V

    .line 1885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1886
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactWindow;->dismiss()V

    .line 1887
    const/4 v0, 0x1

    .line 1889
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1950
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1803
    iput-boolean p2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 1804
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1764
    instance-of v1, p1, Lcom/android/contacts/ui/widget/CheckableImageView;

    .line 1765
    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/ui/widget/CheckableImageView;

    move-object v1, v0

    .line 1766
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1767
    instance-of v2, v1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    if-eqz v2, :cond_2

    .line 1769
    check-cast v1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .line 1770
    iget-boolean v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 1773
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    :goto_0
    invoke-direct {p0, v6, v5}, Lcom/android/contacts/ui/QuickContactWindow;->setResolveVisible(ZLcom/android/contacts/ui/widget/CheckableImageView;)V

    .line 1781
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactWindow;->dismiss()V

    .line 1783
    if-eqz v2, :cond_1

    .line 1784
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1785
    const-string v3, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1786
    invoke-interface {v1}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 1787
    if-eqz v1, :cond_1

    .line 1788
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1800
    :cond_1
    :goto_1
    return-void

    .line 1774
    :catch_0
    move-exception v3

    .line 1775
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00a2

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1791
    :cond_2
    instance-of v2, v1, Lcom/android/contacts/ui/QuickContactWindow$ActionList;

    if-eqz v2, :cond_1

    .line 1794
    new-instance v2, Lcom/android/contacts/ui/DisambigChooseDialog;

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/contacts/ui/QuickContactWindow$ActionList;

    invoke-direct {v2, v3, v1}, Lcom/android/contacts/ui/DisambigChooseDialog;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDialog:Lcom/android/contacts/ui/DisambigChooseDialog;

    .line 1795
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDialog:Lcom/android/contacts/ui/DisambigChooseDialog;

    invoke-virtual {v1}, Lcom/android/contacts/ui/DisambigChooseDialog;->show()V

    .line 1797
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 1798
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 1900
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1904
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 1909
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1955
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->layoutInScreen()V

    .line 618
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1726
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/contacts/ui/QuickContactWindow;->onClick(Landroid/view/View;)V

    .line 1727
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1829
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1830
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1831
    const/4 v0, 0x1

    .line 1834
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1850
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1855
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1839
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->onBackPressed()V

    .line 1842
    const/4 v0, 0x1

    .line 1845
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 1914
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1919
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1924
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 1928
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_0

    .line 744
    :goto_0
    monitor-exit p0

    return-void

    .line 729
    :cond_0
    if-nez p3, :cond_1

    .line 731
    :try_start_1
    const-string v0, "QuickContactWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing cursor for token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactWindow;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 736
    :cond_1
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/contacts/ui/QuickContactWindow;->handleData(Landroid/database/Cursor;)V

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasData:Z

    .line 739
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 740
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->considerShowing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1933
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1941
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 1945
    return-void
.end method

.method public declared-synchronized show(Landroid/net/Uri;Landroid/graphics/Rect;I[Ljava/lang/String;)V
    .locals 9
    .parameter "lookupUri"
    .parameter "anchor"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v0, "vnd.android.cursor.item/photo"

    .line 365
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mQuerying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mShowing:Z

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    const-string v0, "QuickContactWindow"

    const-string v1, "dismissing before showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->dismissInternal()V

    .line 375
    :cond_1
    if-eq p3, v2, :cond_2

    if-eq p3, v5, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    :cond_2
    move v8, v2

    .line 377
    .local v8, validMode:Z
    :goto_0
    if-nez v8, :cond_4

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode, expecting MODE_LARGE, MODE_MEDIUM, or MODE_SMALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v8           #validMode:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v8, v4

    .line 375
    goto :goto_0

    .line 382
    .restart local v8       #validMode:Z
    :cond_4
    if-nez p2, :cond_5

    .line 383
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing anchor rectangle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_5
    iput-object p1, p0, Lcom/android/contacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    .line 388
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    .line 389
    iput p3, p0, Lcom/android/contacts/ui/QuickContactWindow;->mMode:I

    .line 390
    iput-object p4, p0, Lcom/android/contacts/ui/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    .line 392
    invoke-direct {p0, p3}, Lcom/android/contacts/ui/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    .line 394
    const v0, 0x7f070046

    const v1, 0x7f0b00a4

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderText(II)V

    .line 396
    const v0, 0x7f0700d1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 397
    const v0, 0x7f0700d2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 399
    const v0, 0x7f0700d3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow;->resetTrack()V

    .line 405
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mRootView:Lcom/android/contacts/ui/QuickContactWindow$RootLayout;

    invoke-virtual {v0}, Lcom/android/contacts/ui/QuickContactWindow$RootLayout;->requestFocus()Z

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHasValidSocial:Z

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mDismissed:Z

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mQuerying:Z

    .line 411
    const-string v0, "tel"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 412
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/QuickContactWindow;->showTrackForUnknownNumber(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :goto_1
    monitor-exit p0

    return-void

    .line 414
    :cond_6
    :try_start_2
    const-string v0, "mailto"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 415
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/QuickContactWindow;->showTrackForUnKnowEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow;->getDataUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 422
    .local v3, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 425
    iget v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 427
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    sget-object v4, Lcom/android/contacts/ui/QuickContactWindow$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=? OR (mimetype=? AND _id=photo_id)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    sget-object v4, Lcom/android/contacts/ui/QuickContactWindow$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
