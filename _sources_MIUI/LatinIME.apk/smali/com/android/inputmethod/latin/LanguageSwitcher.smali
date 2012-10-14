.class public Lcom/android/inputmethod/latin/LanguageSwitcher;
.super Ljava/lang/Object;
.source "LanguageSwitcher.java"


# instance fields
.field private mCurrentIndex:I

.field private mDefaultInputLanguage:Ljava/lang/String;

.field private mDefaultInputLocale:Ljava/util/Locale;

.field private mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private mLocales:[Ljava/util/Locale;

.field private mSelectedLanguageArray:[Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 42
    iput-object p1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 43
    new-array v0, v0, [Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    .line 44
    return-void
.end method

.method private constructLocales()V
    .locals 7

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 102
    .local v1, lang:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    const/4 v5, 0x3

    const/4 v6, 0x5

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 105
    .end local v1           #lang:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadDefaults()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 93
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 96
    return-void

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getEnabledLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLocaleCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public getLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method public getNextInputLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrevInputLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public loadLocales(Landroid/content/SharedPreferences;)Z
    .locals 7
    .parameter "sp"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    const-string v3, "selected_languages"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, selectedLanguages:Ljava/lang/String;
    const-string v3, "input_language"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, currentLanguage:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadDefaults()V

    .line 64
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v3, v3

    if-nez v3, :cond_1

    move v3, v4

    .line 88
    :goto_0
    return v3

    .line 67
    :cond_1
    new-array v3, v4, [Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    move v3, v5

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->constructLocales()V

    .line 76
    iput v4, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 77
    if-eqz v0, :cond_4

    .line 79
    iput v4, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 81
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 82
    iput v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .end local v1           #i:I
    :cond_4
    move v3, v5

    .line 88
    goto :goto_0

    .line 80
    .restart local v1       #i:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public next()V
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 179
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 180
    :cond_0
    return-void
.end method

.method public persist()V
    .locals 4

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 189
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "input_language"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 192
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 184
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 185
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 175
    return-void
.end method

.method public setSystemLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 152
    return-void
.end method
