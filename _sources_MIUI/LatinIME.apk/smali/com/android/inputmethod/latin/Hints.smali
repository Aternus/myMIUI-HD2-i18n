.class public Lcom/android/inputmethod/latin/Hints;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Hints$Display;
    }
.end annotation


# static fields
.field private static final DEFAULT_PUNCTUATION_HINT_MAX_DISPLAYS:I = 0x7

.field private static final DEFAULT_SWIPE_HINT_MAX_DAYS_TO_SHOW:I = 0x7

.field private static final PREF_VOICE_HINT_LAST_TIME_SHOWN:Ljava/lang/String; = "voice_hint_last_time_shown"

.field private static final PREF_VOICE_HINT_NUM_UNIQUE_DAYS_SHOWN:Ljava/lang/String; = "voice_hint_num_unique_days_shown"

.field private static final PREF_VOICE_INPUT_LAST_TIME_USED:Ljava/lang/String; = "voice_input_last_time_used"

.field private static final PREF_VOICE_PUNCTUATION_HINT_VIEW_COUNT:Ljava/lang/String; = "voice_punctuation_hint_view_count"

.field static final SPEAKABLE_PUNCTUATION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Lcom/android/inputmethod/latin/Hints$Display;

.field private mPunctuationHintMaxDisplays:I

.field private mSwipeHintMaxDaysToShow:I

.field private mVoiceResultContainedPunctuation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/android/inputmethod/latin/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, ","

    const-string v2, "comma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/inputmethod/latin/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, "."

    const-string v2, "period"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/inputmethod/latin/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, "?"

    const-string v2, "question mark"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/Hints$Display;)V
    .locals 3
    .parameter "context"
    .parameter "display"

    .prologue
    const/4 v2, 0x7

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/inputmethod/latin/Hints;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/inputmethod/latin/Hints;->mDisplay:Lcom/android/inputmethod/latin/Hints$Display;

    .line 69
    iget-object v1, p0, Lcom/android/inputmethod/latin/Hints;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "latin_ime_voice_input_swipe_hint_max_days"

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/Hints;->mSwipeHintMaxDaysToShow:I

    .line 74
    const-string v1, "latin_ime_voice_input_punctuation_hint_max_displays"

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/Hints;->mPunctuationHintMaxDisplays:I

    .line 78
    return-void
.end method

.method private getAndIncrementPref(Ljava/lang/String;)I
    .locals 4
    .parameter "pref"

    .prologue
    .line 180
    iget-object v3, p0, Lcom/android/inputmethod/latin/Hints;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    .local v1, sp:Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, value:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 185
    return v2
.end method

.method private isFromToday(J)Z
    .locals 8
    .parameter "timeInMillis"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    move v2, v5

    .line 153
    :goto_0
    return v2

    .line 147
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 148
    .local v1, today:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 151
    .local v0, timestamp:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 153
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_0
.end method

.method private shouldShowSwipeHint()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 121
    iget-object v4, p0, Lcom/android/inputmethod/latin/Hints;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 123
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "voice_hint_num_unique_days_shown"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, numUniqueDaysShown:I
    iget v4, p0, Lcom/android/inputmethod/latin/Hints;->mSwipeHintMaxDaysToShow:I

    if-ge v2, v4, :cond_0

    .line 128
    const-string v4, "voice_input_last_time_used"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 132
    .local v0, lastTimeVoiceWasUsed:J
    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/Hints;->isFromToday(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    const/4 v4, 0x1

    .line 137
    .end local v0           #lastTimeVoiceWasUsed:J
    :goto_0
    return v4

    :cond_0
    move v4, v7

    goto :goto_0
.end method

.method private showHint(I)V
    .locals 9
    .parameter "hintViewResource"

    .prologue
    const-string v8, "voice_hint_num_unique_days_shown"

    const-string v7, "voice_hint_last_time_shown"

    .line 159
    iget-object v5, p0, Lcom/android/inputmethod/latin/Hints;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 161
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v5, "voice_hint_num_unique_days_shown"

    const/4 v5, 0x0

    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 162
    .local v3, numUniqueDaysShown:I
    const-string v5, "voice_hint_last_time_shown"

    const-wide/16 v5, 0x0

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 167
    .local v1, lastTimeHintWasShown:J
    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/latin/Hints;->isFromToday(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "voice_hint_num_unique_days_shown"

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v5, "voice_hint_last_time_shown"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 174
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/Hints;->mDisplay:Lcom/android/inputmethod/latin/Hints$Display;

    if-eqz v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/android/inputmethod/latin/Hints;->mDisplay:Lcom/android/inputmethod/latin/Hints$Display;

    invoke-interface {v5, p1}, Lcom/android/inputmethod/latin/Hints$Display;->showHint(I)V

    .line 177
    :cond_1
    return-void
.end method


# virtual methods
.method public registerVoiceResult(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/android/inputmethod/latin/Hints;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "voice_input_last_time_used"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 111
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/Hints;->mVoiceResultContainedPunctuation:Z

    .line 112
    sget-object v3, Lcom/android/inputmethod/latin/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 113
    .local v2, s:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/Hints;->mVoiceResultContainedPunctuation:Z

    .line 118
    .end local v2           #s:Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z
    .locals 5
    .parameter "ic"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Hints;->mVoiceResultContainedPunctuation:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "voice_punctuation_hint_view_count"

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Hints;->getAndIncrementPref(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/Hints;->mPunctuationHintMaxDisplays:I

    if-ge v1, v2, :cond_0

    .line 94
    invoke-interface {p1, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 95
    .local v0, charBeforeCursor:Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/inputmethod/latin/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const v1, 0x7f03000d

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Hints;->showHint(I)V

    move v1, v4

    .line 101
    .end local v0           #charBeforeCursor:Ljava/lang/CharSequence;
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public showSwipeHintIfNecessary(Z)Z
    .locals 1
    .parameter "fieldRecommended"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/Hints;->shouldShowSwipeHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const v0, 0x7f03000e

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Hints;->showHint(I)V

    .line 83
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
