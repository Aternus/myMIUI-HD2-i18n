.class public final enum Lcom/android/phone/EditPinDialog$Mode;
.super Ljava/lang/Enum;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/EditPinDialog$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/EditPinDialog$Mode;

.field public static final enum FDN:Lcom/android/phone/EditPinDialog$Mode;

.field public static final enum ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

.field public static final enum PIN1:Lcom/android/phone/EditPinDialog$Mode;

.field public static final enum PIN2:Lcom/android/phone/EditPinDialog$Mode;

.field public static final enum PUK1:Lcom/android/phone/EditPinDialog$Mode;

.field public static final enum PUK2:Lcom/android/phone/EditPinDialog$Mode;

.field public static final enum Unknow:Lcom/android/phone/EditPinDialog$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/android/phone/EditPinDialog$Mode;

    const-string v1, "Unknow"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/EditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->Unknow:Lcom/android/phone/EditPinDialog$Mode;

    .line 52
    new-instance v0, Lcom/android/phone/EditPinDialog$Mode;

    const-string v1, "ICC_LOCK"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/EditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    .line 53
    new-instance v0, Lcom/android/phone/EditPinDialog$Mode;

    const-string v1, "FDN"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/EditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    .line 54
    new-instance v0, Lcom/android/phone/EditPinDialog$Mode;

    const-string v1, "PIN1"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/EditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->PIN1:Lcom/android/phone/EditPinDialog$Mode;

    .line 55
    new-instance v0, Lcom/android/phone/EditPinDialog$Mode;

    const-string v1, "PIN2"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/EditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->PIN2:Lcom/android/phone/EditPinDialog$Mode;

    .line 56
    new-instance v0, Lcom/android/phone/EditPinDialog$Mode;

    const-string v1, "PUK1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->PUK1:Lcom/android/phone/EditPinDialog$Mode;

    .line 57
    new-instance v0, Lcom/android/phone/EditPinDialog$Mode;

    const-string v1, "PUK2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->PUK2:Lcom/android/phone/EditPinDialog$Mode;

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/phone/EditPinDialog$Mode;

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->Unknow:Lcom/android/phone/EditPinDialog$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->PIN1:Lcom/android/phone/EditPinDialog$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->PIN2:Lcom/android/phone/EditPinDialog$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/EditPinDialog$Mode;->PUK1:Lcom/android/phone/EditPinDialog$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/EditPinDialog$Mode;->PUK2:Lcom/android/phone/EditPinDialog$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/EditPinDialog$Mode;->$VALUES:[Lcom/android/phone/EditPinDialog$Mode;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/EditPinDialog$Mode;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/android/phone/EditPinDialog$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/EditPinDialog$Mode;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/EditPinDialog$Mode;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/phone/EditPinDialog$Mode;->$VALUES:[Lcom/android/phone/EditPinDialog$Mode;

    invoke-virtual {v0}, [Lcom/android/phone/EditPinDialog$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/EditPinDialog$Mode;

    return-object v0
.end method
