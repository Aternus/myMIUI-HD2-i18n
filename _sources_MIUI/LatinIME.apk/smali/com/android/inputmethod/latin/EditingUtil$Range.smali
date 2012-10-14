.class public Lcom/android/inputmethod/latin/EditingUtil$Range;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/EditingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public charsAfter:I

.field public charsBefore:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "charsBefore"
    .parameter "charsAfter"
    .parameter "word"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 130
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsBefore:I

    .line 131
    iput p2, p0, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsAfter:I

    .line 132
    iput-object p3, p0, Lcom/android/inputmethod/latin/EditingUtil$Range;->word:Ljava/lang/String;

    .line 133
    return-void
.end method
