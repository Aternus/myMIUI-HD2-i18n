.class public Lcom/miui/fmradio/FMRadioUtils;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.provider.fmradio"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DB_PRESET_MAX_NUM:I = 0x14

.field public static final FREQ_RATE:I = 0x3e8

.field public static final HIGH_FREQUENCY:I = 0x1a5e0

.field public static final LOW_FREQUENCY:I = 0x155cc

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final P_CH_FREQ:I = 0x2

.field public static final P_CH_NAME:I = 0x3

.field public static final P_ID:I = 0x0

.field public static final P_NUM:I = 0x1

.field public static final SAVED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SAVED_PROJECTION:[Ljava/lang/String; = null

.field public static final SORT_ORDER:Ljava/lang/String; = " CH_Freq ASC"

.field public static final SP_ID:I = 0x0

.field public static final SP_ISCHECKHEADSET:I = 0x6

.field public static final SP_ISFIRSTSCANNED:I = 0x4

.field public static final SP_ISLASTPLAYCHANNEL:I = 0x3

.field public static final SP_LAST_CHNUM:I = 0x1

.field public static final SP_LAST_FREQ:I = 0x2

.field public static final SP_LAST_VOLUME:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sService:Lcom/miui/fmradio/IFMRadioPlayerService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    const-string v0, "RadioUtils"

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "content://com.miui.provider.fmradio/FM_Radio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://com.miui.provider.fmradio/FM_Radio_saved_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    .line 29
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "CH_Num"

    aput-object v1, v0, v3

    const-string v1, "CH_Freq"

    aput-object v1, v0, v4

    const-string v1, "CH_Name"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "Last_ChNum"

    aput-object v1, v0, v3

    const-string v1, "Last_Freq"

    aput-object v1, v0, v4

    const-string v1, "isLastPlayChannel"

    aput-object v1, v0, v5

    const-string v1, "isFirstScaned"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Last_Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isCheckHeadset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static addNewStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "freq"

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, p0

    const-string v3, "CH_Freq = \'\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 299
    .local p0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 300
    .local v1, id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 301
    .local v2, updatePreset:Z
    if-eqz p0, :cond_1

    .line 302
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v1           #id:Ljava/lang/String;
    move-result-object v1

    .line 304
    .restart local v1       #id:Ljava/lang/String;
    const/4 v2, 0x1

    .line 306
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v7, v2

    .end local v2           #updatePreset:Z
    .local v7, updatePreset:Z
    move-object v6, v1

    .line 310
    .end local v1           #id:Ljava/lang/String;
    .local v6, id:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 311
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    .end local p0           #cursor:Landroid/database/Cursor;
    const/4 p0, 0x0

    const-string v3, "MAX(_id) + 1"

    aput-object v3, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 312
    .restart local p0       #cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_6

    .line 313
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    .end local v6           #id:Ljava/lang/String;
    .restart local v1       #id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 317
    .end local v7           #updatePreset:Z
    .restart local v2       #updatePreset:Z
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 321
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_2

    .line 322
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Get max preset id failed"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    .restart local p1
    :cond_2
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local p0, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v3, "CH_Freq"

    invoke-virtual {p0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string p2, "CH_Name"

    .end local p2
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string p1, "CH_Num"

    .end local p1
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 p1, 0x0

    .line 333
    .local p1, ret:Z
    if-eqz v2, :cond_3

    .line 334
    sget-object p2, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #updatePreset:Z
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .end local p0           #cv:Landroid/content/ContentValues;
    if-lez p0, :cond_4

    .line 335
    const/4 p0, 0x1

    .line 342
    .end local p1           #ret:Z
    .local p0, ret:Z
    :goto_2
    return p0

    .line 338
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #updatePreset:Z
    .local p0, cv:Landroid/content/ContentValues;
    .restart local p1       #ret:Z
    :cond_3
    sget-object p2, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0           #cv:Landroid/content/ContentValues;
    if-eqz p0, :cond_4

    .line 339
    const/4 p0, 0x1

    .end local p1           #ret:Z
    .local p0, ret:Z
    goto :goto_2

    .end local v1           #id:Ljava/lang/String;
    .end local v2           #updatePreset:Z
    .end local p0           #ret:Z
    .restart local p1       #ret:Z
    :cond_4
    move p0, p1

    .end local p1           #ret:Z
    .restart local p0       #ret:Z
    goto :goto_2

    .restart local v6       #id:Ljava/lang/String;
    .restart local v7       #updatePreset:Z
    .local p0, cursor:Landroid/database/Cursor;
    .local p1, name:Ljava/lang/String;
    .restart local p2
    :cond_5
    move v2, v7

    .end local v7           #updatePreset:Z
    .restart local v2       #updatePreset:Z
    move-object v1, v6

    .end local v6           #id:Ljava/lang/String;
    .restart local v1       #id:Ljava/lang/String;
    goto :goto_0

    .end local v1           #id:Ljava/lang/String;
    .end local v2           #updatePreset:Z
    .restart local v6       #id:Ljava/lang/String;
    .restart local v7       #updatePreset:Z
    :cond_6
    move v2, v7

    .end local v7           #updatePreset:Z
    .restart local v2       #updatePreset:Z
    move-object v1, v6

    .end local v6           #id:Ljava/lang/String;
    .restart local v1       #id:Ljava/lang/String;
    goto :goto_1
.end method

.method public static bindToService(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/fmradio/FMRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const-class v3, Lcom/miui/fmradio/FMRadioPlayerService;

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    new-instance v0, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 81
    .local v0, sb:Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static checkStationName(Landroid/content/Context;Ljava/lang/String;F)Z
    .locals 10
    .parameter "context"
    .parameter "name"
    .parameter "freq"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "COUNT(*)"

    aput-object v3, v2, v8

    const-string v3, "CH_Name=? AND CH_Freq <>?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 366
    .local v7, exist:Z
    if-eqz v6, :cond_0

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    const/4 v7, 0x1

    .line 372
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_0
    return v7

    .line 370
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static clearDB(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, ""

    .line 224
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static convertFloatToIntFreq(F)I
    .locals 1
    .parameter "freq"

    .prologue
    .line 358
    const/high16 v0, 0x447a

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static convertIntToFloatFreq(I)Ljava/lang/String;
    .locals 4
    .parameter "freq"

    .prologue
    .line 354
    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteStation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "freq"

    .prologue
    const-string v3, ""

    .line 346
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "CH_Freq"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "CH_Name"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CH_Freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getCurrentVolume()I
    .locals 4

    .prologue
    .line 632
    const/4 v1, -0x1

    .line 633
    .local v1, volume:I
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v2, :cond_0

    .line 635
    :try_start_0
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFMRadioPlayerService;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 640
    :cond_0
    :goto_0
    return v1

    .line 636
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 637
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "Get current volume failed, remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFMRadioAudioRouting()I
    .locals 4

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, ret:I
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v2, :cond_0

    .line 491
    :try_start_0
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFMRadioPlayerService;->getAudioRouting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 496
    :cond_0
    :goto_0
    return v1

    .line 492
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 493
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "Get FM radio audio routing failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFMServiceStatus()I
    .locals 4

    .prologue
    .line 521
    const/4 v1, -0x1

    .line 522
    .local v1, ret:I
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v2, :cond_0

    .line 524
    :try_start_0
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFMRadioPlayerService;->getServiceStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 529
    :cond_0
    :goto_0
    return v1

    .line 525
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "Get FM radio service status failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIsNeedCheckHeadset(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x6

    const/4 v3, 0x0

    .line 455
    const/4 v6, 0x1

    .line 456
    .local v6, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 458
    .local v7, saved_cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 460
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 462
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 463
    const/4 v7, 0x0

    .line 465
    :cond_1
    return v6
.end method

.method public static getPosInPresetList(Landroid/content/Context;I)I
    .locals 12
    .parameter "context"
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x2

    .line 427
    const/4 v9, -0x1

    .line 428
    .local v9, ret:I
    const v0, 0x155cc

    if-lt p1, v0, :cond_0

    const v0, 0x1a5e0

    if-le p1, v0, :cond_1

    :cond_0
    move v10, v9

    .line 451
    .end local v9           #ret:I
    .local v10, ret:I
    :goto_0
    return v10

    .line 432
    .end local v10           #ret:I
    .restart local v9       #ret:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 433
    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 434
    sget-object v0, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v1, "Cursor is null, error happens in isDBEmpty() function "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 435
    .end local v9           #ret:I
    .restart local v10       #ret:I
    goto :goto_0

    .line 437
    .end local v10           #ret:I
    .restart local v9       #ret:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 438
    const/4 v8, 0x0

    .line 439
    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 441
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 442
    .local v7, getFreq:I
    if-ne p1, v7, :cond_4

    .line 443
    move v9, v8

    .line 450
    .end local v7           #getFreq:I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v10, v9

    .line 451
    .end local v9           #ret:I
    .restart local v10       #ret:I
    goto :goto_0

    .line 447
    .end local v10           #ret:I
    .restart local v9       #ret:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static getPresetFrequencyFromDB(Landroid/content/Context;I)I
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    .line 394
    const/4 v6, -0x1

    .line 395
    .local v6, ch_freq:I
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 396
    .local v8, pos:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 398
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 399
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 400
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 402
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 403
    const/4 v7, 0x0

    .line 406
    :cond_1
    return v6
.end method

.method public static getPresetNameFromDB(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 379
    const-string v6, ""

    .line 380
    .local v6, ch_name:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 381
    .local v8, pos:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 383
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 384
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 387
    const/4 v7, 0x0

    .line 390
    :cond_0
    return-object v6
.end method

.method public static getStationName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 266
    invoke-static {p1}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, fValue:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CH_Name"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CH_Freq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 270
    const/4 v8, 0x0

    .line 271
    .local v8, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 277
    .end local v8           #name:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static isDBEmpty(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 193
    const/4 v8, 0x0

    .line 194
    .local v8, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 196
    sget-object v0, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v1, "Cursor is null, error happens in isDBEmpty() function"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 216
    .end local v8           #ret:Z
    .local v9, ret:I
    :goto_0
    return v9

    .line 199
    .end local v9           #ret:I
    .restart local v8       #ret:Z
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    const/4 v7, 0x0

    .line 201
    .local v7, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 203
    add-int/lit8 v7, v7, 0x1

    .line 204
    const/16 v0, 0x14

    if-ne v7, v0, :cond_1

    .line 205
    sget-object v0, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v1, "Database is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v8, 0x1

    .line 213
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 210
    :cond_2
    const/4 v8, 0x0

    .line 215
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v8

    .line 216
    .restart local v9       #ret:I
    goto :goto_0
.end method

.method public static isFMRadioMute()Z
    .locals 4

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, isMute:Z
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v2, :cond_0

    .line 503
    :try_start_0
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFMRadioPlayerService;->isMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 508
    :cond_0
    :goto_0
    return v1

    .line 504
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 505
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "Get FM radio mute status failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFreqExistInDatabase(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "freq"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "CH_Freq"

    aput-object v3, v2, v5

    const-string v3, "CH_Freq = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 412
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 413
    .local v7, exist:Z
    if-eqz v6, :cond_0

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    const/4 v7, 0x1

    .line 419
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 421
    :cond_0
    return v7

    .line 417
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isInCalling(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 152
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 154
    .local v0, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPhoneIdle()Z
    .locals 3

    .prologue
    .line 644
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v1, :cond_0

    .line 646
    :try_start_0
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFMRadioPlayerService;->isPhoneStatusIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 651
    :goto_0
    return v1

    .line 647
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "get phone status idle failed, remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isStationNameUsed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "name"
    .parameter "freq"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "COUNT(*)"

    aput-object v3, v2, v8

    const-string v3, "CH_Name=? AND CH_Freq <>?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 284
    .local v7, exist:Z
    if-eqz v6, :cond_0

    .line 285
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 286
    const/4 v7, 0x1

    .line 290
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_0
    return v7

    .line 288
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isWiredHeadsetOrHeadphoneOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, ""

    .line 165
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v3}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 167
    sget-object v0, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v1, "Headset wich micphone was plugged in!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 185
    :goto_0
    return v0

    .line 171
    :cond_0
    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v3}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 173
    sget-object v0, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v1, "Headphone without micphone was plugged in!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 174
    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v1, "No headset or headphone plugged in!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static powerOffFMRadioDevice()Z
    .locals 4

    .prologue
    .line 553
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "powerOffFMRadioDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v1, 0x0

    .line 555
    .local v1, ret:Z
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v2, :cond_0

    .line 557
    :try_start_0
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFMRadioPlayerService;->close()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 562
    :cond_0
    :goto_0
    return v1

    .line 558
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 559
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "sService.close() RemoteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static powerOnFMRadioDevice()Z
    .locals 4

    .prologue
    .line 536
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "Power on FM radio device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v1, 0x0

    .line 538
    .local v1, ret:Z
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v2, :cond_0

    .line 540
    :try_start_0
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFMRadioPlayerService;->open()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    :cond_0
    :goto_0
    return v1

    .line 542
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 543
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v3, "sService.open() RemoteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveToDB(Landroid/content/Context;IILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "freq"
    .parameter "name"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const-string v5, ""

    .line 243
    if-ltz p1, :cond_0

    const/16 v1, 0x14

    if-lt p1, v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    if-gez p2, :cond_2

    .line 249
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string v2, ""

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1
    if-nez p3, :cond_3

    .line 253
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v4

    const-string v2, ""

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v3

    int-to-float v2, p2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_3
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static seekFMRadioStation(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 588
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Seek FM radio station"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v1, :cond_0

    .line 591
    :try_start_0
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFMRadioPlayerService;->seek(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 594
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Seeking FM station failed, remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setFMRadioFrequency(I)V
    .locals 3
    .parameter "frequency"

    .prologue
    .line 571
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "setFMRadioFrequency"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v1, :cond_0

    .line 574
    :try_start_0
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFMRadioPlayerService;->tune(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 576
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "In setFMRadioFrequency(): RemoteException.!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setFMRadioMute(I)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 605
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Set FM radio mute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v1, :cond_0

    .line 608
    :try_start_0
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFMRadioPlayerService;->setMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 610
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Set FM radio mute failed, remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setFMSwitchOffFlag(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 621
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v1, :cond_0

    .line 623
    :try_start_0
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFMRadioPlayerService;->setFMSwitchOffFlag(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 625
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Set FM switch off flag failed, remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIsNeedCheckHeadset(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 469
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set check head = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 474
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "value"
    .parameter "timeLength"

    .prologue
    .line 133
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 136
    .local v0, ts:Landroid/widget/Toast;
    if-nez p2, :cond_2

    .line 137
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 143
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_1
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;

    .line 89
    .local v0, sb:Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;
    if-nez v0, :cond_1

    .line 90
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Try to unbind for unknown context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    goto :goto_0
.end method

.method public static unmuteFMOnResume()V
    .locals 3

    .prologue
    .line 102
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFMRadioPlayerService;->unmuteFMOnResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "unmute FM onResume failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
