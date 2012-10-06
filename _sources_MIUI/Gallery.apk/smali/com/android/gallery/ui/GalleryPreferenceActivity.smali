.class public Lcom/android/gallery/ui/GalleryPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "GalleryPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mSlideShowInterval:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateSlideShowIntervalSummary(Ljava/lang/CharSequence;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 78
    const/4 v1, 0x1

    .line 80
    .local v1, result:Z
    const/4 v0, 0x0

    .line 82
    .local v0, interval:I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 86
    :goto_0
    if-gtz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 88
    const/4 v0, 0x2

    .line 89
    iget-object v2, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 90
    const v2, 0x7f090011

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    const-string v3, "%d%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const v5, 0x10402ee

    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/GalleryPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    return v1

    .line 83
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/GalleryPreferenceActivity;->addPreferencesFromResource(I)V

    .line 32
    const-string v0, "slideshow_interval"

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/GalleryPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    .line 33
    iget-object v0, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v1, v2, v2}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/GalleryPreferenceActivity;->updateSlideShowIntervalSummary(Ljava/lang/CharSequence;)Z

    .line 36
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 72
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/gallery/ui/GalleryPreferenceActivity;->updateSlideShowIntervalSummary(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    .restart local p2
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 40
    const-string v0, "clear_thumbnail_cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/gallery/ui/GalleryPreferenceActivity$1;

    invoke-direct {v2, p0}, Lcom/android/gallery/ui/GalleryPreferenceActivity$1;-><init>(Lcom/android/gallery/ui/GalleryPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
