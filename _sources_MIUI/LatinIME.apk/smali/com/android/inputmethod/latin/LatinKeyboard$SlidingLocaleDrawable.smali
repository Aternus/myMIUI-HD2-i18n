.class Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingLocaleDrawable"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private final mHeight:I

.field private mHitThreshold:Z

.field private final mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMiddleX:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLanguage:Ljava/lang/String;

.field private final mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThreshold:I

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .parameter
    .parameter "background"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 926
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 927
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$300(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 928
    iput p3, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 929
    iput p4, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 930
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 931
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x1030044

    const/16 v2, 0x12

    #calls: Lcom/android/inputmethod/latin/LatinKeyboard;->getTextSizeFromTheme(II)I
    invoke-static {p1, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$400(Lcom/android/inputmethod/latin/LatinKeyboard;II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 932
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 933
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 934
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 935
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 936
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    .line 937
    #getter for: Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$500(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 939
    #getter for: Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$500(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 941
    #getter for: Lcom/android/inputmethod/latin/LatinKeyboard;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$600(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    .line 942
    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->setDiff(I)V

    return-void
.end method

.method private getLanguageName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 958
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDiff(I)V
    .locals 2
    .parameter "diff"

    .prologue
    .line 945
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 955
    :goto_0
    return-void

    .line 950
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 951
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 952
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 953
    :cond_2
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 954
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 963
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 964
    iget-boolean v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v8, :cond_1

    .line 965
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 966
    .local v5, paint:Landroid/graphics/Paint;
    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 967
    .local v7, width:I
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 968
    .local v2, height:I
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 969
    .local v1, diff:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 970
    .local v3, lArrow:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 971
    .local v6, rArrow:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v11, v11, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 972
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 973
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$700(Lcom/android/inputmethod/latin/LatinKeyboard;)Lcom/android/inputmethod/latin/LanguageSwitcher;

    move-result-object v4

    .line 974
    .local v4, languageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 975
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getNextInputLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 976
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getPrevInputLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 979
    .end local v4           #languageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;
    :cond_0
    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    int-to-float v8, v8

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float v0, v8, v9

    .line 980
    .local v0, baseline:F
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$500(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 981
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 982
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    div-int/lit8 v9, v7, 0x2

    sub-int v9, v1, v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 983
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    add-int v9, v1, v7

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 985
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v8, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$300(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 986
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v6, v8, v11, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 988
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 989
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 991
    .end local v0           #baseline:F
    .end local v1           #diff:I
    .end local v2           #height:I
    .end local v3           #lArrow:Landroid/graphics/drawable/Drawable;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #rArrow:Landroid/graphics/drawable/Drawable;
    .end local v7           #width:I
    :cond_1
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 992
    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 993
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 995
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 996
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1020
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1000
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1006
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1011
    return-void
.end method
