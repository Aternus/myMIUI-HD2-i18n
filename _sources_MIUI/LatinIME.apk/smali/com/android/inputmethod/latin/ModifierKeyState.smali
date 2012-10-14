.class Lcom/android/inputmethod/latin/ModifierKeyState;
.super Ljava/lang/Object;
.source "ModifierKeyState.java"


# static fields
.field private static final MOMENTARY:I = 0x2

.field private static final PRESSING:I = 0x1

.field private static final RELEASING:I


# instance fields
.field private mState:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/ModifierKeyState;->mState:I

    return-void
.end method


# virtual methods
.method public isMomentary()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/inputmethod/latin/ModifierKeyState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOtherKeyPressed()V
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/inputmethod/latin/ModifierKeyState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/ModifierKeyState;->mState:I

    .line 37
    :cond_0
    return-void
.end method

.method public onPress()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/ModifierKeyState;->mState:I

    .line 28
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/ModifierKeyState;->mState:I

    .line 32
    return-void
.end method
