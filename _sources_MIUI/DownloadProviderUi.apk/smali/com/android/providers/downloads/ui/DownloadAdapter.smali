.class public Lcom/android/providers/downloads/ui/DownloadAdapter;
.super Landroid/widget/CursorAdapter;
.source "DownloadAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentBytesColumnId:I

.field private mCursor:Landroid/database/Cursor;

.field private mDateColumnId:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mIdColumnId:I

.field private mIsEditMode:Z

.field private mMediaTypeColumnId:I

.field private mReasonColumnId:I

.field private mResources:Landroid/content/res/Resources;

.field private mStatusColumnId:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTitleColumnId:I

.field private mTotalBytesColumnId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x3

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    .line 73
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    .line 74
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 75
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 77
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    .line 78
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    .line 79
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    .line 80
    const-string v0, "reason"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    .line 81
    const-string v0, "total_size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    .line 82
    const-string v0, "media_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    .line 83
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    .line 85
    const-string v0, "bytes_so_far"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCurrentBytesColumnId:I

    .line 88
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/DownloadManager;

    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DownloadAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method private getDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 166
    .local v0, date:Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStartOfToday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSizeText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 184
    .local v1, totalBytes:J
    const-string v0, ""

    .line 185
    .local v0, sizeText:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    return-object v0
.end method

.method private getStartOfToday()Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 175
    .local v0, today:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 176
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 179
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getStatusStringId()I
    .locals 5

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 220
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :sswitch_0
    const v1, 0x7f070009

    .line 217
    :goto_1
    return v1

    .line 197
    :sswitch_1
    const v1, 0x7f070008

    goto :goto_1

    .line 200
    :sswitch_2
    const v1, 0x7f070021

    goto :goto_1

    .line 203
    :sswitch_3
    const v1, 0x7f070007

    goto :goto_1

    .line 206
    :sswitch_4
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 207
    .local v0, reason:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    const v1, 0x7f070032

    goto :goto_1

    .line 209
    :pswitch_1
    const v1, 0x7f07002f

    goto :goto_1

    .line 211
    :pswitch_2
    const v1, 0x7f070030

    goto :goto_1

    .line 213
    :pswitch_3
    const v1, 0x7f070031

    goto :goto_1

    .line 217
    :pswitch_4
    const v1, 0x7f070033

    goto :goto_1

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private retrieveAndSetIcon(Landroid/view/View;)V
    .locals 10
    .parameter "convertView"

    .prologue
    const/4 v9, 0x0

    .line 224
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, mediaType:Ljava/lang/String;
    const v6, 0x7f0a000e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 226
    .local v1, iconView:Landroid/widget/ImageView;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    if-nez v4, :cond_0

    .line 249
    .end local p0
    :goto_0
    return-void

    .line 232
    .restart local p0
    :cond_0
    const-string v6, "application/vnd.oma.drm.message"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    const v6, 0x7f020009

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    .end local p0
    :goto_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 235
    .restart local p0
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "file"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 238
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 240
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 242
    const v6, 0x7f020007

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 244
    :cond_2
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setTextForView(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "parent"
    .parameter "textViewId"
    .parameter "text"

    .prologue
    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    .local v0, view:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 21
    .parameter "convertView"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->retrieveAndSetIcon(Landroid/view/View;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, title:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f070003

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 100
    :cond_0
    const v16, 0x7f0a000f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 102
    const v16, 0x7f0a0013

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 103
    .local v4, actionButton:Landroid/widget/TextView;
    new-instance v16, Lcom/android/providers/downloads/ui/DownloadAdapter$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/ui/DownloadAdapter$1;-><init>(Lcom/android/providers/downloads/ui/DownloadAdapter;)V

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 117
    .local v12, status:I
    const/16 v16, 0x1

    move/from16 v0, v16

    move v1, v12

    if-eq v0, v1, :cond_1

    const/16 v16, 0x2

    move/from16 v0, v16

    move v1, v12

    if-eq v0, v1, :cond_1

    const/16 v16, 0x4

    move/from16 v0, v16

    move v1, v12

    if-ne v0, v1, :cond_9

    .line 120
    :cond_1
    const v16, 0x7f0a0010

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 123
    .local v14, totalBytes:J
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_2

    .line 124
    const-wide/16 v14, 0x0

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCurrentBytesColumnId:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 128
    .local v5, currentBytes:J
    const/4 v9, 0x0

    .line 129
    .local v9, progressAmount:I
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_3

    const-wide/16 v16, 0x0

    cmp-long v16, v5, v16

    if-lez v16, :cond_3

    .line 130
    const-wide/16 v16, 0x64

    mul-long v16, v16, v5

    div-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v9, v0

    .line 133
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, sizeText:Ljava/lang/String;
    const v16, 0x7f0a0011

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v17, v11

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 137
    const v16, 0x7f0a0010

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 139
    .local v10, progressBar:Landroid/widget/ProgressBar;
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    invoke-virtual {v10, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 142
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIsEditMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    const/16 v16, 0x8

    :goto_1
    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    const/16 v16, 0x2

    move/from16 v0, v16

    move v1, v12

    if-eq v0, v1, :cond_4

    const/16 v16, 0x1

    move/from16 v0, v16

    move v1, v12

    if-ne v0, v1, :cond_8

    .line 145
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_7

    const-wide/16 v16, 0x64

    mul-long v16, v16, v5

    div-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0

    mul-double v16, v16, v18

    move-wide/from16 v7, v16

    .line 146
    .local v7, percent:D
    :goto_2
    const v16, 0x7f0a0012

    const-string v17, "%.1f%%"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 147
    const v16, 0x7f07002c

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    .end local v5           #currentBytes:J
    .end local v7           #percent:D
    .end local v9           #progressAmount:I
    .end local v10           #progressBar:Landroid/widget/ProgressBar;
    .end local v11           #sizeText:Ljava/lang/String;
    .end local v14           #totalBytes:J
    :goto_3
    return-void

    .line 134
    .restart local v5       #currentBytes:J
    .restart local v9       #progressAmount:I
    .restart local v11       #sizeText:Ljava/lang/String;
    .restart local v14       #totalBytes:J
    :cond_5
    const-string v17, ""

    goto/16 :goto_0

    .line 142
    .restart local v10       #progressBar:Landroid/widget/ProgressBar;
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 145
    :cond_7
    const-wide/16 v16, 0x0

    move-wide/from16 v7, v16

    goto :goto_2

    .line 149
    :cond_8
    const v16, 0x7f0a0012

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStatusStringId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 150
    const v16, 0x7f07002d

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 153
    .end local v5           #currentBytes:J
    .end local v9           #progressAmount:I
    .end local v10           #progressBar:Landroid/widget/ProgressBar;
    .end local v11           #sizeText:Ljava/lang/String;
    .end local v14           #totalBytes:J
    :cond_9
    const v16, 0x7f0a0011

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 154
    const v16, 0x7f0a0010

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const/16 v16, 0x8

    move/from16 v0, v16

    move v1, v12

    if-ne v0, v1, :cond_a

    .line 156
    const v16, 0x7f0a0012

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getDateString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 160
    :goto_4
    const/16 v16, 0x8

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 158
    :cond_a
    const v16, 0x7f0a0012

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStatusStringId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_4
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "isEditMode"

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIsEditMode:Z

    .line 271
    return-void
.end method
