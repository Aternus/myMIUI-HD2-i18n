.class public final enum Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;
.super Ljava/lang/Enum;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VolumeButtonSettingOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

.field public static final enum VOLUME_BUTTON_DEFAULT:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

.field public static final enum VOLUME_BUTTON_SCROLL_PAGE:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

.field public static final enum VOLUME_BUTTON_SWITCH_TAB:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    const-string v1, "VOLUME_BUTTON_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_DEFAULT:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    .line 233
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    const-string v1, "VOLUME_BUTTON_SCROLL_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SCROLL_PAGE:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    .line 234
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    const-string v1, "VOLUME_BUTTON_SWITCH_TAB"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SWITCH_TAB:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    .line 231
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_DEFAULT:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SCROLL_PAGE:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SWITCH_TAB:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->$VALUES:[Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

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
    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;
    .locals 1
    .parameter "name"

    .prologue
    .line 231
    const-class v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->$VALUES:[Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    invoke-virtual {v0}, [Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    return-object v0
.end method
