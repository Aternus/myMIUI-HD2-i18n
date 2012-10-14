.class public Lcom/android/inputmethod/latin/InputLanguageSelection;
.super Landroid/preference/PreferenceActivity;
.source "InputLanguageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;
    }
.end annotation


# static fields
.field private static final BLACKLIST_LANGUAGES:[Ljava/lang/String;


# instance fields
.field private mAvailableLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguages:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "zh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/InputLanguageSelection;->BLACKLIST_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 201
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 203
    :goto_1
    return v1

    .line 200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private get5Code(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

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

    return-object v1

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

.method private hasDictionary(Ljava/util/Locale;)Z
    .locals 8
    .parameter "locale"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 97
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 98
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 99
    .local v5, saveLocale:Ljava/util/Locale;
    const/4 v3, 0x0

    .line 100
    .local v3, haveDictionary:Z
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 101
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 103
    invoke-static {v4}, Lcom/android/inputmethod/latin/LatinIME;->getDictionary(Landroid/content/res/Resources;)[I

    move-result-object v2

    .line 104
    .local v2, dictionaries:[I
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    const/4 v6, 0x1

    invoke-direct {v0, p0, v2, v6}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;[II)V

    .line 108
    .local v0, bd:Lcom/android/inputmethod/latin/BinaryDictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSize()I

    move-result v6

    const v7, 0xc350

    if-le v6, v7, :cond_0

    .line 109
    const/4 v3, 0x1

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 112
    iput-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 113
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 114
    return v3
.end method

.method private isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z
    .locals 3
    .parameter "locale"
    .parameter "list"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, lang:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 90
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 92
    :goto_1
    return v2

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method getUniqueLocales()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, locales:[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 152
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v12, uniqueLocales:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;>;"
    array-length v9, v8

    .line 155
    .local v9, origSize:I
    new-array v10, v9, [Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    .line 156
    .local v10, preprocess:[Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;
    const/4 v2, 0x0

    .line 157
    .local v2, finalSize:I
    const/4 v4, 0x0

    .local v4, i:I
    move v3, v2

    .end local v2           #finalSize:I
    .local v3, finalSize:I
    :goto_0
    if-ge v4, v9, :cond_4

    .line 158
    aget-object v11, v8, v4

    .line 159
    .local v11, s:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 160
    .local v7, len:I
    const/4 v13, 0x5

    if-ne v7, v13, :cond_6

    .line 161
    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, language:Ljava/lang/String;
    const/4 v13, 0x3

    const/4 v14, 0x5

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, country:Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v5, l:Ljava/util/Locale;
    sget-object v13, Lcom/android/inputmethod/latin/InputLanguageSelection;->BLACKLIST_LANGUAGES:[Ljava/lang/String;

    invoke-direct {p0, v13, v6}, Lcom/android/inputmethod/latin/InputLanguageSelection;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v2, v3

    .line 157
    .end local v0           #country:Ljava/lang/String;
    .end local v3           #finalSize:I
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    .restart local v2       #finalSize:I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    goto :goto_0

    .line 168
    .restart local v0       #country:Ljava/lang/String;
    .restart local v5       #l:Ljava/util/Locale;
    .restart local v6       #language:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 169
    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v13, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v13, v10, v3

    goto :goto_1

    .line 176
    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    :cond_1
    const/4 v13, 0x1

    sub-int v13, v3, v13

    aget-object v13, v10, v13

    iget-object v13, v13, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 178
    const/4 v13, 0x1

    sub-int v13, v3, v13

    aget-object v13, v10, v13

    const/4 v14, 0x1

    sub-int v14, v3, v14

    aget-object v14, v10, v14

    iget-object v14, v14, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    .line 180
    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v13, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v13, v10, v3

    goto :goto_1

    .line 184
    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    :cond_2
    const-string v13, "zz_ZZ"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v2, v3

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    goto :goto_1

    .line 186
    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    :cond_3
    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, displayName:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v13, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    invoke-direct {v13, v1, v5}, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v13, v10, v3

    goto :goto_1

    .line 193
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #finalSize:I
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    .end local v7           #len:I
    .end local v11           #s:Ljava/lang/String;
    .restart local v3       #finalSize:I
    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    .line 194
    aget-object v13, v10, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 196
    :cond_5
    return-object v12

    .restart local v7       #len:I
    .restart local v11       #s:Ljava/lang/String;
    :cond_6
    move v2, v3

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v7, 0x7f050010

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/InputLanguageSelection;->addPreferencesFromResource(I)V

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 70
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "selected_languages"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    .line 71
    iget-object v7, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, languageList:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getUniqueLocales()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 74
    .local v4, parent:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 75
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 76
    .local v5, pref:Landroid/preference/CheckBoxPreference;
    iget-object v7, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    iget-object v3, v7, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 77
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0, v3, v2}, Lcom/android/inputmethod/latin/InputLanguageSelection;->isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z

    move-result v0

    .line 79
    .local v0, checked:Z
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/InputLanguageSelection;->hasDictionary(Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    const v7, 0x7f0c0092

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 83
    :cond_0
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0           #checked:Z
    .end local v3           #locale:Ljava/util/Locale;
    .end local v5           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 10

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 132
    const-string v0, ""

    .line 133
    .local v0, checkedLanguages:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 134
    .local v5, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 135
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 136
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 137
    .local v6, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 138
    iget-object v8, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    iget-object v4, v8, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 139
    .local v4, locale:Ljava/util/Locale;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .end local v4           #locale:Ljava/util/Locale;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v6           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    const/4 v0, 0x0

    .line 143
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 144
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 145
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "selected_languages"

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-static {v2}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 126
    return-void
.end method
