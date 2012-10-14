.class public Lcom/android/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# static fields
.field static final DELETE_ALL:I = 0x2

.field static final DELETE_ALL_FOLLOWING:I = 0x1

.field static final DELETE_SELECTED:I

.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEndMillis:J

.field private mEventIndexId:I

.field private mEventIndexRrule:I

.field private mExitWhenDone:Z

.field private final mParent:Landroid/app/Activity;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichDelete:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "parent"
    .parameter "exitWhenDone"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$1;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$2;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$3;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 96
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    iput-boolean p2, p0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DeleteEventHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mEventIndexId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/DeleteEventHelper;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/DeleteEventHelper;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DeleteEventHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/DeleteEventHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/calendar/DeleteEventHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/DeleteEventHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V

    return-void
.end method

.method private deleteRepeatingEvent(I)V
    .locals 26
    .parameter "which"

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const-string v24, "dtstart"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 249
    .local v15, indexDtstart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const-string v24, "allDay"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 250
    .local v13, indexAllDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const-string v24, "title"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 251
    .local v17, indexTitle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const-string v24, "eventTimezone"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 252
    .local v16, indexTimezone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const-string v24, "calendar_id"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 254
    .local v14, indexCalendarId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DeleteEventHelper;->mEventIndexRrule:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 255
    .local v18, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    move/from16 v5, v23

    .line 256
    .local v5, allDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 257
    .local v8, dtstart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DeleteEventHelper;->mEventIndexId:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v11, v0

    .line 266
    .local v11, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 267
    add-int/lit8 p1, p1, 0x1

    .line 270
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 341
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->finish()V

    .line 344
    :cond_1
    return-void

    .line 255
    .end local v5           #allDay:Z
    .end local v8           #dtstart:J
    .end local v11           #id:J
    :cond_2
    const/16 v23, 0x0

    move/from16 v5, v23

    goto :goto_0

    .line 276
    .restart local v5       #allDay:Z
    .restart local v8       #dtstart:J
    .restart local v11       #id:J
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v23, v0

    cmp-long v23, v8, v23

    if-nez v23, :cond_3

    .line 282
    :cond_3
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v22, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 287
    .local v20, title:Ljava/lang/String;
    const-string v23, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 290
    .local v19, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 291
    .local v6, calendarId:I
    const-string v23, "eventTimezone"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v23, "allDay"

    if-eqz v5, :cond_4

    const/16 v24, 0x1

    :goto_2
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v23, "calendar_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v23, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    const-string v23, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    const-string v23, "originalEvent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v23, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 298
    const-string v23, "eventStatus"

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    sget-object v24, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 292
    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    .line 304
    .end local v6           #calendarId:I
    .end local v19           #timezone:Ljava/lang/String;
    .end local v20           #title:Ljava/lang/String;
    .end local v22           #values:Landroid/content/ContentValues;
    :pswitch_1
    sget-object v23, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-wide v1, v11

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 305
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    .end local v21           #uri:Landroid/net/Uri;
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v23, v0

    cmp-long v23, v8, v23

    if-nez v23, :cond_5

    .line 312
    sget-object v23, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-wide v1, v11

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 313
    .restart local v21       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    .end local v21           #uri:Landroid/net/Uri;
    :cond_5
    new-instance v10, Landroid/pim/EventRecurrence;

    invoke-direct {v10}, Landroid/pim/EventRecurrence;-><init>()V

    .line 319
    .local v10, eventRecurrence:Landroid/pim/EventRecurrence;
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 320
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 321
    .local v7, date:Landroid/text/format/Time;
    if-eqz v5, :cond_6

    .line 322
    const-string v23, "UTC"

    move-object/from16 v0, v23

    move-object v1, v7

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 324
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v23, v0

    move-object v0, v7

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 325
    move-object v0, v7

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object v1, v7

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 326
    const/16 v23, 0x0

    move-object v0, v7

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 330
    const-string v23, "UTC"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    iput-object v0, v1, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    .line 333
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .restart local v22       #values:Landroid/content/ContentValues;
    const-string v23, "dtstart"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    const-string v23, "rrule"

    invoke-virtual {v10}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v23, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-wide v1, v11

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 337
    .restart local v21       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public delete(JJJI)V
    .locals 9
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"

    .prologue
    .line 161
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 163
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v8, p7

    .line 167
    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public delete(JJLandroid/database/Cursor;I)V
    .locals 8
    .parameter "begin"
    .parameter "end"
    .parameter "cursor"
    .parameter "which"

    .prologue
    .line 200
    iput p6, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 201
    iput-wide p1, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 202
    iput-wide p3, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 203
    iput-object p5, p0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    .line 204
    iget-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/DeleteEventHelper;->mEventIndexId:I

    .line 205
    iget-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v6, "rrule"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/DeleteEventHelper;->mEventIndexRrule:I

    .line 206
    iget-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v6, "_sync_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 207
    .local v1, eventIndexSyncId:I
    iget-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 212
    iget-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/calendar/DeleteEventHelper;->mEventIndexRrule:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, rRule:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08005f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08005e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    iget-object v7, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const v2, 0x7f06000d

    .line 226
    .local v2, labelsArrayId:I
    iget-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 227
    const v2, 0x7f06000e

    .line 229
    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08005f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v2, p6, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    iget-object v7, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 236
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 238
    const/4 v5, -0x1

    if-ne p6, v5, :cond_0

    .line 241
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 242
    .local v3, ok:Landroid/widget/Button;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setExitWhenDone(Z)V
    .locals 0
    .parameter "exitWhenDone"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 102
    return-void
.end method
