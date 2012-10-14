.class public Lcom/android/browser/util/MiRenWebViewUtils;
.super Ljava/lang/Object;
.source "MiRenWebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/util/MiRenWebViewUtils$1;
    }
.end annotation


# static fields
.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static LOG_TAG:Ljava/lang/String;

.field private static THUMBNAIL_HEIGHT:I

.field private static THUMBNAIL_WIDTH:I

.field private static mNotFoundPageTitleArray:[Ljava/lang/String;

.field private static final sMobileSiteKeywords:[Ljava/lang/String;

.field private static sUserAgentCandidates:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/util/MiRenWebViewUtils;->mNotFoundPageTitleArray:[Ljava/lang/String;

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "wap"

    aput-object v1, v0, v2

    const-string v1, "mobile"

    aput-object v1, v0, v3

    const-string v1, "m"

    aput-object v1, v0, v4

    const-string v1, "3g"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/browser/util/MiRenWebViewUtils;->sMobileSiteKeywords:[Ljava/lang/String;

    .line 369
    sput v2, Lcom/android/browser/util/MiRenWebViewUtils;->THUMBNAIL_WIDTH:I

    .line 370
    sput v2, Lcom/android/browser/util/MiRenWebViewUtils;->THUMBNAIL_HEIGHT:I

    .line 399
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/browser/controller/BrowserSettings;->DEFAULT_USERAGENT:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    aput-object v1, v0, v3

    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_1 like Mac OS X; zh-cn) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6531.22.7"

    aput-object v1, v0, v4

    const-string v1, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"

    aput-object v1, v0, v5

    const-string v1, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; zh-cn) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/browser/util/MiRenWebViewUtils;->sUserAgentCandidates:[Ljava/lang/String;

    .line 407
    const-string v0, "com.android.browser.util.MiRenWebViewUtils"

    sput-object v0, Lcom/android/browser/util/MiRenWebViewUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method public static createBackgroundWebView(Lcom/android/browser/ui/MiRenWebViewCore;)Lcom/android/browser/ui/MiRenWebViewBase;
    .locals 4
    .parameter "parentWebView"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const/4 v3, 0x0

    .line 205
    :goto_0
    return-object v3

    .line 198
    :cond_0
    new-instance v2, Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/browser/ui/MiRenWebViewBase;-><init>(Landroid/content/Context;)V

    .line 199
    .local v2, webView:Lcom/android/browser/ui/MiRenWebViewBase;
    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 200
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgent()I

    move-result v1

    .line 202
    .local v1, userAgent:I
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgent(I)V

    .line 203
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 204
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    move-object v3, v2

    .line 205
    goto :goto_0
.end method

.method public static createDesktopShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "title"
    .parameter "touchIcon"
    .parameter "favIcon"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    .local v0, favIconSize:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v1, i:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v2, shortcutIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .end local p1
    int-to-long v3, p1

    .line 272
    .local v3, uniqueId:J
    const-string p1, "com.android.browser.application_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .end local v3           #uniqueId:J
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string p1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    const-string p1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    if-eqz p3, :cond_0

    .line 281
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 283
    .local p1, bm:Landroid/graphics/Bitmap;
    new-instance p2, Landroid/graphics/Canvas;

    .end local p2
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 284
    .local p2, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #shortcutIntent:Landroid/content/Intent;
    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v0           #favIconSize:I
    .end local p4
    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, p4, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 286
    .local v2, src:Landroid/graphics/Rect;
    new-instance p4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p4, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 289
    .local p4, dest:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 290
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 291
    invoke-virtual {p2, p3, v2, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 295
    new-instance p3, Landroid/graphics/Path;

    .end local p3
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 296
    .local p3, path:Landroid/graphics/Path;
    sget-object p4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    .end local p4           #dest:Landroid/graphics/Rect;
    invoke-virtual {p3, p4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 297
    new-instance p4, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v2           #src:Landroid/graphics/Rect;
    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p4, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 298
    .local p4, rect:Landroid/graphics/RectF;
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {p4, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 299
    const/high16 v2, 0x4100

    const/high16 v3, 0x4100

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, p4, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 302
    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    .end local p4           #rect:Landroid/graphics/RectF;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 303
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 305
    const-string p2, "android.intent.extra.shortcut.ICON"

    .end local p2           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 355
    .end local v0           #paint:Landroid/graphics/Paint;
    .end local p1           #bm:Landroid/graphics/Bitmap;
    .end local p3           #path:Landroid/graphics/Path;
    :goto_0
    const-string p1, "duplicate"

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    return-void

    .line 307
    .local v0, favIconSize:I
    .local v2, shortcutIntent:Landroid/content/Intent;
    .local p2, title:Ljava/lang/String;
    .local p3, touchIcon:Landroid/graphics/Bitmap;
    .local p4, favIcon:Landroid/graphics/Bitmap;
    :cond_0
    if-nez p4, :cond_1

    .line 308
    const-string p1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const p2, 0x7f020048

    invoke-static {p0, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    .end local p2           #title:Ljava/lang/String;
    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 313
    .restart local p2       #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f020048

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .end local p2           #title:Ljava/lang/String;
    move-result-object v0

    .line 317
    .local v0, icon:Landroid/graphics/Bitmap;
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 318
    .local p2, copy:Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local p1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 p3, 0x3

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 324
    .end local p3           #touchIcon:Landroid/graphics/Bitmap;
    .local v3, p:Landroid/graphics/Paint;
    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    const/4 p3, -0x1

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 330
    .local p3, density:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, p3

    .line 331
    .local v2, iconSize:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, p3

    .line 332
    .local v4, padding:F
    const/high16 p3, 0x4000

    mul-float/2addr p3, v4

    add-float/2addr v2, p3

    .line 334
    .local v2, rectSize:F
    new-instance p3, Landroid/graphics/Rect;

    .end local p3           #density:F
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .end local v0           #icon:Landroid/graphics/Bitmap;
    invoke-direct {p3, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 336
    .local p3, iconBounds:Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v5, 0x40e0

    sub-float/2addr v0, v5

    .line 340
    .local v0, x:F
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    .end local p3           #iconBounds:Landroid/graphics/Rect;
    int-to-float p3, p3

    sub-float/2addr p3, v2

    const/high16 v5, 0x40e0

    sub-float v5, p3, v5

    .line 341
    .local v5, y:F
    new-instance p3, Landroid/graphics/RectF;

    add-float v6, v0, v2

    add-float/2addr v2, v5

    invoke-direct {p3, v0, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 344
    .end local v2           #rectSize:F
    .local p3, r:Landroid/graphics/RectF;
    const/high16 v0, 0x4000

    const/high16 v2, 0x4000

    invoke-virtual {p1, p3, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 349
    .end local v0           #x:F
    invoke-virtual {p3, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0, p3, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 351
    const-string p1, "android.intent.extra.shortcut.ICON"

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static createScreenshot(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v10, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    .line 74
    .local v4, thumbnail:Landroid/graphics/Picture;
    if-nez v4, :cond_0

    move-object v7, v10

    .line 108
    :goto_0
    return-object v7

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/android/browser/util/MiRenWebViewUtils;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v7

    invoke-static {p0}, Lcom/android/browser/util/MiRenWebViewUtils;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    .line 83
    .local v6, thumbnailWidth:I
    invoke-virtual {v4}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    .line 84
    .local v5, thumbnailHeight:I
    const/high16 v2, 0x3f80

    .line 85
    .local v2, scaleFactorX:F
    const/high16 v3, 0x3f80

    .line 86
    .local v3, scaleFactorY:F
    if-lez v6, :cond_1

    .line 87
    invoke-static {p0}, Lcom/android/browser/util/MiRenWebViewUtils;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v6

    div-float v2, v7, v8

    .line 93
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_2

    if-lez v5, :cond_2

    .line 98
    invoke-static {p0}, Lcom/android/browser/util/MiRenWebViewUtils;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v3, v7, v8

    .line 105
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    invoke-virtual {v4, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    move-object v7, v0

    .line 108
    goto :goto_0

    :cond_1
    move-object v7, v10

    .line 90
    goto :goto_0

    .line 102
    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public static createScreenshotToFile(Landroid/content/Context;Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v5

    .line 120
    .local v5, thumbnail:Landroid/graphics/Picture;
    if-nez v5, :cond_0

    move-object v6, v9

    .line 143
    :goto_0
    return-object v6

    .line 123
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Picture;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v5, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 128
    if-nez v0, :cond_1

    move-object v6, v9

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Lcom/android/browser/util/MiRenWebViewUtils;->getScreenshotDir()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v6, v9

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/browser/util/MiRenWebViewUtils;->getScreenshotDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/browser/common/MD5;->MD5_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, out:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    .line 143
    goto :goto_0

    .line 138
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 139
    .local v2, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/browser/util/MiRenWebViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v9

    .line 140
    goto :goto_0
.end method

.method private static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 395
    invoke-static {p0}, Lcom/android/browser/util/MiRenWebViewUtils;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    .line 396
    sget v0, Lcom/android/browser/util/MiRenWebViewUtils;->THUMBNAIL_HEIGHT:I

    return v0
.end method

.method private static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 379
    sget v1, Lcom/android/browser/util/MiRenWebViewUtils;->THUMBNAIL_WIDTH:I

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 381
    .local v0, density:F
    const/high16 v1, 0x4316

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/browser/util/MiRenWebViewUtils;->THUMBNAIL_WIDTH:I

    .line 382
    const/high16 v1, 0x430c

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/browser/util/MiRenWebViewUtils;->THUMBNAIL_HEIGHT:I

    .line 384
    .end local v0           #density:F
    :cond_0
    sget v1, Lcom/android/browser/util/MiRenWebViewUtils;->THUMBNAIL_WIDTH:I

    return v1
.end method

.method private static getScreenshotDir()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/browser/util/MirenConstants;->SCREENSHOT_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, base:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    sget-object v1, Lcom/android/browser/util/MiRenWebViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download aborted - can\'t create base directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 156
    .end local v0           #base:Ljava/io/File;
    :goto_0
    return-object v1

    .line 153
    .restart local v0       #base:Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 155
    .end local v0           #base:Ljava/io/File;
    :cond_1
    sget-object v1, Lcom/android/browser/util/MiRenWebViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "no sdcard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 156
    goto :goto_0
.end method

.method public static isBrowserHandledMimeType(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, extension:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 191
    :goto_0
    return v3

    .line 182
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 183
    .local v1, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "text/vnd.wap.wml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v4

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMobileSite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "url"

    .prologue
    .line 211
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 212
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, parts:[Ljava/lang/String;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v3, v1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v7, v0, v3

    .line 215
    .local v7, part:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/util/MiRenWebViewUtils;->sMobileSiteKeywords:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .local v2, i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v4, v1, v2

    .line 216
    .local v4, keyword:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .end local v4           #keyword:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 217
    const/4 p0, 0x1

    .line 236
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v6           #len$:I
    .end local v7           #part:Ljava/lang/String;
    .end local p0
    :goto_2
    return p0

    .line 215
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #part:Ljava/lang/String;
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 225
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #part:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/browser/model/YellowPageDataProvider;->getCategories(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    .line 226
    .local p0, knownSites:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Category;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0           #knownSites:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Category;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/browser/model/YellowPageDataProvider$Category;

    .line 227
    .local p0, category:Lcom/android/browser/model/YellowPageDataProvider$Category;
    iget-object p0, p0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    .end local p0           #category:Lcom/android/browser/model/YellowPageDataProvider$Category;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/model/YellowPageDataProvider$Site;

    .line 228
    .local v1, site:Lcom/android/browser/model/YellowPageDataProvider$Site;
    iget-object v2, v1, Lcom/android/browser/model/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    iget-boolean v1, v1, Lcom/android/browser/model/YellowPageDataProvider$Site;->_isWapsite:Z

    .end local v1           #site:Lcom/android/browser/model/YellowPageDataProvider$Site;
    if-eqz v1, :cond_4

    .line 230
    const/4 p0, 0x1

    goto :goto_2

    .line 236
    .end local p0           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 p0, 0x0

    goto :goto_2
.end method

.method public static isValidTitle(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    const/4 v3, 0x0

    .line 52
    sget-object v1, Lcom/android/browser/util/MiRenWebViewUtils;->mNotFoundPageTitleArray:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/browser/util/MiRenWebViewUtils;->mNotFoundPageTitleArray:[Ljava/lang/String;

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 62
    :goto_0
    return v1

    .line 58
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/browser/util/MiRenWebViewUtils;->mNotFoundPageTitleArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 59
    sget-object v1, Lcom/android/browser/util/MiRenWebViewUtils;->mNotFoundPageTitleArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 60
    goto :goto_0

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static processImageElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const-string v3, ""

    .line 257
    :goto_0
    return-object v3

    .line 243
    :cond_0
    const-string v3, "(<img )|(<IMG )"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, parts:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 248
    aget-object v3, v1, v0

    const-string v4, " onload=\"onImgLoaded(this)\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    const-string v3, "<img "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_2
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_1
    const-string v3, "<img onload=\"onImgLoaded(this)\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 257
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static transformTextSizeToString(Landroid/webkit/WebSettings$TextSize;)Ljava/lang/String;
    .locals 3
    .parameter "size"

    .prologue
    .line 161
    const-string v0, "normal"

    .line 162
    .local v0, sizeString:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/util/MiRenWebViewUtils$1;->$SwitchMap$android$webkit$WebSettings$TextSize:[I

    invoke-virtual {p0}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 173
    :goto_0
    return-object v0

    .line 164
    :pswitch_0
    const-string v0, "large"

    .line 165
    goto :goto_0

    .line 167
    :pswitch_1
    const-string v0, "small"

    .line 168
    goto :goto_0

    .line 170
    :pswitch_2
    const-string v0, "largest"

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
