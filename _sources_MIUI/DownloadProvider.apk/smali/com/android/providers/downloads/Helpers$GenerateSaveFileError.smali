.class public Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
.super Ljava/lang/Exception;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/Helpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenerateSaveFileError"
.end annotation


# instance fields
.field mMessage:Ljava/lang/String;

.field mStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "message"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 123
    iput p1, p0, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;->mStatus:I

    .line 124
    iput-object p2, p0, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    .line 125
    return-void
.end method
