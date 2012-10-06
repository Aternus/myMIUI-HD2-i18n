.class public Lcom/android/contacts/model/ExternalSource;
.super Lcom/android/contacts/model/FallbackSource;
.source "ExternalSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "resPackageName"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/contacts/model/ContactsSource;->resPackageName:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/android/contacts/model/ContactsSource;->summaryResPackageName:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 97
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.content.SyncAdapter"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v5, syncAdapter:Landroid/content/Intent;
    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 101
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v7, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 103
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/model/ExternalSource;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 108
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #parser:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExternalSource;->inflateStructuredName(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExternalSource;->inflatePhoto(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/ExternalSource;->setInflatedLevel(I)V

    .line 112
    return-void
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 119
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 124
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 128
    :cond_1
    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 129
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No start tag found"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .end local v8           #type:I
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 181
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Problem reading XML"

    invoke-direct {v9, v10, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 132
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8       #type:I
    :cond_2
    :try_start_1
    const-string v9, "ContactsSource"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 133
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Top level element must be ContactsSource"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .end local v8           #type:I
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 183
    .local v5, e:Ljava/io/IOException;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Problem reading XML"

    invoke-direct {v9, v10, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 138
    .end local v5           #e:Ljava/io/IOException;
    .restart local v8       #type:I
    :cond_3
    :try_start_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 140
    .local v2, depth:I
    :cond_4
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_9

    :cond_5
    const/4 v9, 0x1

    if-eq v8, v9, :cond_9

    .line 141
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const-string v9, "ContactsDataKind"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 146
    sget-object v9, Landroid/R$styleable;->ContactsDataKind:[I

    invoke-virtual {p1, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v6, Lcom/android/contacts/model/ContactsSource$DataKind;

    invoke-direct {v6}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>()V

    .line 150
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    .line 152
    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->iconRes:I

    .line 155
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, summaryColumn:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 159
    new-instance v9, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    invoke-direct {v9, v7}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v9, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 162
    :cond_6
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, detailColumn:Ljava/lang/String;
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 168
    .local v4, detailSocialSummary:Z
    if-eqz v4, :cond_7

    .line 170
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBodySocial:Z

    .line 173
    :cond_7
    if-eqz v3, :cond_8

    .line 175
    new-instance v9, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    invoke-direct {v9, v3}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v9, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 178
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/contacts/model/ExternalSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 185
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v3           #detailColumn:Ljava/lang/String;
    .end local v4           #detailSocialSummary:Z
    .end local v6           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .end local v7           #summaryColumn:Ljava/lang/String;
    :cond_9
    return-void
.end method
