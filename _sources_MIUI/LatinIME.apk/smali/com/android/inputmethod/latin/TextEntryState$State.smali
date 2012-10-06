.class public final enum Lcom/android/inputmethod/latin/TextEntryState$State;
.super Ljava/lang/Enum;
.source "TextEntryState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/TextEntryState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/inputmethod/latin/TextEntryState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum CORRECTING:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum PICKED_CORRECTION:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum PICKED_SUGGESTION:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum PUNCTUATION_AFTER_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum SPACE_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum SPACE_AFTER_PICKED:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum START:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

.field public static final enum UNKNOWN:Lcom/android/inputmethod/latin/TextEntryState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->UNKNOWN:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 54
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 55
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "IN_WORD"

    invoke-direct {v0, v1, v5}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 56
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "ACCEPTED_DEFAULT"

    invoke-direct {v0, v1, v6}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 57
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "PICKED_SUGGESTION"

    invoke-direct {v0, v1, v7}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_SUGGESTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 58
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "PUNCTUATION_AFTER_WORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 59
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "PUNCTUATION_AFTER_ACCEPTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 60
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "SPACE_AFTER_ACCEPTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 61
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "SPACE_AFTER_PICKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_PICKED:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 62
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "UNDO_COMMIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 63
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "CORRECTING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->CORRECTING:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 64
    new-instance v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    const-string v1, "PICKED_CORRECTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_CORRECTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    .line 52
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/inputmethod/latin/TextEntryState$State;

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->UNKNOWN:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_SUGGESTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_PICKED:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState$State;->UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState$State;->CORRECTING:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_CORRECTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->$VALUES:[Lcom/android/inputmethod/latin/TextEntryState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/inputmethod/latin/TextEntryState$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/latin/TextEntryState$State;

    return-object p0
.end method

.method public static values()[Lcom/android/inputmethod/latin/TextEntryState$State;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState$State;->$VALUES:[Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v0}, [Lcom/android/inputmethod/latin/TextEntryState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/latin/TextEntryState$State;

    return-object v0
.end method
