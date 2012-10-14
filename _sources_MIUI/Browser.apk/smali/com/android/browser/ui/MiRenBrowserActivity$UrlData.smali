.class Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UrlData"
.end annotation


# instance fields
.field final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mId:J

.field final mMode:I

.field final mUrl:Ljava/lang/String;

.field final mVoiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 1789
    const/4 v2, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;IJ)V

    .line 1790
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJ)V
    .locals 6
    .parameter "url"
    .parameter "mode"
    .parameter "id"

    .prologue
    .line 1797
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;IJ)V

    .line 1798
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1793
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;IJ)V

    .line 1794
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;IJ)V
    .locals 7
    .parameter "url"
    .parameter
    .parameter "mode"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 1801
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;IJLandroid/content/Intent;)V

    .line 1802
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;IJLandroid/content/Intent;)V
    .locals 2
    .parameter "url"
    .parameter
    .parameter "mode"
    .parameter "id"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1804
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1805
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    .line 1806
    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mHeaders:Ljava/util/Map;

    .line 1807
    iput p3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mMode:I

    .line 1808
    iput-wide p4, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mId:J

    .line 1809
    if-eqz p6, :cond_0

    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    iput-object p6, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    .line 1816
    :goto_0
    return-void

    .line 1814
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method isEmpty()Z
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIn(Lcom/android/browser/controller/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/android/browser/controller/Tab;->activateVoiceSearchMode(Landroid/content/Intent;)V

    .line 1832
    :goto_0
    return-void

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    goto :goto_0
.end method
