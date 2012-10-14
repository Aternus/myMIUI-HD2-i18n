.class public final Lcom/android/browser/model/MiRenProtocolUrlMapper;
.super Ljava/lang/Object;
.source "MiRenProtocolUrlMapper.java"


# static fields
.field public static final BookmarkFavoritePage:Ljava/lang/String; = "miui:launchBookmarkFavorite"

.field public static final BookmarkHistoryPage:Ljava/lang/String; = "miui:launchBookmarkHistory"

.field public static final BookmarkMostVisitedPage:Ljava/lang/String; = "miui:launchBookmarkMostVisited"

.field public static final ForumPage:Ljava/lang/String; = "miui:forum"

.field public static final ForumPage_RealUrl:Ljava/lang/String; = "file:///android_asset/forum.html"

.field public static final HomePage:Ljava/lang/String; = "miui:home"

.field public static final HomePageYellowPage:Ljava/lang/String; = "miui:sites"

.field public static final HomePageYellowPage_RealUrl:Ljava/lang/String; = "file:///android_asset/navigationHome.html"

.field public static final HomePage_RealUrl:Ljava/lang/String; = "file:///android_asset/mindex.html"

.field public static final ProtocolName:Ljava/lang/String; = "miui"

.field public static final ProtocolNameWithSeperator:Ljava/lang/String; = "miui:"

.field public static final RSSDetailPage:Ljava/lang/String; = "miui:RSSDetail"

.field public static final RSSDetailPage_RealUrl:Ljava/lang/String; = "file:///android_asset/RSSDetail.html"

.field public static final ReaderCenterPage:Ljava/lang/String; = "miui:launchReader"

.field public static final ReadingPage:Ljava/lang/String; = "miui:reading"

.field public static final ReadingPage_RealUrl:Ljava/lang/String; = "file:///android_asset/ReadingMode.html"

.field public static final SimplePage:Ljava/lang/String; = "miui:simple"

.field public static final SimplePage_RealUrl:Ljava/lang/String; = "file:///android_asset/simple.html"

.field private static final mMiRenUrlToRealUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    .line 40
    sget-object v0, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    const-string v1, "miui:home"

    const-string v2, "file:///android_asset/mindex.html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    const-string v1, "miui:sites"

    const-string v2, "file:///android_asset/navigationHome.html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    const-string v1, "miui:reading"

    const-string v2, "file:///android_asset/ReadingMode.html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    const-string v1, "miui:forum"

    const-string v2, "file:///android_asset/forum.html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    const-string v1, "miui:simple"

    const-string v2, "file:///android_asset/simple.html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    const-string v1, "miui:RSSDetail"

    const-string v2, "file:///android_asset/RSSDetail.html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMappedMiRenUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "realUrl"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 86
    .end local p0
    :goto_0
    return-object v2

    .line 81
    .restart local p0
    :cond_0
    sget-object v2, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    :cond_2
    move-object v2, v3

    .line 86
    goto :goto_0
.end method

.method public static final getMappedRealUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mirenUrl"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    .line 67
    .end local p0
    :goto_0
    return-object v1

    .line 59
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, lowerCaseUrl:Ljava/lang/String;
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 61
    const-string v1, "miui:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/android/browser/model/MiRenProtocolUrlMapper;->mMiRenUrlToRealUrlMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0

    .restart local p0
    :cond_1
    move-object v1, v3

    .line 67
    goto :goto_0
.end method

.method public static isHomePage(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "miui:home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///android_asset/mindex.html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
