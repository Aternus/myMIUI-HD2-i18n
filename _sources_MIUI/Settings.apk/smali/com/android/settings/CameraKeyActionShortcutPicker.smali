.class public Lcom/android/settings/CameraKeyActionShortcutPicker;
.super Landroid/preference/PreferenceActivity;
.source "CameraKeyActionShortcutPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeyActionShortcutPicker;->addPreferencesFromResource(I)V

    .line 18
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 26
    .local v0, id:I
    invoke-virtual {p0}, Lcom/android/settings/CameraKeyActionShortcutPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 27
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "camera_key_preferred_action_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 30
    const-string v3, "camera_key_preferred_action_shortcut_id"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/CameraKeyActionShortcutPicker;->finish()V

    .line 33
    return v4
.end method
