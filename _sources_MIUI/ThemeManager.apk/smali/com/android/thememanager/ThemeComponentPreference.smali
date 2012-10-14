.class public Lcom/android/thememanager/ThemeComponentPreference;
.super Landroid/preference/Preference;
.source "ThemeComponentPreference.java"


# instance fields
.field private mComponentFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentPreference;->setPreviewEnabled(Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public notifyDataChanged()V
    .locals 5

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/thememanager/ThemeComponentPreference;->mComponentFlag:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, title:Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/thememanager/ThemeComponentPreference;->mComponentFlag:J

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/thememanager/ThemeComponentPreference;->mComponentFlag:J

    invoke-static {v1, v2, v3}, Lcom/android/thememanager/ThemeHelper;->wallpaperPrefOlderThanSystem(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentPreference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public setComponentFlag(J)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/android/thememanager/ThemeComponentPreference;->mComponentFlag:J

    .line 17
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentPreference;->mComponentFlag:J

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentPreference;->setTitle(I)V

    .line 18
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentPreference;->mComponentFlag:J

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getIconIDByFlag(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentPreference;->setImageResource(I)V

    .line 19
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentPreference;->notifyDataChanged()V

    .line 20
    return-void
.end method
