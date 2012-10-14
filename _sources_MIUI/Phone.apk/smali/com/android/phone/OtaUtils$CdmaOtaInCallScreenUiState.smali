.class public Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaOtaInCallScreenUiState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    }
.end annotation


# instance fields
.field public reportSkipPendingIntent:Landroid/app/PendingIntent;

.field public state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    sget-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v0, p0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 977
    return-void
.end method
