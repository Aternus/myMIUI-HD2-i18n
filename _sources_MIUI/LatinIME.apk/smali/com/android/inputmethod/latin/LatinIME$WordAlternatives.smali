.class public abstract Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WordAlternatives"
.end annotation


# instance fields
.field protected mChosenWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "chosenWord"

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    .line 275
    return-void
.end method


# virtual methods
.method public abstract getAlternatives()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public getChosenWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getOriginalWord()Ljava/lang/CharSequence;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
