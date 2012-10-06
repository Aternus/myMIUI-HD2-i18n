.class Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;
.super Landroid/widget/BaseAdapter;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatshowAdapter"
.end annotation


# instance fields
.field private mDoc:Lcom/android/mms/ui/SimplePduDoc;

.field private mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter "uri"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    .line 204
    new-instance v4, Lcom/android/mms/ui/SimplePduDoc;

    invoke-direct {v4, p1}, Lcom/android/mms/ui/SimplePduDoc;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    .line 205
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4, p2}, Lcom/android/mms/ui/SimplePduDoc;->load(Landroid/net/Uri;)Z

    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v2

    .line 208
    .local v2, page:Lcom/android/mms/ui/SimplePduPage;
    if-eqz v2, :cond_0

    .line 209
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/ui/SimplePduPage;->getPartSize()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 210
    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SimplePduPage;->getPart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v3

    .line 211
    .local v3, part:Lcom/android/mms/ui/SimplePduPart;
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .end local v1           #j:I
    .end local v3           #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v2           #page:Lcom/android/mms/ui/SimplePduPage;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 220
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, e:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 222
    const/4 v3, 0x0

    .line 228
    :goto_0
    return v3

    .line 223
    :cond_0
    instance-of v3, v1, Lcom/android/mms/ui/SimplePduPart;

    if-eqz v3, :cond_2

    .line 224
    move-object v0, v1

    check-cast v0, Lcom/android/mms/ui/SimplePduPart;

    move-object v2, v0

    .line 225
    .local v2, part:Lcom/android/mms/ui/SimplePduPart;
    invoke-virtual {v2}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    if-nez v3, :cond_1

    .line 226
    const/4 v3, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 231
    .end local v2           #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot recognize flatshow view type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 257
    .local v7, e:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 259
    .local v10, inflater:Landroid/view/LayoutInflater;
    move-object v0, v7

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 260
    check-cast v7, Ljava/lang/Integer;

    .end local v7           #e:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 262
    .local v13, pageNo:I
    if-eqz p2, :cond_0

    .line 263
    move-object/from16 v5, p2

    .line 267
    .local v5, div:Landroid/view/View;
    :goto_0
    const v19, 0x7f0d0058

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 268
    .local v14, pageNoView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    const v20, 0x7f090169

    invoke-virtual/range {v19 .. v20}, Lcom/android/mms/ui/SlideshowActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v5

    .line 386
    .end local v5           #div:Landroid/view/View;
    .end local v13           #pageNo:I
    .end local v14           #pageNoView:Landroid/widget/TextView;
    .end local p3
    :goto_1
    return-object v19

    .line 265
    .restart local v13       #pageNo:I
    .restart local p3
    :cond_0
    const v19, 0x7f030016

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .restart local v5       #div:Landroid/view/View;
    goto :goto_0

    .line 273
    .end local v5           #div:Landroid/view/View;
    .end local v13           #pageNo:I
    .restart local v7       #e:Ljava/lang/Object;
    :cond_1
    move-object v0, v7

    instance-of v0, v0, Lcom/android/mms/ui/SimplePduPart;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0011

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v12, v0

    .line 275
    .local v12, padding:I
    move-object v0, v7

    check-cast v0, Lcom/android/mms/ui/SimplePduPart;

    move-object v15, v0

    .line 276
    .local v15, part:Lcom/android/mms/ui/SimplePduPart;
    const/16 v17, 0x0

    .line 277
    .local v17, view:Landroid/view/View;
    const/4 v6, 0x0

    .line 278
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 279
    .local v9, imageView:Landroid/widget/ImageView;
    invoke-virtual {v15}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 341
    .end local p3
    :goto_2
    if-eqz v9, :cond_3

    .line 342
    const/16 v19, 0x1

    move-object v0, v9

    move-object v1, v6

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->setAttachmentImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 343
    const/16 v19, 0x1

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 344
    new-instance v19, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;-><init>(Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;Lcom/android/mms/ui/SimplePduPart;)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    if-eqz v6, :cond_2

    .line 357
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 358
    .local v8, height:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 359
    .local v18, width:I
    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    .line 360
    mul-int/lit8 v19, v18, 0x3

    div-int/lit8 v18, v19, 0x2

    .line 361
    mul-int/lit8 v19, v8, 0x3

    div-int/lit8 v8, v19, 0x2

    .line 362
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v19

    move/from16 v1, v18

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    .end local v8           #height:I
    .end local v18           #width:I
    :cond_2
    :goto_3
    if-nez p2, :cond_d

    .line 374
    new-instance v17, Landroid/widget/LinearLayout;

    .end local v17           #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 375
    .restart local v17       #view:Landroid/view/View;
    move-object/from16 v0, v17

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 376
    move-object/from16 v0, v17

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    :cond_3
    :goto_4
    if-eqz v17, :cond_4

    .line 382
    move-object/from16 v0, v17

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    move-object/from16 v19, v17

    .line 384
    goto/16 :goto_1

    .line 282
    .restart local p3
    :pswitch_0
    if-eqz p2, :cond_5

    .line 283
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;

    move-object/from16 v16, v0

    .line 287
    .local v16, textView:Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    const v20, 0x7f0c0012

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f0a

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    .line 290
    .local v11, multiple:F
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;->setLineSpacing(FF)V

    .line 291
    invoke-virtual {v15}, Lcom/android/mms/ui/SimplePduPart;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    move-object/from16 v17, v16

    .line 293
    goto/16 :goto_2

    .line 285
    .end local v11           #multiple:F
    .end local v16           #textView:Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;
    :cond_5
    new-instance v16, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/content/Context;)V

    .restart local v16       #textView:Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;
    goto :goto_5

    .line 296
    .end local v16           #textView:Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;
    :pswitch_1
    if-eqz p2, :cond_6

    .line 297
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 p3, v0

    .end local p3
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #imageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 306
    .restart local v9       #imageView:Landroid/widget/ImageView;
    :goto_6
    const/16 v19, 0x12c

    const/16 v20, 0x12c

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SimplePduPart;->getImageNoCache(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 307
    goto/16 :goto_2

    .line 299
    .restart local p3
    :cond_6
    new-instance v9, Landroid/widget/ImageView;

    .end local v9           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v9       #imageView:Landroid/widget/ImageView;
    goto :goto_6

    .line 309
    :pswitch_2
    if-eqz p2, :cond_7

    .line 310
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 p3, v0

    .end local p3
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #imageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 314
    .restart local v9       #imageView:Landroid/widget/ImageView;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f02001f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 315
    goto/16 :goto_2

    .line 312
    .restart local p3
    :cond_7
    new-instance v9, Landroid/widget/ImageView;

    .end local v9           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v9       #imageView:Landroid/widget/ImageView;
    goto :goto_7

    .line 317
    :pswitch_3
    if-eqz p2, :cond_8

    .line 318
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 p3, v0

    .end local p3
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #imageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 322
    .restart local v9       #imageView:Landroid/widget/ImageView;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020025

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 323
    goto/16 :goto_2

    .line 320
    .restart local p3
    :cond_8
    new-instance v9, Landroid/widget/ImageView;

    .end local v9           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v9       #imageView:Landroid/widget/ImageView;
    goto :goto_8

    .line 325
    :pswitch_4
    if-eqz p2, :cond_9

    .line 326
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 p3, v0

    .end local p3
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #imageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 330
    .restart local v9       #imageView:Landroid/widget/ImageView;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020024

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 331
    goto/16 :goto_2

    .line 328
    .restart local p3
    :cond_9
    new-instance v9, Landroid/widget/ImageView;

    .end local v9           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v9       #imageView:Landroid/widget/ImageView;
    goto :goto_9

    .line 333
    :pswitch_5
    if-eqz p2, :cond_a

    .line 334
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 p3, v0

    .end local p3
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #imageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 338
    .restart local v9       #imageView:Landroid/widget/ImageView;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020022

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_2

    .line 336
    .restart local p3
    :cond_a
    new-instance v9, Landroid/widget/ImageView;

    .end local v9           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v9       #imageView:Landroid/widget/ImageView;
    goto :goto_a

    .line 363
    .end local p3
    .restart local v8       #height:I
    .restart local v18       #width:I
    :cond_b
    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 364
    move v0, v8

    mul-int/lit16 v0, v0, 0x12c

    move/from16 v19, v0

    div-int v8, v19, v18

    .line 365
    const/16 v18, 0x12c

    .line 366
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v19

    move/from16 v1, v18

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 368
    :cond_c
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 378
    .end local v8           #height:I
    .end local v18           #width:I
    :cond_d
    move-object/from16 v17, p2

    goto/16 :goto_4

    .line 386
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #imageView:Landroid/widget/ImageView;
    .end local v12           #padding:I
    .end local v15           #part:Lcom/android/mms/ui/SimplePduPart;
    .end local v17           #view:Landroid/view/View;
    .restart local p3
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x3

    return v0
.end method
