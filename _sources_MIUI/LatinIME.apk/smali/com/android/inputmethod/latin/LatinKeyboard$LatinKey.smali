.class Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LatinKey"
.end annotation


# instance fields
.field private final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field private final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field private mShiftLockEnabled:Z

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 7
    .parameter
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    .line 840
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 841
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 827
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a3

    aput v1, v0, v6

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 832
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 842
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 844
    iput v6, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupResId:I

    .line 846
    :cond_0
    return-void

    .line 832
    nop

    :array_0
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->enableShiftLock()V

    return-void
.end method

.method private enableShiftLock()V
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 850
    return-void
.end method

.method private isFunctionalKey()Z
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->sticky:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->modifier:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 1

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isFunctionalKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 891
    :goto_0
    return-object v0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    goto :goto_0

    .line 891
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v0

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 874
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->isInside(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;II)Z

    move-result v0

    .line 875
    .local v0, result:Z
    return v0
.end method

.method isInsideSuper(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 879
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v0

    return v0
.end method

.method public onReleased(Z)V
    .locals 1
    .parameter "inside"

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 861
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public squaredDistanceFrom(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 897
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboard;->mVerticalGap:I
    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$200(Lcom/android/inputmethod/latin/LatinKeyboard;)I

    move-result v0

    .line 898
    .local v0, verticalGap:I
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p1

    .line 899
    .local v1, xDist:I
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->y:I

    iget v4, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->height:I

    add-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p2

    .line 900
    .local v2, yDist:I
    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    return v3
.end method
