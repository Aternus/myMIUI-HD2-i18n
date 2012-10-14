.class public final enum Lcom/android/browser/controller/BrowserSettings$Keys;
.super Ljava/lang/Enum;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/controller/BrowserSettings$Keys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_ABOUT_DIALOG:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_ALWAYS_SHOW_TABBAR:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_ASK_FOR_LAUNCHER_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_AUTO_CLEAR_CACHE_EXIT:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_AUTO_ENTER_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_BUILD_VERSION:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_CLEAR_CACHE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_CLEAR_COOKIES:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_CLEAR_FORM_DATA:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_CLEAR_GEOLOCATION_ACCESS:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_CLEAR_HISTORY:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_CLEAR_PASSWORDS:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_DEBUG_SETTINGS:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_DEFAULT_SEARCH_ENGINE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_DEFAULT_TEXT_ENCODING:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_DEFAULT_ZOOM:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_ENABLE_VOLUME_OPTION:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_ENTER_READING_MODE_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_EXIT_CONFIRMATION:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_EXTRAS_RESET_DEFAULTS:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_FORUM_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_HIDE_BUTTONS_IN_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_HIDE_STATUS_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_HOMEPAGE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_LOAD_IMAGES:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_LONG_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_ONE_CLICK_BACKUP:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_ONE_CLICK_IMPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_OVERVIEW_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_PLUGIN_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_READING_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_SHOW_EXIT_FULL_SCREEN_TIP:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_SHOW_TABBAR_IN_LOADING:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_SHOW_TIPS_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_SIMPLE_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_SINGLE_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_TEXT_SIZE:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_USER_AGENT:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_VOLUME_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_WAP_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

.field public static final enum PREF_WEBSITE_SETTINGS:Lcom/android/browser/controller/BrowserSettings$Keys;


# instance fields
.field public final isCommonKey:Z

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_LOAD_IMAGES"

    const-string v2, "load_images_option"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_LOAD_IMAGES:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 44
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_OVERVIEW_MODE"

    const-string v2, "overview_mode"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_OVERVIEW_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 45
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_ABOUT_DIALOG"

    const-string v2, "pre_about_dialog"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ABOUT_DIALOG:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 46
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_CLEAR_CACHE"

    const-string v2, "privacy_clear_cache"

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_CACHE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 47
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_EXTRAS_RESET_DEFAULTS"

    const-string v2, "reset_default_preferences"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXTRAS_RESET_DEFAULTS:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 48
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_TEXT_SIZE"

    const/4 v2, 0x5

    const-string v3, "text_size"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_TEXT_SIZE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 49
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_AUTO_ENTER_FULLSCREEN"

    const/4 v2, 0x6

    const-string v3, "pref_auto_enter_fullscreen"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_ENTER_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 50
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_SIMPLE_MODE"

    const/4 v2, 0x7

    const-string v3, "pref_simple_mode_choice"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SIMPLE_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 51
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_VOLUME_SETTING"

    const/16 v2, 0x8

    const-string v3, "volume_setting_option"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_VOLUME_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 55
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_ENABLE_VOLUME_OPTION"

    const/16 v2, 0x9

    const-string v3, "apply_volume_setting_option"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ENABLE_VOLUME_OPTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 56
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_CLEAR_COOKIES"

    const/16 v2, 0xa

    const-string v3, "privacy_clear_cookies"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_COOKIES:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 57
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_CLEAR_HISTORY"

    const/16 v2, 0xb

    const-string v3, "privacy_clear_history"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_HISTORY:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 58
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_HOMEPAGE"

    const/16 v2, 0xc

    const-string v3, "homepage"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HOMEPAGE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 59
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_CLEAR_FORM_DATA"

    const/16 v2, 0xd

    const-string v3, "privacy_clear_form_data"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_FORM_DATA:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 60
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_CLEAR_PASSWORDS"

    const/16 v2, 0xe

    const-string v3, "privacy_clear_passwords"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_PASSWORDS:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 61
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_DEBUG_SETTINGS"

    const/16 v2, 0xf

    const-string v3, "debug_menu"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEBUG_SETTINGS:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 62
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_WEBSITE_SETTINGS"

    const/16 v2, 0x10

    const-string v3, "website_settings"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_WEBSITE_SETTINGS:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 63
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_DEFAULT_ZOOM"

    const/16 v2, 0x11

    const-string v3, "default_zoom"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_ZOOM:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 64
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_SHOW_EXIT_FULL_SCREEN_TIP"

    const/16 v2, 0x12

    const-string v3, "pref_show_exit_full_screen_tip"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_EXIT_FULL_SCREEN_TIP:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 65
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_DEFAULT_SEARCH_ENGINE"

    const/16 v2, 0x13

    const-string v3, "defaultSearchEngine"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_SEARCH_ENGINE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 66
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_ASK_FOR_LAUNCHER_SETTING"

    const/16 v2, 0x14

    const-string v3, "pref_ask_for_launcher_setting"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ASK_FOR_LAUNCHER_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 67
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_ALWAYS_SHOW_TABBAR"

    const/16 v2, 0x15

    const-string v3, "pref_always_show_tabbar"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ALWAYS_SHOW_TABBAR:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 68
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_HIDE_BUTTONS_IN_FULLSCREEN"

    const/16 v2, 0x16

    const-string v3, "pref_hide_buttons_in_fullscreen"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HIDE_BUTTONS_IN_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 69
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_SHOW_TABBAR_IN_LOADING"

    const/16 v2, 0x17

    const-string v3, "pref_show_tabbar_in_loading"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_TABBAR_IN_LOADING:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 70
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_SHOW_TIPS_SETTING"

    const/16 v2, 0x18

    const-string v3, "pref_show_tips_setting"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_TIPS_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 71
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_HIDE_STATUS_MODE"

    const/16 v2, 0x19

    const-string v3, "pref_hide_status_mode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HIDE_STATUS_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 72
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_DEFAULT_TEXT_ENCODING"

    const/16 v2, 0x1a

    const-string v3, "default_text_encoding"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_TEXT_ENCODING:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 73
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_CLEAR_GEOLOCATION_ACCESS"

    const/16 v2, 0x1b

    const-string v3, "privacy_clear_geolocation_access"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_GEOLOCATION_ACCESS:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 74
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_ENTER_READING_MODE_AUTOMATICALLY"

    const/16 v2, 0x1c

    const-string v3, "enter_reading_mode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ENTER_READING_MODE_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 75
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_ONE_CLICK_BACKUP"

    const/16 v2, 0x1d

    const-string v3, "one_key_export"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ONE_CLICK_BACKUP:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 76
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_ONE_CLICK_IMPORT"

    const/16 v2, 0x1e

    const-string v3, "one_key_import"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ONE_CLICK_IMPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 77
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_AUTO_CLEAR_CACHE_EXIT"

    const/16 v2, 0x1f

    const-string v3, "pref_auto_clear_cache"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_CLEAR_CACHE_EXIT:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 78
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_EXIT_CONFIRMATION"

    const/16 v2, 0x20

    const-string v3, "pref_exit_confirmation"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXIT_CONFIRMATION:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 79
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_USER_AGENT"

    const/16 v2, 0x21

    const-string v3, "user_agent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_USER_AGENT:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 80
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_WAP_SUPPORT"

    const/16 v2, 0x22

    const-string v3, "pref_wap_support"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_WAP_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 81
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_READING_MODE"

    const/16 v2, 0x23

    const-string v3, "reading_mode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_READING_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 82
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_FORUM_MODE"

    const/16 v2, 0x24

    const-string v3, "forum_mode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_FORUM_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 83
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_PLUGIN_SUPPORT"

    const/16 v2, 0x25

    const-string v3, "plugin_support"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_PLUGIN_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 84
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_BUILD_VERSION"

    const/16 v2, 0x26

    const-string v3, "build_version"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_BUILD_VERSION:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 85
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_SINGLE_CLICK_ACTION"

    const/16 v2, 0x27

    const-string v3, "single_click_action"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SINGLE_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 86
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    const-string v1, "PREF_LONG_CLICK_ACTION"

    const/16 v2, 0x28

    const-string v3, "long_click_action"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/BrowserSettings$Keys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_LONG_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 41
    const/16 v0, 0x29

    new-array v0, v0, [Lcom/android/browser/controller/BrowserSettings$Keys;

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_LOAD_IMAGES:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_OVERVIEW_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ABOUT_DIALOG:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_CACHE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXTRAS_RESET_DEFAULTS:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_TEXT_SIZE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_ENTER_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SIMPLE_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_VOLUME_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ENABLE_VOLUME_OPTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_COOKIES:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_HISTORY:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HOMEPAGE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_FORM_DATA:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_PASSWORDS:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEBUG_SETTINGS:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_WEBSITE_SETTINGS:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_ZOOM:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_EXIT_FULL_SCREEN_TIP:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_SEARCH_ENGINE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ASK_FOR_LAUNCHER_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ALWAYS_SHOW_TABBAR:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HIDE_BUTTONS_IN_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_TABBAR_IN_LOADING:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_TIPS_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HIDE_STATUS_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_TEXT_ENCODING:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_GEOLOCATION_ACCESS:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ENTER_READING_MODE_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ONE_CLICK_BACKUP:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ONE_CLICK_IMPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_CLEAR_CACHE_EXIT:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXIT_CONFIRMATION:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_USER_AGENT:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_WAP_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_READING_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_FORUM_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_PLUGIN_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_BUILD_VERSION:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SINGLE_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_LONG_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->$VALUES:[Lcom/android/browser/controller/BrowserSettings$Keys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "isCommonKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    .line 93
    iput-boolean p4, p0, Lcom/android/browser/controller/BrowserSettings$Keys;->isCommonKey:Z

    .line 94
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$Keys;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/BrowserSettings$Keys;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/controller/BrowserSettings$Keys;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$Keys;->$VALUES:[Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-virtual {v0}, [Lcom/android/browser/controller/BrowserSettings$Keys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/controller/BrowserSettings$Keys;

    return-object v0
.end method


# virtual methods
.method public equalsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "keyName"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
