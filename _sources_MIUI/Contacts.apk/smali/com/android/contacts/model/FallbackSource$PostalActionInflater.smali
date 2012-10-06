.class public Lcom/android/contacts/model/FallbackSource$PostalActionInflater;
.super Lcom/android/contacts/model/FallbackSource$CommonInflater;
.source "FallbackSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0b00e6

    .line 702
    if-nez p1, :cond_0

    move v0, v1

    .line 707
    :goto_0
    return v0

    .line 703
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 707
    const v0, 0x7f0b00e7

    goto :goto_0

    .line 704
    :pswitch_0
    const v0, 0x7f0b00e4

    goto :goto_0

    .line 705
    :pswitch_1
    const v0, 0x7f0b00e5

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 706
    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
