.class public final enum Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;
.super Ljava/lang/Enum;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialModeOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

.field public static final enum ENTER_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

.field public static final enum ENTER_MANUALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

.field public static final enum OFF:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    const-string v1, "ENTER_AUTOMATICALLY"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 250
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    const-string v1, "ENTER_MANUALLY"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_MANUALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 251
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->OFF:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 248
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_MANUALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->OFF:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->$VALUES:[Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

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
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;
    .locals 1
    .parameter "name"

    .prologue
    .line 248
    const-class v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->$VALUES:[Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    invoke-virtual {v0}, [Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    return-object v0
.end method
