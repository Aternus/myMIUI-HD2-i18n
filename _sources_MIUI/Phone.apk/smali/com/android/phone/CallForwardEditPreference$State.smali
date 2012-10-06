.class final enum Lcom/android/phone/CallForwardEditPreference$State;
.super Ljava/lang/Enum;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CallForwardEditPreference$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CallForwardEditPreference$State;

.field public static final enum Getting:Lcom/android/phone/CallForwardEditPreference$State;

.field public static final enum Idle:Lcom/android/phone/CallForwardEditPreference$State;

.field public static final enum Setting:Lcom/android/phone/CallForwardEditPreference$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/android/phone/CallForwardEditPreference$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallForwardEditPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallForwardEditPreference$State;->Idle:Lcom/android/phone/CallForwardEditPreference$State;

    .line 34
    new-instance v0, Lcom/android/phone/CallForwardEditPreference$State;

    const-string v1, "Getting"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallForwardEditPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallForwardEditPreference$State;->Getting:Lcom/android/phone/CallForwardEditPreference$State;

    .line 35
    new-instance v0, Lcom/android/phone/CallForwardEditPreference$State;

    const-string v1, "Setting"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallForwardEditPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallForwardEditPreference$State;->Setting:Lcom/android/phone/CallForwardEditPreference$State;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CallForwardEditPreference$State;

    sget-object v1, Lcom/android/phone/CallForwardEditPreference$State;->Idle:Lcom/android/phone/CallForwardEditPreference$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CallForwardEditPreference$State;->Getting:Lcom/android/phone/CallForwardEditPreference$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CallForwardEditPreference$State;->Setting:Lcom/android/phone/CallForwardEditPreference$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CallForwardEditPreference$State;->$VALUES:[Lcom/android/phone/CallForwardEditPreference$State;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CallForwardEditPreference$State;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/android/phone/CallForwardEditPreference$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/CallForwardEditPreference$State;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/CallForwardEditPreference$State;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/phone/CallForwardEditPreference$State;->$VALUES:[Lcom/android/phone/CallForwardEditPreference$State;

    invoke-virtual {v0}, [Lcom/android/phone/CallForwardEditPreference$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CallForwardEditPreference$State;

    return-object v0
.end method
