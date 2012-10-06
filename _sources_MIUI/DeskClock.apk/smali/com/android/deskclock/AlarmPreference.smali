.class public Lcom/android/deskclock/AlarmPreference;
.super Landroid/preference/RingtonePreference;
.source "AlarmPreference.java"


# instance fields
.field private mAlert:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getAlert()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    return-object v0
.end method

.method protected needValuePreview()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 0
    .parameter "ringtoneUri"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 40
    return-void
.end method

.method public setAlert(Landroid/net/Uri;)V
    .locals 2
    .parameter "alert"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    .line 53
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 55
    .local v0, r:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    .end local v0           #r:Landroid/media/Ringtone;
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmPreference;->setSummary(I)V

    goto :goto_0
.end method
