.class public final enum Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;
.super Ljava/lang/Enum;
.source "MiRenViewFlipperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenViewFlipperWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

.field public static final enum SWITCH_ANIMATION_LEFT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

.field public static final enum SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

.field public static final enum SWITCH_ANIMATION_RIGHT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    const-string v1, "SWITCH_ANIMATION_NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    .line 28
    new-instance v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    const-string v1, "SWITCH_ANIMATION_LEFT_IN"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_LEFT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    .line 29
    new-instance v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    const-string v1, "SWITCH_ANIMATION_RIGHT_IN"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_RIGHT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    sget-object v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_LEFT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_RIGHT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->$VALUES:[Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->$VALUES:[Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-virtual {v0}, [Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    return-object v0
.end method
