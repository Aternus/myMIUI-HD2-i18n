.class public final enum Lcom/android/phone/InCallControlState$VoiceDevices;
.super Ljava/lang/Enum;
.source "InCallControlState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallControlState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoiceDevices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallControlState$VoiceDevices;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallControlState$VoiceDevices;

.field public static final enum Bluetooth:Lcom/android/phone/InCallControlState$VoiceDevices;

.field public static final enum HandsetOrHeadset:Lcom/android/phone/InCallControlState$VoiceDevices;

.field public static final enum Invalid:Lcom/android/phone/InCallControlState$VoiceDevices;

.field public static final enum Speaker:Lcom/android/phone/InCallControlState$VoiceDevices;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/android/phone/InCallControlState$VoiceDevices;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallControlState$VoiceDevices;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallControlState$VoiceDevices;->Invalid:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 51
    new-instance v0, Lcom/android/phone/InCallControlState$VoiceDevices;

    const-string v1, "Bluetooth"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallControlState$VoiceDevices;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallControlState$VoiceDevices;->Bluetooth:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 52
    new-instance v0, Lcom/android/phone/InCallControlState$VoiceDevices;

    const-string v1, "HandsetOrHeadset"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallControlState$VoiceDevices;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallControlState$VoiceDevices;->HandsetOrHeadset:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 53
    new-instance v0, Lcom/android/phone/InCallControlState$VoiceDevices;

    const-string v1, "Speaker"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InCallControlState$VoiceDevices;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallControlState$VoiceDevices;->Speaker:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/InCallControlState$VoiceDevices;

    sget-object v1, Lcom/android/phone/InCallControlState$VoiceDevices;->Invalid:Lcom/android/phone/InCallControlState$VoiceDevices;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallControlState$VoiceDevices;->Bluetooth:Lcom/android/phone/InCallControlState$VoiceDevices;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallControlState$VoiceDevices;->HandsetOrHeadset:Lcom/android/phone/InCallControlState$VoiceDevices;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InCallControlState$VoiceDevices;->Speaker:Lcom/android/phone/InCallControlState$VoiceDevices;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/InCallControlState$VoiceDevices;->$VALUES:[Lcom/android/phone/InCallControlState$VoiceDevices;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallControlState$VoiceDevices;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/android/phone/InCallControlState$VoiceDevices;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/InCallControlState$VoiceDevices;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/InCallControlState$VoiceDevices;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/phone/InCallControlState$VoiceDevices;->$VALUES:[Lcom/android/phone/InCallControlState$VoiceDevices;

    invoke-virtual {v0}, [Lcom/android/phone/InCallControlState$VoiceDevices;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallControlState$VoiceDevices;

    return-object v0
.end method
