.class public Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FestivalSmsCategoryListAdapter.java"


# instance fields
.field private mBannerImage:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mFestivalCategoryPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    .line 31
    iput-object p1, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private internalRequery()V
    .locals 23

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_CATEGORIES:Landroid/net/Uri;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "name"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "sms_count"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "url"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_FESTIVAL_INFO:Landroid/net/Uri;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "banner"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "begin"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "end"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "category_url"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 56
    .local v18, festivalInfoCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_1

    .line 65
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 75
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 68
    :cond_3
    const/4 v5, 0x1

    :try_start_1
    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 69
    .local v12, begin:J
    const/4 v5, 0x2

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 70
    .local v16, end:J
    const/4 v5, 0x3

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, categoryUrl:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 75
    .local v11, bannerBlob:[B
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 79
    .local v21, time:J
    cmp-long v5, v21, v12

    if-ltz v5, :cond_1

    cmp-long v5, v21, v16

    if-gtz v5, :cond_1

    .line 82
    if-eqz v14, :cond_1

    .line 86
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 88
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    .line 94
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 98
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    .local v20, stream:Ljava/io/ByteArrayInputStream;
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .local v19, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v5, 0xa0

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 101
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "banner"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mBannerImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 72
    .end local v11           #bannerBlob:[B
    .end local v12           #begin:J
    .end local v14           #categoryUrl:Ljava/lang/String;
    .end local v16           #end:J
    .end local v19           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #stream:Ljava/io/ByteArrayInputStream;
    .end local v21           #time:J
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 75
    .local v15, e:Ljava/lang/Exception;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private moveCursorToPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 176
    :cond_1
    if-nez p1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 178
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    if-gt p1, v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->notifyDataSetInvalidated()V

    .line 196
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->moveCursorToPosition(I)V

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 121
    iget-object v6, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v6, :cond_0

    move-object v6, v8

    .line 149
    :goto_0
    return-object v6

    .line 124
    :cond_0
    const/4 v4, 0x0

    .line 125
    .local v4, listItemView:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_1

    instance-of v6, p2, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 126
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v4, v0

    .line 133
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->moveCursorToPosition(I)V

    .line 135
    const v6, 0x7f0d004f

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, categoryBodyView:Landroid/widget/TextView;
    const v6, 0x7f0d0050

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 137
    .local v5, smsCountView:Landroid/widget/TextView;
    const v6, 0x7f0d004e

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 139
    .local v1, bannerView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f090108

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v6, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget v6, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-nez p1, :cond_2

    .line 144
    iget-object v6, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mBannerImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    move-object v6, v4

    .line 149
    goto :goto_0

    .line 128
    .end local v1           #bannerView:Landroid/widget/ImageView;
    .end local v2           #categoryBodyView:Landroid/widget/TextView;
    .end local v5           #smsCountView:Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 130
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030011

    invoke-virtual {v3, v6, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .end local v4           #listItemView:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .restart local v4       #listItemView:Landroid/widget/LinearLayout;
    goto :goto_1

    .line 147
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .restart local v1       #bannerView:Landroid/widget/ImageView;
    .restart local v2       #categoryBodyView:Landroid/widget/TextView;
    .restart local v5       #smsCountView:Landroid/widget/TextView;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public requery()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->internalRequery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f09010f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/FestivalSmsProvider;->URI_RESET_DATABASE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 111
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->internalRequery()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, e2:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iput-object v5, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method
