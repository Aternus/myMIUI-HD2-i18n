.class public final enum Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;
.super Ljava/lang/Enum;
.source "ReadingModePageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ReadingModePageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

.field public static final enum State_Canceled:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

.field public static final enum State_Executing:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

.field public static final enum State_Normal:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    const-string v1, "State_Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Normal:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    .line 38
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    const-string v1, "State_Executing"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Executing:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    .line 39
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    const-string v1, "State_Canceled"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    sget-object v1, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Normal:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Executing:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->$VALUES:[Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->$VALUES:[Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    invoke-virtual {v0}, [Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    return-object v0
.end method
