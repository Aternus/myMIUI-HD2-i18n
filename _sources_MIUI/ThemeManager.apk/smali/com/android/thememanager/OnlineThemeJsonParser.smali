.class public Lcom/android/thememanager/OnlineThemeJsonParser;
.super Lcom/miui/android/resourcebrowser/OnlineJsonParser;
.source "OnlineThemeJsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/OnlineJsonParser;-><init>()V

    return-void
.end method

.method private getAudioEffectDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "baseUrl"
    .parameter "name"

    .prologue
    const-string v2, "/"

    .line 41
    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audioeffect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initDefaultParser()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/android/thememanager/OnlineThemeJsonParser;

    invoke-direct {v0}, Lcom/android/thememanager/OnlineThemeJsonParser;-><init>()V

    sput-object v0, Lcom/android/thememanager/OnlineThemeJsonParser;->sDefaultParser:Lcom/miui/android/resourcebrowser/OnlineJsonParser;

    .line 15
    return-void
.end method


# virtual methods
.method protected getDownloadURL(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 3
    .parameter "info"
    .parameter "resourceSetCategory"

    .prologue
    .line 47
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 48
    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, resourceUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ".mtz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "fileHost"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, baseUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v1           #resourceUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/android/resourcebrowser/OnlineJsonParser;->getDownloadURL(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getImageURLs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 7
    .parameter "info"
    .parameter "baseUrl"
    .parameter "prefixKey"
    .parameter "prefixIndicatorKey"
    .parameter "suffix"
    .parameter "extension"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p7, p4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, prefixIndicatorArray:[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const-wide/32 v5, 0x8000

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v4, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "audioeffect"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, audioNameStr:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 29
    const-string v0, ""

    .line 31
    :cond_0
    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/thememanager/ThemeHelper;->filterAudioEffect([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/android/thememanager/OnlineThemeJsonParser;->getAudioEffectDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #name:Ljava/lang/String;
    :cond_1
    move-object v5, v4

    .line 36
    .end local v0           #audioNameStr:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    invoke-super/range {p0 .. p7}, Lcom/miui/android/resourcebrowser/OnlineJsonParser;->getImageURLs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_1
.end method
