.class public Lcom/android/inputmethod/latin/TextEntryState;
.super Ljava/lang/Object;
.source "TextEntryState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/TextEntryState$1;,
        Lcom/android/inputmethod/latin/TextEntryState$State;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "TextEntryState"

.field private static sActualChars:I

.field private static sAutoSuggestCount:I

.field private static sAutoSuggestUndoneCount:I

.field private static sBackspaceCount:I

.field private static sKeyLocationFile:Ljava/io/FileOutputStream;

.field private static sManualSuggestCount:I

.field private static sSessionCount:I

.field private static sState:Lcom/android/inputmethod/latin/TextEntryState$State;

.field private static sTypedChars:I

.field private static sUserActionFile:Ljava/io/FileOutputStream;

.field private static sWordNotInDictionaryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/android/inputmethod/latin/TextEntryState;->LOGGING:Z

    .line 36
    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    .line 38
    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    .line 40
    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 42
    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    .line 44
    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    .line 46
    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sSessionCount:I

    .line 67
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->UNKNOWN:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    .line 124
    :cond_1
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    .line 125
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    .line 126
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoSuggestion(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    goto :goto_0
.end method

.method public static acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    .line 153
    sget v1, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    .line 154
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 155
    .local v0, oldState:Lcom/android/inputmethod/latin/TextEntryState$State;
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {p0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->CORRECTING:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_CORRECTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v0, v1, :cond_2

    .line 159
    :cond_1
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_CORRECTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 163
    :goto_0
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    .line 164
    return-void

    .line 161
    :cond_2
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_SUGGESTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_0
.end method

.method public static acceptedTyped(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "typedWord"

    .prologue
    .line 147
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    .line 148
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_SUGGESTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 149
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    .line 150
    return-void
.end method

.method public static backToAcceptedDefault(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "typedWord"

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$1;->$SwitchMap$com$android$inputmethod$latin$TextEntryState$State:[I

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_1
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    goto :goto_0

    .line 140
    :pswitch_0
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static backspace()V
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v0, v1, :cond_1

    .line 229
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 230
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 231
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoSuggestionCanceled()V

    .line 235
    :cond_0
    :goto_0
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    .line 236
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    .line 237
    return-void

    .line 232
    :cond_1
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_0
.end method

.method private static displayState()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public static endSession()V
    .locals 4

    .prologue
    .line 94
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MM:dd hh:mm:ss"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " manual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " typed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, out:Ljava/lang/String;
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 111
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 112
    const/4 v1, 0x0

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    .line 113
    const/4 v1, 0x0

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 114
    .end local v0           #out:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static getState()Lcom/android/inputmethod/latin/TextEntryState$State;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    return-object v0
.end method

.method public static isCorrecting()Z
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->CORRECTING:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_CORRECTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static keyPressedAt(Landroid/inputmethodservice/Keyboard$Key;II)V
    .locals 4
    .parameter "key"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 256
    sget-boolean v1, Lcom/android/inputmethod/latin/TextEntryState;->LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, out:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0           #out:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v0       #out:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static newSession(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 73
    sget v1, Lcom/android/inputmethod/latin/TextEntryState;->sSessionCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sSessionCount:I

    .line 74
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    .line 75
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    .line 76
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 77
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    .line 78
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    .line 79
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    .line 80
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    .line 81
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 83
    sget-boolean v1, Lcom/android/inputmethod/latin/TextEntryState;->LOGGING:Z

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    const-string v1, "key.txt"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    .line 86
    const-string v1, "action.txt"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "TextEntryState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open file for output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 241
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    .line 242
    return-void
.end method

.method public static selectedForCorrection()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->CORRECTING:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 168
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    .line 169
    return-void
.end method

.method public static typedCharacter(CZ)V
    .locals 3
    .parameter "c"
    .parameter "isSeparator"

    .prologue
    .line 172
    const/16 v1, 0x20

    if-ne p0, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 173
    .local v0, isSpace:Z
    :goto_0
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$1;->$SwitchMap$com$android$inputmethod$latin$TextEntryState$State:[I

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->displayState()V

    .line 225
    return-void

    .line 172
    .end local v0           #isSpace:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 175
    .restart local v0       #isSpace:Z
    :pswitch_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 176
    :cond_2
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 183
    :pswitch_1
    if-eqz v0, :cond_3

    .line 184
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 185
    :cond_3
    if-eqz p1, :cond_4

    .line 186
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 188
    :cond_4
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 193
    :pswitch_2
    if-eqz v0, :cond_5

    .line 194
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_PICKED:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 195
    :cond_5
    if-eqz p1, :cond_6

    .line 197
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 199
    :cond_6
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 207
    :pswitch_3
    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 208
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 210
    :cond_7
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 214
    :pswitch_4
    if-nez v0, :cond_8

    if-eqz p1, :cond_9

    .line 215
    :cond_8
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 217
    :cond_9
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 221
    :pswitch_5
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:Lcom/android/inputmethod/latin/TextEntryState$State;

    goto :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
