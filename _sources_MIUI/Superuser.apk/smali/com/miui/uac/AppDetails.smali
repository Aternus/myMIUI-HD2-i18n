.class public Lcom/miui/uac/AppDetails;
.super Ljava/lang/Object;
.source "AppDetails.java"


# instance fields
.field private mAllow:I

.field private mDateAccess:J

.field private mUid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method constructor <init>(IIJ)V
    .locals 0
    .parameter "uid"
    .parameter "allow"
    .parameter "dateAccess"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/miui/uac/AppDetails;->mUid:I

    .line 32
    iput p2, p0, Lcom/miui/uac/AppDetails;->mAllow:I

    .line 33
    iput-wide p3, p0, Lcom/miui/uac/AppDetails;->mDateAccess:J

    .line 34
    return-void
.end method


# virtual methods
.method public getAllow()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/miui/uac/AppDetails;->mAllow:I

    return v0
.end method

.method public getPermissionCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/uac/AppDetails;->mAllow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ALLOW"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DENY"

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/miui/uac/AppDetails;->mUid:I

    return v0
.end method

.method public setAllow(I)V
    .locals 3
    .parameter "allow"

    .prologue
    .line 97
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 98
    :cond_0
    iput p1, p0, Lcom/miui/uac/AppDetails;->mAllow:I

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "Su.AppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppDetails.setAllow(int): accessType should be 1, 2, or 3. allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
