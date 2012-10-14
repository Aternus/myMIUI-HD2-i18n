.class Lcom/android/inputmethod/latin/LatinIME$VoiceResults;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceResults"
.end annotation


# instance fields
.field alternatives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/LatinIME$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    return-void
.end method
