.class Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardId"
.end annotation


# instance fields
.field public final mEnableShiftLock:Z

.field public final mHasVoice:Z

.field private final mHashCode:I

.field public final mKeyboardMode:I

.field public final mXml:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 3
    .parameter "xml"
    .parameter "mode"
    .parameter "enableShiftLock"
    .parameter "hasVoice"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    .line 215
    iput p2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    .line 216
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    .line 217
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mHashCode:I

    .line 222
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter "xml"
    .parameter "hasVoice"

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z

    move-result v0

    return v0
.end method

.method private equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 234
    iget v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 230
    instance-of v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mHashCode:I

    return v0
.end method
