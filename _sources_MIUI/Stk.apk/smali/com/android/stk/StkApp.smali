.class abstract Lcom/android/stk/StkApp;
.super Landroid/app/Application;
.source "StkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkApp$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 60
    return-void
.end method

.method public static calculateDurationInMilis(Lcom/android/internal/telephony/gsm/stk/Duration;)I
    .locals 3
    .parameter "duration"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, timeout:I
    if-eqz p0, :cond_0

    .line 50
    sget-object v1, Lcom/android/stk/StkApp$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$Duration$TimeUnit:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    const/16 v0, 0x3e8

    .line 62
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    mul-int/2addr v0, v1

    .line 64
    :cond_0
    return v0

    .line 52
    :pswitch_0
    const v0, 0xea60

    .line 53
    goto :goto_0

    .line 55
    :pswitch_1
    const/16 v0, 0x2710

    .line 56
    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
