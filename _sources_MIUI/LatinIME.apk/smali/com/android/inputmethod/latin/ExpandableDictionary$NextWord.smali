.class Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NextWord"
.end annotation


# instance fields
.field frequency:I

.field nextWord:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

.field word:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V
    .locals 0
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->word:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 89
    iput p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->frequency:I

    .line 90
    return-void
.end method
