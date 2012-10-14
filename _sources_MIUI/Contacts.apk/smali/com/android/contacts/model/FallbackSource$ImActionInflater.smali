.class public Lcom/android/contacts/model/FallbackSource$ImActionInflater;
.super Lcom/android/contacts/model/FallbackSource$CommonInflater;
.source "FallbackSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0b00f0

    .line 725
    if-nez p1, :cond_0

    move v0, v1

    .line 736
    :goto_0
    return v0

    .line 726
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 736
    goto :goto_0

    .line 727
    :pswitch_0
    const v0, 0x7f0b00e8

    goto :goto_0

    .line 728
    :pswitch_1
    const v0, 0x7f0b00e9

    goto :goto_0

    .line 729
    :pswitch_2
    const v0, 0x7f0b00ea

    goto :goto_0

    .line 730
    :pswitch_3
    const v0, 0x7f0b00eb

    goto :goto_0

    .line 731
    :pswitch_4
    const v0, 0x7f0b00ec

    goto :goto_0

    .line 732
    :pswitch_5
    const v0, 0x7f0b00ed

    goto :goto_0

    .line 733
    :pswitch_6
    const v0, 0x7f0b00ee

    goto :goto_0

    .line 734
    :pswitch_7
    const v0, 0x7f0b00ef

    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 735
    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
