.class public Lcom/android/thememanager/LockscreenConfigSettings;
.super Landroid/preference/PreferenceActivity;
.source "LockscreenConfigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils;,
        Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$NumberChoiceItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$StringChoiceItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$CheckboxItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;,
        Lcom/android/thememanager/LockscreenConfigSettings$Item;
    }
.end annotation


# instance fields
.field private mConfigPath:Ljava/lang/String;

.field private mNextRequestCode:I

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/thememanager/LockscreenConfigSettings$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCodeObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    .line 65
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mNextRequestCode:I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    .line 544
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/LockscreenConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/LockscreenConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/thememanager/LockscreenConfigSettings;Ljava/lang/String;)Lcom/android/thememanager/LockscreenConfigSettings$Item;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings;->createItem(Ljava/lang/String;)Lcom/android/thememanager/LockscreenConfigSettings$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/thememanager/LockscreenConfigSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->getNextRequestCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/thememanager/LockscreenConfigSettings;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/LockscreenConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/thememanager/LockscreenConfigSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static containConfigFile()Z
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/android/thememanager/LockscreenConfigSettings;->getConfigFileStreamFromCurrentTheme()Ljava/io/InputStream;

    move-result-object v0

    .line 90
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    const/4 v1, 0x1

    .line 97
    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "rootScreen"
    .parameter "group"

    .prologue
    .line 176
    if-nez p2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    const-string v1, "text"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    const-string v1, "summary"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v1, 0x0

    new-instance v2, Lcom/android/thememanager/LockscreenConfigSettings$2;

    invoke-direct {v2, p0, v0}, Lcom/android/thememanager/LockscreenConfigSettings$2;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Landroid/preference/PreferenceCategory;)V

    invoke-static {p2, v1, v2}, Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils;->traverseElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils$TraverseListener;)V

    goto :goto_0
.end method

.method private createItem(Ljava/lang/String;)Lcom/android/thememanager/LockscreenConfigSettings$Item;
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 196
    const-string v0, "StringInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    .line 209
    :goto_0
    return-object v0

    .line 198
    :cond_0
    const-string v0, "CheckBox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/android/thememanager/LockscreenConfigSettings$CheckboxItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$CheckboxItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 200
    :cond_1
    const-string v0, "NumberInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 202
    :cond_2
    const-string v0, "StringChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    new-instance v0, Lcom/android/thememanager/LockscreenConfigSettings$StringChoiceItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$StringChoiceItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 204
    :cond_3
    const-string v0, "NumberChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    new-instance v0, Lcom/android/thememanager/LockscreenConfigSettings$NumberChoiceItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$NumberChoiceItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 206
    :cond_4
    const-string v0, "AppPicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    new-instance v0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 209
    goto :goto_0
.end method

.method private createPreferenceScreen()V
    .locals 9

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 142
    .local v6, rootScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v6}, Lcom/android/thememanager/LockscreenConfigSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 144
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 147
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 148
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {}, Lcom/android/thememanager/LockscreenConfigSettings;->getConfigFileStreamFromCurrentTheme()Ljava/io/InputStream;

    move-result-object v4

    .line 149
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 173
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 152
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 153
    .local v5, root:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_0

    .line 155
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Config"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    const-string v7, "Group"

    new-instance v8, Lcom/android/thememanager/LockscreenConfigSettings$1;

    invoke-direct {v8, p0, v6}, Lcom/android/thememanager/LockscreenConfigSettings$1;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Landroid/preference/PreferenceScreen;)V

    invoke-static {v5, v7, v8}, Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils;->traverseElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils$TraverseListener;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 164
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 165
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 167
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 169
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 171
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ensureConfigFolder()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sLockstyleSDCardConfigDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private getAppliedSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    const-wide/16 v1, 0x1000

    invoke-static {p0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->loadUserPreferencePath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->getLockstyleSDCardConfigPathFromThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getConfigFileStreamFromCurrentTheme()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, configName:Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/app/ThemeResource;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v1

    .line 133
    .local v1, is:Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 134
    const-string v0, "config.xml"

    .line 135
    invoke-static {v0, v4}, Landroid/app/ThemeResource;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v1

    .line 137
    :cond_0
    return-object v1
.end method

.method private getNextRequestCode()I
    .locals 2

    .prologue
    .line 497
    iget v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mNextRequestCode:I

    return v0
.end method

.method private getRequestCodeObj(I)Ljava/lang/Object;
    .locals 2
    .parameter "code"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private putRequestCodeObj(ILjava/lang/Object;)V
    .locals 2
    .parameter "code"
    .parameter "obj"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    return-void
.end method

.method private saveAndApply()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mConfigPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/LockscreenConfigFile;->save()Z

    .line 117
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;

    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->getAppliedSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/android/screenelement/LockscreenConfigFile;->save(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 570
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 571
    const/high16 v0, 0x10a

    const v1, 0x10a0037

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/LockscreenConfigSettings;->overridePendingTransition(II)V

    .line 572
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings;->getRequestCodeObj(I)Ljava/lang/Object;

    move-result-object v2

    .line 524
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 525
    instance-of v3, v2, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;

    if-eqz v3, :cond_0

    .line 526
    move-object v0, v2

    check-cast v0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;

    move-object v1, v0

    .line 527
    .local v1, item:Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;
    invoke-virtual {v1, p2, p3}, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->saveAndApply()V

    .line 532
    .end local v1           #item:Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/thememanager/LockscreenConfigSettings;->setContentView(I)V

    .line 74
    invoke-static {}, Lcom/android/thememanager/LockscreenConfigSettings;->containConfigFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->finish()V

    .line 86
    .end local p0
    :goto_0
    return-void

    .line 79
    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->ensureConfigFolder()V

    .line 80
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAppliedConfigFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mConfigPath:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/miui/android/screenelement/LockscreenConfigFile;

    invoke-direct {v0}, Lcom/miui/android/screenelement/LockscreenConfigFile;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;

    .line 82
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/android/screenelement/LockscreenConfigFile;->load(Ljava/lang/String;)Z

    .line 83
    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->createPreferenceScreen()V

    .line 85
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/thememanager/LockscreenConfigSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->saveAndApply()V

    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 109
    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->saveAndApply()V

    .line 110
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/LockscreenConfigSettings$Item;

    .line 511
    .local v0, item:Lcom/android/thememanager/LockscreenConfigSettings$Item;
    if-nez v0, :cond_0

    .line 512
    const/4 v3, 0x0

    .line 518
    :goto_0
    return v3

    .line 514
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/thememanager/LockscreenConfigSettings$Item;->OnValueChange(Ljava/lang/Object;)Z

    move-result v2

    .line 515
    .local v2, ret:Z
    if-eqz v2, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/android/thememanager/LockscreenConfigSettings;->saveAndApply()V

    :cond_1
    move v3, v2

    .line 518
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/LockscreenConfigSettings$Item;

    .line 538
    .local v0, item:Lcom/android/thememanager/LockscreenConfigSettings$Item;
    if-nez v0, :cond_0

    .line 539
    const/4 v2, 0x0

    .line 541
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/thememanager/LockscreenConfigSettings$Item;->onClick()Z

    move-result v2

    goto :goto_0
.end method
