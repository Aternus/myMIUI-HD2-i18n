.class public abstract Lcom/android/settings/cit/CitSensorCheckBaseActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitSensorCheckBaseActivity.java"


# instance fields
.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getSensorType()I
.end method

.method protected onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 20
    iget-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->getSensorType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensor:Landroid/hardware/Sensor;

    .line 21
    new-instance v0, Lcom/android/settings/cit/CitSensorCheckBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cit/CitSensorCheckBaseActivity$1;-><init>(Lcom/android/settings/cit/CitSensorCheckBaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 33
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onPause()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 65
    return-void
.end method

.method protected abstract onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method
