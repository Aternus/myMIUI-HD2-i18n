.class Lcom/android/browser/ui/BrowserYesNoPreference;
.super Landroid/preference/DialogPreference;
.source "BrowserYesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;
    }
.end annotation


# instance fields
.field private mWasPositiveResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/browser/ui/BrowserYesNoPreference;->mWasPositiveResult:Z

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 123
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/BrowserYesNoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BrowserYesNoPreference;->setValue(Z)V

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p0, v4}, Lcom/android/browser/ui/BrowserYesNoPreference;->setEnabled(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    .local v1, context:Landroid/content/Context;
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_CACHE:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->clearDatabases(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->clearCache(Landroid/content/Context;)V

    .line 161
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 134
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_COOKIES:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->clearCookies(Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :cond_3
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_HISTORY:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->clearHistory(Landroid/content/Context;)V

    goto :goto_0

    .line 138
    :cond_4
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_FORM_DATA:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->clearFormData(Landroid/content/Context;)V

    goto :goto_0

    .line 140
    :cond_5
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_PASSWORDS:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->clearPasswords(Landroid/content/Context;)V

    goto :goto_0

    .line 142
    :cond_6
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXTRAS_RESET_DEFAULTS:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->resetDefaultPreferences(Landroid/content/Context;)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/BrowserYesNoPreference;->setEnabled(Z)V

    goto :goto_0

    .line 146
    :cond_7
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_GEOLOCATION_ACCESS:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->clearLocationAccess(Landroid/content/Context;)V

    goto :goto_0

    .line 149
    :cond_8
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ONE_CLICK_BACKUP:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 150
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v3, v2}, Lcom/android/browser/controller/BrowserSettings;->exportData(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 154
    :cond_9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 156
    :cond_a
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ONE_CLICK_IMPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/BrowserSettings$Keys;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v2, v1}, Lcom/android/browser/controller/BrowserSettings;->importData(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;

    move-object v1, v0

    .line 80
    .local v1, myState:Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;
    invoke-virtual {v1}, Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 81
    iget-boolean v2, v1, Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;->wasPositiveResult:Z

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/BrowserYesNoPreference;->setValue(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 61
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 68
    :goto_0
    return-object v2

    .line 66
    :cond_0
    new-instance v0, Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 67
    .local v0, myState:Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/browser/ui/BrowserYesNoPreference$SavedState;->wasPositiveResult:Z

    move-object v2, v0

    .line 68
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 49
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/ui/BrowserYesNoPreference;->mWasPositiveResult:Z

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrowserYesNoPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrowserYesNoPreference;->setValue(Z)V

    .line 51
    return-void

    .line 49
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/browser/ui/BrowserYesNoPreference;->mWasPositiveResult:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BrowserYesNoPreference;->persistBoolean(Z)Z

    .line 30
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrowserYesNoPreference;->notifyDependencyChange(Z)V

    .line 31
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/browser/ui/BrowserYesNoPreference;->mWasPositiveResult:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
