.class public Lcom/android/inputmethod/latin/LatinImeLogger;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    return-void
.end method

.method public static logOnAutoSuggestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "before"
    .parameter "after"

    .prologue
    .line 45
    return-void
.end method

.method public static logOnAutoSuggestionCanceled()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public static logOnDelete()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public static logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "metaData"
    .parameter "e"

    .prologue
    .line 57
    return-void
.end method

.method public static logOnInputChar()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public static logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .parameter "before"
    .parameter "after"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public static logOnWarning(Ljava/lang/String;)V
    .locals 0
    .parameter "warning"

    .prologue
    .line 60
    return-void
.end method

.method public static onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V
    .locals 0
    .parameter "word"
    .parameter "typeId"
    .parameter "dataType"

    .prologue
    .line 66
    return-void
.end method

.method public static onDestroy()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public static onSetKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 0
    .parameter "kb"

    .prologue
    .line 69
    return-void
.end method

.method public static onStartSuggestion(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "previousWords"

    .prologue
    .line 63
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 29
    return-void
.end method
