.class public Lcom/miui/player/ui/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final PREF_ANDORID_ALBUM:Ljava/lang/String; = "android_album"

.field private static final PREF_CATEGORY_FILTER:Ljava/lang/String; = "music_filter"

.field public static final PREF_DISPLAY_ALBUM:Ljava/lang/String; = "display_album"

.field public static final PREF_DISPLAY_LYRIC:Ljava/lang/String; = "display_lyric"

.field public static final PREF_DISPLAY_SPECTROGRAM:Ljava/lang/String; = "display_spectrogram"

.field public static final PREF_DOWNLOAD_ALBUM_OTHER:Ljava/lang/String; = "other_connect_album"

.field public static final PREF_DOWNLOAD_LYRIC_OTHER:Ljava/lang/String; = "other_connect_lyric"

.field public static final PREF_FADE_EFFECT_ACTIVE:Ljava/lang/String; = "fade_effect_active"

.field public static final PREF_FLOW_SAVE_HINT:Ljava/lang/String; = "flow_save_hint"

.field public static final PREF_KEEP_QUIT_LOCATION:Ljava/lang/String; = "keep_quit_location"

.field public static final PREF_LISTEN_TO_MUSIC_OTHER:Ljava/lang/String; = "other_connect_listen"

.field public static final PREF_MIN_MUSIC_FILTER_SIZE:Ljava/lang/String; = "min_music_filter_size"

.field public static final PREF_NO_FOLDER:Ljava/lang/String; = "filter_music_folder"

.field public static final PREF_PLAY_AND_DOWNLOAD:Ljava/lang/String; = "play_and_download"

.field public static final PREF_SCREEN_BRIGHT_WAKE:Ljava/lang/String; = "screen_bright_wake"

.field public static final PREF_SHAKE:Ljava/lang/String; = "shake"

.field public static final PREF_SHAKE_SENSITIVITY:Ljava/lang/String; = "shake_degree"

.field private static sPrefCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFilterCategoryPref:Landroid/preference/Preference;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field mPlayAndDownload:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 239
    new-instance v0, Lcom/miui/player/ui/PreferencesActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/PreferencesActivity$1;-><init>(Lcom/miui/player/ui/PreferencesActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/PreferencesActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 127
    sget-object v0, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/miui/player/ui/PreferencesActivity;->initialize(Landroid/content/Context;)V

    .line 130
    :cond_0
    sget-object v0, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 120
    sget-object v0, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/miui/player/ui/PreferencesActivity;->initialize(Landroid/content/Context;)V

    .line 123
    :cond_0
    sget-object v0, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-string v5, "display_album"

    const-string v5, "android_album"

    const-string v5, "min_music_filter_size"

    .line 50
    const-class v5, Lcom/miui/player/ui/PreferencesActivity;

    monitor-enter v5

    .line 51
    :try_start_0
    sget-object v6, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 55
    .local v4, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 56
    .local v0, bv:Z
    const/4 v3, 0x0

    .line 58
    .local v3, iv:I
    const-string v6, "other_connect_album"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    const-string v6, "other_connect_album"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v6, "other_connect_lyric"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    const-string v6, "other_connect_lyric"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v6, "other_connect_listen"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 65
    const-string v6, "other_connect_listen"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v6, "flow_save_hint"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    const-string v6, "flow_save_hint"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    const-string v6, "min_music_filter_size"

    const v7, 0xc8190

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 72
    const-string v6, "min_music_filter_size"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :goto_0
    :try_start_2
    const-string v6, "filter_music_folder"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    const-string v6, "filter_music_folder"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v6, "android_album"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    const-string v6, "android_album"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v6, "play_and_download"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    const-string v6, "play_and_download"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v6, "screen_bright_wake"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    const-string v6, "screen_bright_wake"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v6, "keep_quit_location"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    const-string v6, "keep_quit_location"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v6, "shake"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    const-string v6, "shake"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v6, "shake_degree"

    const/16 v7, 0xa

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 100
    const-string v6, "shake_degree"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v6, "display_lyric"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    const-string v6, "display_lyric"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v6, "display_album"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    const-string v6, "display_album"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v6, "display_spectrogram"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    const-string v6, "display_spectrogram"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v6, "fade_effect_active"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    const-string v6, "fade_effect_active"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sput-object v1, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    .line 116
    .end local v0           #bv:Z
    .end local v1           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #iv:I
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_0
    monitor-exit v5

    .line 117
    return-void

    .line 73
    .restart local v0       #bv:Z
    .restart local v1       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #iv:I
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 75
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v6, "min_music_filter_size"

    const-wide/32 v7, 0xf4240

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v3, v6

    .line 76
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "min_music_filter_size"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v6, "min_music_filter_size"

    invoke-static {p0, v6, v3}, Lcom/miui/player/ui/PreferencesActivity;->setPrefAsInteger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 78
    const-string v6, "min_music_filter_size"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 116
    .end local v0           #bv:Z
    .end local v1           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #e:Ljava/lang/ClassCastException;
    .end local v3           #iv:I
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public static setPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    sget-object v2, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 152
    invoke-static {p0}, Lcom/miui/player/ui/PreferencesActivity;->initialize(Landroid/content/Context;)V

    .line 154
    :cond_0
    sget-object v2, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public static setPrefAsInteger(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 134
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    sget-object v2, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 140
    invoke-static {p0}, Lcom/miui/player/ui/PreferencesActivity;->initialize(Landroid/content/Context;)V

    .line 142
    :cond_0
    sget-object v2, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "play_and_download"

    .line 159
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 164
    const-string v2, "other_connect_album"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string v2, "other_connect_lyric"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string v2, "other_connect_listen"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v2, "flow_save_hint"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const-string v2, "min_music_filter_size"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    const-string v2, "filter_music_folder"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v2, "android_album"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v2, "play_and_download"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    const-string v2, "screen_bright_wake"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v2, "keep_quit_location"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    const-string v2, "shake"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v2, "shake_degree"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    const-string v2, "display_lyric"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const-string v2, "display_album"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    const-string v2, "display_spectrogram"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 179
    .local v1, specPref:Landroid/preference/Preference;
    const-string v2, "fade_effect_active"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 181
    .local v0, fadePref:Landroid/preference/Preference;
    sget-boolean v2, Lcom/miui/player/helper/Global;->IS_LPA_DECODE:Z

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :goto_0
    const-string v2, "music_filter"

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/PreferencesActivity;->mFilterCategoryPref:Landroid/preference/Preference;

    .line 190
    const-string v2, "play_and_download"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/PreferencesActivity;->mPlayAndDownload:Landroid/preference/Preference;

    .line 191
    return-void

    .line 185
    :cond_0
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/player/ui/PreferencesActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 208
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const-string v5, "command"

    const-string v4, "com.miui.player.musicservicecommand.update_meta"

    const-string v3, "android_album"

    .line 212
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, key:Ljava/lang/String;
    sget-object v2, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 215
    invoke-static {p0}, Lcom/miui/player/ui/PreferencesActivity;->initialize(Landroid/content/Context;)V

    .line 217
    :cond_0
    sget-object v2, Lcom/miui/player/ui/PreferencesActivity;->sPrefCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v2, "display_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android_album"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "other_connect_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v2, "album"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    const-string v2, "android_album"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-static {}, Lcom/miui/player/model/AlbumBrowserAdapter;->removeCache()V

    .line 236
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 228
    :cond_3
    const-string v2, "display_lyric"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v2, "lyric"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v2, "shake"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.shake_pref"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/miui/player/ui/PreferencesActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/PreferencesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/miui/player/ui/PreferencesActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 202
    return-void
.end method
