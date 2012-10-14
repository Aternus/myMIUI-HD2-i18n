.class final enum Lcom/android/phone/CLIRListPreference$State;
.super Ljava/lang/Enum;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CLIRListPreference$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CLIRListPreference$State;

.field public static final enum Getting:Lcom/android/phone/CLIRListPreference$State;

.field public static final enum Idle:Lcom/android/phone/CLIRListPreference$State;

.field public static final enum Setting:Lcom/android/phone/CLIRListPreference$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/android/phone/CLIRListPreference$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CLIRListPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CLIRListPreference$State;->Idle:Lcom/android/phone/CLIRListPreference$State;

    .line 24
    new-instance v0, Lcom/android/phone/CLIRListPreference$State;

    const-string v1, "Getting"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CLIRListPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CLIRListPreference$State;->Getting:Lcom/android/phone/CLIRListPreference$State;

    .line 25
    new-instance v0, Lcom/android/phone/CLIRListPreference$State;

    const-string v1, "Setting"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CLIRListPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CLIRListPreference$State;->Setting:Lcom/android/phone/CLIRListPreference$State;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CLIRListPreference$State;

    sget-object v1, Lcom/android/phone/CLIRListPreference$State;->Idle:Lcom/android/phone/CLIRListPreference$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CLIRListPreference$State;->Getting:Lcom/android/phone/CLIRListPreference$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CLIRListPreference$State;->Setting:Lcom/android/phone/CLIRListPreference$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CLIRListPreference$State;->$VALUES:[Lcom/android/phone/CLIRListPreference$State;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CLIRListPreference$State;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/android/phone/CLIRListPreference$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/CLIRListPreference$State;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/CLIRListPreference$State;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/phone/CLIRListPreference$State;->$VALUES:[Lcom/android/phone/CLIRListPreference$State;

    invoke-virtual {v0}, [Lcom/android/phone/CLIRListPreference$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CLIRListPreference$State;

    return-object v0
.end method
