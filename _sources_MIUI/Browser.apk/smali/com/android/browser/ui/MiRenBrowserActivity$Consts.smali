.class public Lcom/android/browser/ui/MiRenBrowserActivity$Consts;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Consts"
.end annotation


# static fields
.field private static final GOOGLE_SEARCH_SOURCE_GOTO:Ljava/lang/String; = "browser-goto"

.field private static final GOOGLE_SEARCH_SOURCE_SEARCHKEY:Ljava/lang/String; = "browser-key"

.field private static final GOOGLE_SEARCH_SOURCE_SUGGEST:Ljava/lang/String; = "browser-suggest"

.field private static final GOOGLE_SEARCH_SOURCE_TYPE:Ljava/lang/String; = "browser-type"

.field private static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final QUERY_PLACE_HOLDER:Ljava/lang/String; = "%s"

.field static final QuickSearch_D:Ljava/lang/String; = "http://dictionary.reference.com/search?q=%s"

.field public static final QuickSearch_G:Ljava/lang/String; = "http://www.google.com/m?q=%s"

.field public static final QuickSearch_G_Prefix:Ljava/lang/String; = "http://www.google.com/m?q="

.field static final QuickSearch_L:Ljava/lang/String; = "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

.field static final QuickSearch_W:Ljava/lang/String; = "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

.field public static final SEARCH_SOURCE:Ljava/lang/String; = "source"

.field private static final SHORTCUT_DICTIONARY_SEARCH:I = 0x3

.field private static final SHORTCUT_GOOGLE_MOBILE_LOCAL_SEARCH:I = 0x4

.field private static final SHORTCUT_GOOGLE_SEARCH:I = 0x1

.field private static final SHORTCUT_INVALID:I = 0x0

.field private static final SHORTCUT_WIKIPEDIA_SEARCH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
