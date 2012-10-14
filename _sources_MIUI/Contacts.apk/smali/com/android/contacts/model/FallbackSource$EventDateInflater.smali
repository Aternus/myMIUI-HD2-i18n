.class public Lcom/android/contacts/model/FallbackSource$EventDateInflater;
.super Ljava/lang/Object;
.source "FallbackSource.java"

# interfaces
.implements Lcom/android/contacts/model/ContactsSource$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDateInflater"
.end annotation


# static fields
.field public static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mTypeColumnName:Ljava/lang/String;

.field private final mValueColumnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->sFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const-string v0, "data2"

    iput-object v0, p0, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->mTypeColumnName:Ljava/lang/String;

    .line 516
    const-string v0, "data1"

    iput-object v0, p0, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->mValueColumnName:Ljava/lang/String;

    .line 520
    return-void
.end method

.method private getString(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 546
    if-nez p3, :cond_0

    move-object v2, v4

    .line 564
    :goto_0
    return-object v2

    .line 548
    :cond_0
    if-ne p2, v5, :cond_2

    .line 549
    const/4 v1, 0x0

    .line 551
    .local v1, date:Ljava/util/Date;
    :try_start_0
    sget-object v2, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->sFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 554
    :goto_1
    if-nez v1, :cond_1

    move-object v2, v4

    .line 555
    goto :goto_0

    .line 557
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 558
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x10403df

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/LunarDate;->solar2lunar(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #date:Ljava/util/Date;
    :cond_2
    move-object v2, p3

    .line 564
    goto :goto_0

    .line 552
    .restart local v1       #date:Ljava/util/Date;
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    const-string v5, "data2"

    const-string v4, "data1"

    .line 536
    const-string v2, "data2"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 542
    :goto_0
    return-object v2

    .line 537
    :cond_0
    const-string v2, "data1"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 539
    :cond_1
    const-string v2, "data2"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 540
    .local v0, columnType:I
    const-string v2, "data1"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, columnValue:Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->getString(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 523
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 524
    .local v2, typeIndex:I
    if-ne v2, v5, :cond_0

    move-object v4, v6

    .line 532
    :goto_0
    return-object v4

    .line 526
    :cond_0
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 527
    .local v3, valudIndex:I
    if-ne v3, v5, :cond_1

    move-object v4, v6

    goto :goto_0

    .line 529
    :cond_1
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 530
    .local v0, columnType:I
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, columnValue:Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->getString(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0
.end method
