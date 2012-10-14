.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field protected static final CLOSE_EMAIL_MARKER:Ljava/lang/String; = ">"

.field private static final CORNERS:[F = null

.field private static final DEBUG:Z = true

.field private static final HIGH_ALPHA:I = -0x1000000

.field private static final LOW_ALPHA:I = -0x6a000000

.field private static final MED_ALPHA:I = -0x4c000000

.field protected static final OPEN_EMAIL_MARKER:Ljava/lang/String; = " <"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"

.field private static final TAG:Ljava/lang/String; = "CalUtils"

.field public static final englishNthDay:[Ljava/lang/String;

.field private static final mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 56
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/Utils;->CORNERS:[F

    .line 62
    new-instance v0, Landroid/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Landroid/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    .line 275
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1st"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2nd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3rd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4th"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7th"

    aput-object v2, v0, v1

    const-string v1, "8th"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "9th"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10th"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11th"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12th"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13th"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14th"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15th"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16th"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17th"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18th"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19th"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20th"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22nd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23rd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24th"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "25th"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "26th"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "27th"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "28th"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "29th"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "30th"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "31st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    return-void

    .line 56
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyAlphaAnimation(Landroid/widget/ViewFlipper;)V
    .locals 8
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 228
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 230
    .local v0, in:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 231
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 233
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 235
    .local v1, out:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 236
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 239
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 240
    return-void
.end method

.method public static checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V
    .locals 2
    .parameter
    .parameter "cursor"
    .parameter "nameIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, isDuplicateName:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 369
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 370
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 374
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    .end local v0           #displayName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 176
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v4

    .line 199
    :goto_0
    return v2

    .line 180
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 181
    .local v1, numColumns:I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-eq v1, v2, :cond_2

    move v2, v4

    .line 182
    goto :goto_0

    .line 185
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 186
    goto :goto_0

    .line 189
    :cond_3
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 190
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 193
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 194
    goto :goto_0

    .line 192
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    .end local v0           #i:I
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 123
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNth(I)Ljava/lang/String;
    .locals 2
    .parameter "nth"

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorChip(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "color"

    .prologue
    .line 253
    const v5, 0xffffff

    and-int/2addr p0, v5

    .line 254
    const/high16 v5, -0x100

    or-int v4, p0, v5

    .line 255
    .local v4, startColor:I
    const/high16 v5, -0x4c00

    or-int v3, p0, v5

    .line 256
    .local v3, middleColor:I
    const/high16 v5, -0x6a00

    or-int v2, p0, v5

    .line 257
    .local v2, endColor:I
    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 258
    .local v0, colors:[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 259
    .local v1, d:Landroid/graphics/drawable/GradientDrawable;
    sget-object v5, Lcom/android/calendar/Utils;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 260
    return-object v1
.end method

.method public static getFirstDayOfWeek()I
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 324
    .local v0, startDay:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 325
    const/4 v1, 0x6

    .line 329
    :goto_0
    return v1

    .line 326
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 327
    const/4 v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 108
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Landroid/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasCalendarAccount(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 380
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSaturday(II)Z
    .locals 3
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 340
    if-nez p1, :cond_0

    if-eq p0, v2, :cond_2

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSunday(II)Z
    .locals 2
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 352
    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    if-ne p0, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, things:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 297
    .local v1, first:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 298
    .local v3, thing:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 303
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    .end local v3           #thing:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 156
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 157
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 158
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 159
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 160
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 162
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "viewId"

    .prologue
    .line 134
    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v0, v3, p1

    .line 136
    .local v0, activityString:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 137
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 138
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 141
    :cond_0
    const-string v3, "preferredDetailedView"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    :cond_1
    const-string v3, "startView"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    return-void
.end method

.method static setTimeToStartOfDay(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 313
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 314
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 315
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 316
    return-void
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 90
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Landroid/util/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "className"
    .parameter "time"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public static suggestLogin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080078

    new-instance v3, Lcom/android/calendar/Utils$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/Utils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 402
    return-void
.end method

.method public static final timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;
    .locals 3
    .parameter "intent"

    .prologue
    .line 150
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 151
    .local v0, time:Landroid/text/format/Time;
    invoke-static {p0}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 152
    return-object v0
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    .line 208
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 209
    .local v0, data:Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 210
    .local v2, millis:J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v5, "time"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 221
    .end local v4           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 224
    :cond_1
    return-wide v2

    .line 215
    .restart local v4       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 216
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
