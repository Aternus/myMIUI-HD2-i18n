.class public Lcom/android/settings/cit/CitProximitySensorCheckActivity;
.super Lcom/android/settings/cit/CitSensorCheckBaseActivity;
.source "CitProximitySensorCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings/cit/CitSensorCheckBaseActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const v0, 0x7f090510

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/settings/cit/CitProximitySensorCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSensorType()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x8

    return v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const v0, 0x7f09051f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method

.method protected onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 39
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 40
    .local v0, distance:F
    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
