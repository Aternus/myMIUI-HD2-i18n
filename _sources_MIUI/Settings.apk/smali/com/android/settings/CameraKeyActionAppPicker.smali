.class public Lcom/android/settings/CameraKeyActionAppPicker;
.super Landroid/preference/PreferenceActivity;
.source "CameraKeyActionAppPicker.java"


# instance fields
.field private mActivities:Landroid/preference/PreferenceGroup;

.field private mLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CameraKeyActionAppPicker;->mLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CameraKeyActionAppPicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/CameraKeyActionAppPicker;->mActivities:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/CameraKeyActionAppPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/settings/CameraKeyActionAppPicker;->mLoading:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeyActionAppPicker;->addPreferencesFromResource(I)V

    .line 33
    const-string v0, "activities"

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeyActionAppPicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/CameraKeyActionAppPicker;->mActivities:Landroid/preference/PreferenceGroup;

    .line 34
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/preference/Preference;->getValuePreview()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, componentName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/CameraKeyActionAppPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "camera_key_preferred_action_type"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    const-string v2, "camera_key_preferred_action_app_component"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CameraKeyActionAppPicker;->finish()V

    .line 96
    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 40
    iget-boolean v1, p0, Lcom/android/settings/CameraKeyActionAppPicker;->mLoading:Z

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CameraKeyActionAppPicker;->mLoading:Z

    .line 42
    new-instance v0, Lcom/android/settings/CameraKeyActionAppPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CameraKeyActionAppPicker$1;-><init>(Lcom/android/settings/CameraKeyActionAppPicker;)V

    .line 78
    .local v0, refreshThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    .end local v0           #refreshThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
