.class public Lcom/android/contacts/model/FallbackSource$PhoneActionAltInflater;
.super Lcom/android/contacts/model/FallbackSource$CommonInflater;
.source "FallbackSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0b00d0

    .line 651
    if-nez p1, :cond_0

    move v0, v1

    .line 673
    :goto_0
    return v0

    .line 652
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 673
    const v0, 0x7f0b00c9

    goto :goto_0

    .line 653
    :pswitch_0
    const v0, 0x7f0b00ca

    goto :goto_0

    .line 654
    :pswitch_1
    const v0, 0x7f0b00cb

    goto :goto_0

    .line 655
    :pswitch_2
    const v0, 0x7f0b00cc

    goto :goto_0

    .line 656
    :pswitch_3
    const v0, 0x7f0b00cd

    goto :goto_0

    .line 657
    :pswitch_4
    const v0, 0x7f0b00ce

    goto :goto_0

    .line 658
    :pswitch_5
    const v0, 0x7f0b00cf

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 659
    goto :goto_0

    .line 660
    :pswitch_7
    const v0, 0x7f0b00d1

    goto :goto_0

    .line 661
    :pswitch_8
    const v0, 0x7f0b00d2

    goto :goto_0

    .line 662
    :pswitch_9
    const v0, 0x7f0b00d3

    goto :goto_0

    .line 663
    :pswitch_a
    const v0, 0x7f0b00d4

    goto :goto_0

    .line 664
    :pswitch_b
    const v0, 0x7f0b00d5

    goto :goto_0

    .line 665
    :pswitch_c
    const v0, 0x7f0b00d6

    goto :goto_0

    .line 666
    :pswitch_d
    const v0, 0x7f0b00d7

    goto :goto_0

    .line 667
    :pswitch_e
    const v0, 0x7f0b00d8

    goto :goto_0

    .line 668
    :pswitch_f
    const v0, 0x7f0b00d9

    goto :goto_0

    .line 669
    :pswitch_10
    const v0, 0x7f0b00da

    goto :goto_0

    .line 670
    :pswitch_11
    const v0, 0x7f0b00db

    goto :goto_0

    .line 671
    :pswitch_12
    const v0, 0x7f0b00dc

    goto :goto_0

    .line 672
    :pswitch_13
    const v0, 0x7f0b00dd

    goto :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 646
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
