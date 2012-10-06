.class Lcom/android/contacts/ViewContactActivity$ViewEntry;
.super Lcom/android/contacts/ContactEntryAdapter$Entry;
.source "ViewContactActivity.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ContactEntryAdapter$Entry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public actionIcon:I

.field public backgroundRes:I

.field public callLogDate:J

.field public callLogNumber:Ljava/lang/String;

.field public callLogShowButton:I

.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public firewallType:I

.field public footerLine:Ljava/lang/CharSequence;

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;

.field public intentRequestCode:I

.field public isIntentForResult:Z

.field public isPrimary:Z

.field public maxLabelLines:I

.field public noteId:J

.field public presence:I

.field public resPackageName:Ljava/lang/String;

.field public secondaryActionIcon:I

.field public secondaryIconNoAction:Z

.field public secondaryIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2289
    invoke-direct {p0}, Lcom/android/contacts/ContactEntryAdapter$Entry;-><init>()V

    .line 2264
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->context:Landroid/content/Context;

    .line 2265
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->resPackageName:Ljava/lang/String;

    .line 2266
    iput v3, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 2267
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    .line 2268
    iput v3, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryActionIcon:I

    .line 2269
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIconNoAction:Z

    .line 2271
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2272
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isIntentForResult:Z

    .line 2274
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    .line 2275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    .line 2276
    iput v2, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->collapseCount:I

    .line 2277
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    .line 2279
    iput v3, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presence:I

    .line 2281
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 2283
    iput v3, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    .line 2284
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    .line 2285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->noteId:J

    .line 2286
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogDate:J

    .line 2287
    iput v2, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->firewallType:I

    .line 2290
    return-void
.end method

.method public static fromCallLog(Landroid/content/Context;Lcom/android/contacts/ViewContactActivity$CallLogEntry;)Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .locals 4
    .parameter "context"
    .parameter "callLog"

    .prologue
    .line 2342
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 2343
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput-object p0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->context:Landroid/content/Context;

    .line 2344
    iget-wide v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->id:J

    iput-wide v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    .line 2345
    const-string v1, "vnd.android.cursor.dir/calls"

    iput-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 2346
    iget v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->callType:I

    iput v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    .line 2347
    iget-object v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    .line 2348
    iget-wide v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->date:J

    iput-wide v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogDate:J

    .line 2349
    iget-wide v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->date:J

    const v3, 0x20015

    invoke-static {p0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 2352
    iget v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->firewallType:I

    iput v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->firewallType:I

    .line 2354
    iget v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2355
    iget-wide v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->duration:J

    invoke-static {p0, v1, v2}, Lcom/android/contacts/ContactsUtils;->formatRingDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 2359
    :goto_0
    return-object v0

    .line 2357
    :cond_0
    iget-wide v1, p1, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->duration:J

    iget v3, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    invoke-static {p0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->formatDuration(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromCallLogButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .locals 1
    .parameter "context"
    .parameter "value"
    .parameter "mimeType"
    .parameter "callLogButton"

    .prologue
    .line 2330
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 2331
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput-object p0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->context:Landroid/content/Context;

    .line 2332
    iput-object p1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 2333
    iput-object p2, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 2334
    iput p3, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    .line 2335
    return-object v0
.end method

.method public static fromValues(Landroid/content/Context;)Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .locals 1
    .parameter "context"

    .prologue
    .line 2321
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 2322
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput-object p0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->context:Landroid/content/Context;

    .line 2323
    return-object v0
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$DataKind;JJLandroid/content/ContentValues;)Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .locals 4
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 2297
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 2298
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput-object p0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->context:Landroid/content/Context;

    .line 2299
    iput-wide p3, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->contactId:J

    .line 2300
    iput-wide p5, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    .line 2301
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2302
    iput-object p1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 2303
    const/4 v1, 0x0

    invoke-static {p2, p7, v1, p0}, Lcom/android/contacts/ViewContactActivity;->buildActionString(Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/content/ContentValues;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 2304
    invoke-static {p2, p7, p0}, Lcom/android/contacts/ViewContactActivity;->buildDataString(Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 2306
    iget-object v1, p2, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p7, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2307
    iget-object v1, p2, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    .line 2309
    :cond_0
    iget v1, p2, Lcom/android/contacts/model/ContactsSource$DataKind;->iconRes:I

    if-lez v1, :cond_1

    .line 2310
    iget-object v1, p2, Lcom/android/contacts/model/ContactsSource$DataKind;->resPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->resPackageName:Ljava/lang/String;

    .line 2311
    iget v1, p2, Lcom/android/contacts/model/ContactsSource$DataKind;->iconRes:I

    iput v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 2314
    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .locals 1
    .parameter "status"
    .parameter "fillData"

    .prologue
    .line 2370
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presence:I

    .line 2371
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 2373
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 2376
    :cond_0
    return-object p0
.end method

.method public collapseWith(Lcom/android/contacts/ViewContactActivity$ViewEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v3, 0x1

    .line 2381
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->shouldCollapseWith(Lcom/android/contacts/ViewContactActivity$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2382
    const/4 v0, 0x0

    .line 2410
    :goto_0
    return v0

    .line 2386
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    invoke-static {v0, v1}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    iget v2, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    invoke-static {v1, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 2388
    iget v0, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    iput v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    .line 2389
    iget-object v0, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 2393
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    iget v1, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 2394
    iget v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    iget v1, p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    .line 2397
    iget v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    iget v1, p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presence:I

    invoke-static {v1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2399
    iget v0, p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presence:I

    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presence:I

    .line 2403
    :cond_2
    iget-boolean v0, p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    .line 2408
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    iget-wide v1, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2409
    iget v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->collapseCount:I

    move v0, v3

    .line 2410
    goto :goto_0

    .line 2403
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    goto :goto_1
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2263
    check-cast p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->collapseWith(Lcom/android/contacts/ViewContactActivity$ViewEntry;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/ViewContactActivity$ViewEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 2414
    if-nez p1, :cond_0

    move v0, v5

    .line 2430
    :goto_0
    return v0

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    .line 2420
    goto :goto_0

    .line 2423
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    iget v1, p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    if-eq v0, v1, :cond_3

    :cond_2
    move v0, v5

    .line 2427
    goto :goto_0

    .line 2430
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2263
    check-cast p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->shouldCollapseWith(Lcom/android/contacts/ViewContactActivity$ViewEntry;)Z

    move-result v0

    return v0
.end method
