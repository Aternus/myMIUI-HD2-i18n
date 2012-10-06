.class public Lcom/android/settings/DefaultApplicationSettings;
.super Landroid/preference/PreferenceActivity;
.source "DefaultApplicationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultApplicationSettings;->addPreferencesFromResource(I)V

    .line 20
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 14
    return-void
.end method
