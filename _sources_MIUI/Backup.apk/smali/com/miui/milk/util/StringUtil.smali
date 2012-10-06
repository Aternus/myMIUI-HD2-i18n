.class public Lcom/miui/milk/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFieldEmpty([Ljava/lang/String;)Z
    .locals 4
    .parameter "allFields"

    .prologue
    .line 24
    const/4 v0, 0x1

    .line 26
    .local v0, empty:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 27
    aget-object v1, p0, v2

    .line 28
    .local v1, field:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 29
    const/4 v0, 0x0

    .line 33
    .end local v1           #field:Ljava/lang/String;
    :cond_0
    return v0

    .line 26
    .restart local v1       #field:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x1

    .line 14
    if-nez p0, :cond_0

    move v0, v2

    .line 20
    :goto_0
    return v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
