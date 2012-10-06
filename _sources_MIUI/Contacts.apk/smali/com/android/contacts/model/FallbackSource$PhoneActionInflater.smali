.class public Lcom/android/contacts/model/FallbackSource$PhoneActionInflater;
.super Lcom/android/contacts/model/FallbackSource$CommonInflater;
.source "FallbackSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0b00bb

    .line 616
    if-nez p1, :cond_0

    move v0, v1

    .line 638
    :goto_0
    return v0

    .line 617
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 638
    const v0, 0x7f0b00b4

    goto :goto_0

    .line 618
    :pswitch_0
    const v0, 0x7f0b00b5

    goto :goto_0

    .line 619
    :pswitch_1
    const v0, 0x7f0b00b6

    goto :goto_0

    .line 620
    :pswitch_2
    const v0, 0x7f0b00b7

    goto :goto_0

    .line 621
    :pswitch_3
    const v0, 0x7f0b00b8

    goto :goto_0

    .line 622
    :pswitch_4
    const v0, 0x7f0b00b9

    goto :goto_0

    .line 623
    :pswitch_5
    const v0, 0x7f0b00ba

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 624
    goto :goto_0

    .line 625
    :pswitch_7
    const v0, 0x7f0b00bc

    goto :goto_0

    .line 626
    :pswitch_8
    const v0, 0x7f0b00bd

    goto :goto_0

    .line 627
    :pswitch_9
    const v0, 0x7f0b00be

    goto :goto_0

    .line 628
    :pswitch_a
    const v0, 0x7f0b00bf

    goto :goto_0

    .line 629
    :pswitch_b
    const v0, 0x7f0b00c0

    goto :goto_0

    .line 630
    :pswitch_c
    const v0, 0x7f0b00c1

    goto :goto_0

    .line 631
    :pswitch_d
    const v0, 0x7f0b00c2

    goto :goto_0

    .line 632
    :pswitch_e
    const v0, 0x7f0b00c3

    goto :goto_0

    .line 633
    :pswitch_f
    const v0, 0x7f0b00c4

    goto :goto_0

    .line 634
    :pswitch_10
    const v0, 0x7f0b00c5

    goto :goto_0

    .line 635
    :pswitch_11
    const v0, 0x7f0b00c6

    goto :goto_0

    .line 636
    :pswitch_12
    const v0, 0x7f0b00c7

    goto :goto_0

    .line 637
    :pswitch_13
    const v0, 0x7f0b00c8

    goto :goto_0

    .line 617
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
    .line 611
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
