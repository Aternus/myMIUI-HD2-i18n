.class Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
    }
.end annotation


# static fields
.field private static final sKnownContactApps:[Ljava/lang/String;

.field private static final sKnownContactIcons:[I

.field private static final sKnownContactStrings:[I


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1336
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactApps:[Ljava/lang/String;

    .line 1346
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactIcons:[I

    .line 1356
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactStrings:[I

    return-void

    .line 1346
    nop

    :array_0
    .array-data 0x4
        0xc6t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1356
    :array_1
    .array-data 0x4
        0x80t 0x1t 0xbt 0x7ft
        0x81t 0x1t 0xbt 0x7ft
        0x82t 0x1t 0xbt 0x7ft
        0x83t 0x1t 0xbt 0x7ft
        0x83t 0x1t 0xbt 0x7ft
        0x84t 0x1t 0xbt 0x7ft
        0x85t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    .line 1295
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1296
    iput-object p1, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mContext:Landroid/content/Context;

    .line 1297
    return-void
.end method

.method private getBestResolveIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "bestResolve"

    .prologue
    .line 1367
    sget-object v3, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactApps:[Ljava/lang/String;

    array-length v0, v3

    .line 1368
    .local v0, appsLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1369
    sget-object v3, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactApps:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1370
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactIcons:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    .line 1374
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 1368
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1374
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getBestResolveString(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 5
    .parameter "bestResolve"

    .prologue
    .line 1378
    sget-object v3, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactApps:[Ljava/lang/String;

    array-length v0, v3

    .line 1379
    .local v0, appsLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1380
    sget-object v3, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactApps:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1381
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->sKnownContactStrings:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, text:Ljava/lang/String;
    move-object v3, v2

    .line 1385
    .end local v2           #text:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 1379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1385
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1468
    return-void
.end method

.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1399
    iget-object v7, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1401
    .local v2, foundResolve:Landroid/content/pm/ResolveInfo;
    iget v7, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v8, 0xfff

    and-int/2addr v7, v8

    if-nez v7, :cond_0

    move v1, v10

    .line 1404
    .local v1, foundDisambig:Z
    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    .line 1424
    .end local p0
    :goto_1
    return-object v7

    .end local v1           #foundDisambig:Z
    .restart local p0
    :cond_0
    move v1, v9

    .line 1401
    goto :goto_0

    .line 1410
    .restart local v1       #foundDisambig:Z
    :cond_1
    const/4 v0, 0x0

    .line 1411
    .local v0, firstSystem:Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1412
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    move v6, v10

    .line 1414
    .local v6, isSystem:Z
    :goto_3
    invoke-static {}, Lcom/android/contacts/ui/QuickContactWindow;->access$500()Ljava/util/HashSet;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1419
    .local v5, isPrefer:Z
    if-eqz v5, :cond_4

    move-object v7, v4

    goto :goto_1

    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_3
    move v6, v9

    .line 1412
    goto :goto_3

    .line 1420
    .restart local v5       #isPrefer:Z
    .restart local v6       #isSystem:Z
    :cond_4
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_2

    .line 1424
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_5
    if-eqz v0, :cond_6

    move-object v7, v0

    goto :goto_1

    :cond_6
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v7, p0

    goto :goto_1
.end method

.method public getDescription(Lcom/android/contacts/ui/QuickContactWindow$Action;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "action"

    .prologue
    .line 1440
    invoke-interface {p1}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getHeader()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1441
    .local v0, actionHeader:Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/contacts/ui/QuickContactWindow$Action;)Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 1442
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 1447
    :goto_0
    return-object v2

    .line 1444
    :cond_0
    if-eqz v1, :cond_1

    .line 1445
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1447
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getEntry(Lcom/android/contacts/ui/QuickContactWindow$Action;)Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
    .locals 12
    .parameter "action"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1304
    invoke-interface {p1}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 1305
    .local v6, mimeType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;

    .line 1306
    .local v1, entry:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1333
    .end local v1           #entry:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
    .local v2, entry:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1307
    .end local v2           #entry:Ljava/lang/Object;
    .restart local v1       #entry:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
    :cond_0
    new-instance v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;

    .end local v1           #entry:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;-><init>(Lcom/android/contacts/ui/QuickContactWindow$1;)V

    .line 1309
    .restart local v1       #entry:Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
    invoke-interface {p1}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1310
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 1311
    iget-object v8, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v9, 0x1

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1315
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 1316
    .local v0, bestResolve:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_3

    move v7, v10

    .line 1317
    .local v7, size:I
    :goto_1
    if-ne v7, v11, :cond_4

    .line 1318
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bestResolve:Landroid/content/pm/ResolveInfo;
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1323
    .restart local v0       #bestResolve:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 1324
    invoke-direct {p0, v0}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getBestResolveIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1326
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 1327
    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;->icon:Ljava/lang/ref/SoftReference;

    .line 1328
    invoke-direct {p0, v0}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getBestResolveString(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;->mText:Ljava/lang/String;

    .line 1332
    .end local v0           #bestResolve:Landroid/content/pm/ResolveInfo;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #size:I
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1333
    .restart local v2       #entry:Ljava/lang/Object;
    goto :goto_0

    .line 1316
    .end local v2           #entry:Ljava/lang/Object;
    .restart local v0       #bestResolve:Landroid/content/pm/ResolveInfo;
    .restart local v5       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v7, v8

    goto :goto_1

    .line 1319
    .restart local v7       #size:I
    :cond_4
    if-le v7, v11, :cond_1

    .line 1320
    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_2
.end method

.method public getIcon(Lcom/android/contacts/ui/QuickContactWindow$Action;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "action"

    .prologue
    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/contacts/ui/QuickContactWindow$Action;)Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v1

    iget-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;->icon:Ljava/lang/ref/SoftReference;

    .line 1458
    .local v0, iconRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    goto :goto_0
.end method

.method public getString(Lcom/android/contacts/ui/QuickContactWindow$Action;)Ljava/lang/String;
    .locals 2
    .parameter "action"

    .prologue
    .line 1462
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/contacts/ui/QuickContactWindow$Action;)Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v1

    iget-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;->mText:Ljava/lang/String;

    .line 1463
    .local v0, text:Ljava/lang/String;
    return-object v0
.end method

.method public hasResolve(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 1432
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/contacts/ui/QuickContactWindow$Action;)Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
