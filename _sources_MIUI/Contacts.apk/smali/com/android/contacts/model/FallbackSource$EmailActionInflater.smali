.class public Lcom/android/contacts/model/FallbackSource$EmailActionInflater;
.super Lcom/android/contacts/model/FallbackSource$CommonInflater;
.source "FallbackSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 681
    if-nez p1, :cond_0

    const v0, 0x7f0b00e3

    .line 687
    :goto_0
    return v0

    .line 682
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 687
    const v0, 0x7f0b00e2

    goto :goto_0

    .line 683
    :pswitch_0
    const v0, 0x7f0b00de

    goto :goto_0

    .line 684
    :pswitch_1
    const v0, 0x7f0b00e0

    goto :goto_0

    .line 685
    :pswitch_2
    const v0, 0x7f0b00e1

    goto :goto_0

    .line 686
    :pswitch_3
    const v0, 0x7f0b00df

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
