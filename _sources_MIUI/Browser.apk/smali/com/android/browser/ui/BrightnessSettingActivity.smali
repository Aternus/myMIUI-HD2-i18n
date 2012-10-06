.class public Lcom/android/browser/ui/BrightnessSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "BrightnessSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static progress:I


# instance fields
.field private curBrightness:F

.field private curNightMode:Z

.field private mAutoBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/browser/ui/SeekBarPreference;

.field private mNightMode:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x32

    sput v0, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrightnessSettingActivity;->addPreferencesFromResource(I)V

    .line 31
    const-string v0, "night_mode"

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrightnessSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mNightMode:Landroid/preference/CheckBoxPreference;

    .line 32
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mNightMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 34
    const-string v0, "auto_brightness"

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrightnessSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mAutoBrightness:Landroid/preference/CheckBoxPreference;

    .line 35
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mAutoBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 37
    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrightnessSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/SeekBarPreference;

    iput-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    .line 38
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/SeekBarPreference;->setMax(I)V

    .line 41
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/SeekBarPreference;->setEnabled(Z)V

    .line 42
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x42c8

    const/high16 v3, 0x40a0

    const v2, 0x3f733333

    .line 68
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mNightMode:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 69
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BrowserSettings;->setIsInNightMode(Z)V

    .line 83
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/browser/util/SystemSettingsUtil;->applyDayOrNightModeSetting(Landroid/app/Activity;)V

    .line 85
    return v5

    .line 70
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mAutoBrightness:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/SeekBarPreference;->setEnabled(Z)V

    .line 73
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BrowserSettings;->setScreenBrightness(F)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    invoke-virtual {v0, v5}, Lcom/android/browser/ui/SeekBarPreference;->setEnabled(Z)V

    .line 76
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    sget v1, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BrowserSettings;->setScreenBrightness(F)V

    goto :goto_0

    .line 78
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    if-ne p1, v0, :cond_0

    .line 79
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    .line 80
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    sget v1, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BrowserSettings;->setScreenBrightness(F)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 48
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getIsInNightMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->curNightMode:Z

    .line 49
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mNightMode:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->curNightMode:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 51
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getScreenBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->curBrightness:F

    .line 52
    iget v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->curBrightness:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mAutoBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    sget v1, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/SeekBarPreference;->setProgress(I)V

    .line 55
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/browser/ui/SeekBarPreference;->setEnabled(Z)V

    .line 64
    :goto_0
    invoke-static {p0}, Lcom/android/browser/util/SystemSettingsUtil;->applyDayOrNightModeSetting(Landroid/app/Activity;)V

    .line 65
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mAutoBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/SeekBarPreference;->setEnabled(Z)V

    .line 59
    iget v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->curBrightness:F

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a0

    sub-float/2addr v0, v1

    const v1, 0x3f733333

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    .line 60
    sget v0, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    if-gez v0, :cond_1

    sput v2, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/BrightnessSettingActivity;->mBrightness:Lcom/android/browser/ui/SeekBarPreference;

    sget v1, Lcom/android/browser/ui/BrightnessSettingActivity;->progress:I

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/SeekBarPreference;->setProgress(I)V

    goto :goto_0
.end method
