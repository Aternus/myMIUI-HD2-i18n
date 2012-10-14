.class final enum Lcom/android/phone/InCallScreen$ActivityAfterCallSession;
.super Ljava/lang/Enum;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActivityAfterCallSession"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen$ActivityAfterCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

.field public static final enum CALL_LOG:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

.field public static final enum NOTHING:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    new-instance v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    const-string v1, "CALL_LOG"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->CALL_LOG:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    .line 347
    new-instance v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->NOTHING:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    .line 345
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    sget-object v1, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->CALL_LOG:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->NOTHING:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->$VALUES:[Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

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
    .line 345
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen$ActivityAfterCallSession;
    .locals 1
    .parameter

    .prologue
    .line 345
    const-class v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/InCallScreen$ActivityAfterCallSession;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->$VALUES:[Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    return-object v0
.end method
