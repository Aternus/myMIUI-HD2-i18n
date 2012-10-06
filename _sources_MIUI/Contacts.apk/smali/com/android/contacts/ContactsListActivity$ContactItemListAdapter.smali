.class final Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactItemListAdapter"
.end annotation


# instance fields
.field private mDataColumnIndex:I

.field private mDisplayAdditionalData:Z

.field private mDisplayCallButton:Z

.field private mDisplayMark:Z

.field private mDisplayPhotos:Z

.field private mDisplaySectionHeaders:Z

.field private mFrequentSeparatorPos:I

.field private mHighlightingEnabled:Z

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mLabelColumnIndex:I

.field private mLoading:Z

.field private mNameColumnIndex:I

.field private mPaddingRight:I

.field private mPhoneticNameColumnIndex:I

.field private mPhotoColumnIndex:I

.field private mSuggestionsCursor:Landroid/database/Cursor;

.field private mSuggestionsCursorCount:I

.field private mTypeColumnIndex:I

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactsListActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 3057
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    .line 3058
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 3038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLoading:Z

    .line 3044
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    .line 3059
    const v0, 0x104000e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 3060
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->reloadFromMode()V

    .line 3061
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3036
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isSearchAllContactsItemPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3036
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    return v0
.end method

.method private buildDisplayNameWithHighlighting(Landroid/widget/TextView;Landroid/database/Cursor;Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;)V
    .locals 3
    .parameter "textView"
    .parameter "cursor"
    .parameter "buffer1"
    .parameter "buffer2"
    .parameter "textWithHighlighting"

    .prologue
    .line 3543
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I
    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$3700(Lcom/android/contacts/ContactsListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3544
    const/4 v0, 0x2

    .line 3548
    .local v0, oppositeDisplayOrderColumnIndex:I
    :goto_0
    invoke-interface {p2, v0, p4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3550
    invoke-virtual {p5, p3, p4}, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->setText(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V

    .line 3551
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3552
    return-void

    .line 3546
    .end local v0           #oppositeDisplayOrderColumnIndex:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #oppositeDisplayOrderColumnIndex:I
    goto :goto_0
.end method

.method private getRealPosition(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 3723
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v0, :cond_1

    .line 3726
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 3729
    const/4 v0, 0x1

    sub-int v0, p1, v0

    .line 3737
    :goto_0
    return v0

    .line 3733
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    sub-int v0, p1, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 3737
    goto :goto_0
.end method

.method private getSeparatorId(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 3292
    const/4 v0, 0x0

    .line 3294
    .local v0, separatorId:I
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v1, :cond_0

    .line 3295
    if-nez p1, :cond_1

    .line 3296
    const v0, 0x7f0b0029

    .line 3301
    :cond_0
    :goto_0
    return v0

    .line 3297
    :cond_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3298
    const v0, 0x7f0b002a

    goto :goto_0
.end method

.method private isSearchAllContactsItemPosition(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 3288
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2900(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowAllContactsItemPosition(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x32ffffba

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1400(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const-string v5, "address_book_index_titles"

    .line 3631
    if-nez p1, :cond_0

    .line 3632
    iput-object v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 3644
    :goto_0
    return-void

    .line 3636
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3637
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3638
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3639
    .local v2, sections:[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 3640
    .local v1, counts:[I
    new-instance v3, Lcom/android/contacts/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    goto :goto_0

    .line 3642
    .end local v1           #counts:[I
    .end local v2           #sections:[Ljava/lang/String;
    :cond_1
    iput-object v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 3681
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 39
    .parameter "itemView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3319
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3320
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/contacts/ContactListItemView;

    move-object/from16 v37, v0

    .line 3321
    .local v37, view:Lcom/android/contacts/ContactListItemView;
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;

    .line 3323
    .local v10, cache:Lcom/android/contacts/ContactsListActivity$ContactListItemCache;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mRowIDColumn:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 3324
    .local v17, itemId:J
    const/4 v4, 0x4

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 3326
    .local v32, starState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, 0x28c0003a

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, 0x140003b

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, -0x7fbfffa6

    if-ne v4, v5, :cond_8

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$300(Lcom/android/contacts/ContactsListActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 3331
    .local v21, marked:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v4, :sswitch_data_0

    .line 3351
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, 0x28200014

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, 0x28a00039

    if-ne v4, v5, :cond_2

    .line 3352
    :cond_1
    const v4, 0x7f0b0129

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setDeleteButtonText(I)V

    .line 3356
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mNameColumnIndex:I

    move v4, v0

    iget-object v5, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3357
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v5

    .line 3358
    .local v5, nameView:Landroid/widget/TextView;
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    move-object v0, v4

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v30, v0

    .line 3359
    .local v30, size:I
    if-eqz v30, :cond_a

    .line 3360
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mHighlightingEnabled:Z

    move v4, v0

    if-eqz v4, :cond_9

    .line 3361
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->textWithHighlighting:Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;

    if-nez v4, :cond_3

    .line 3362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$3200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/TextHighlightingAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/TextHighlightingAnimation;->createTextWithHighlighting()Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;

    move-result-object v4

    iput-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->textWithHighlighting:Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;

    .line 3365
    :cond_3
    iget-object v7, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v8, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->highlightedTextBuffer:Landroid/database/CharArrayBuffer;

    iget-object v9, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->textWithHighlighting:Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->buildDisplayNameWithHighlighting(Landroid/widget/TextView;Landroid/database/Cursor;Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;)V

    .line 3374
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mIsScrolling:Z
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$3300(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$3400(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/FastScroller;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3375
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    .line 3376
    .local v23, name:Ljava/lang/CharSequence;
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$3400(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/FastScroller;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #nameView:Landroid/widget/TextView;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/widget/FastScroller;->drawThumb(Ljava/lang/String;)V

    .line 3381
    .end local v23           #name:Ljava/lang/CharSequence;
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_b

    const/16 v4, 0xc

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    move v14, v4

    .line 3385
    .local v14, hasPhone:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayCallButton:Z

    move v4, v0

    if-eqz v4, :cond_c

    if-eqz v14, :cond_c

    .line 3386
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v27

    .line 3387
    .local v27, pos:I
    const v4, 0x1020019

    move-object/from16 v0, v37

    move v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->showCallButton(II)V

    .line 3392
    .end local v27           #pos:I
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayMark:Z

    move v4, v0

    if-eqz v4, :cond_d

    if-eqz v21, :cond_d

    .line 3393
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->showMark()V

    .line 3399
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    move v4, v0

    if-eqz v4, :cond_12

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_e

    const/4 v4, 0x1

    move/from16 v36, v4

    .line 3402
    .local v36, useQuickContact:Z
    :goto_6
    const-wide/16 v25, 0x0

    .line 3403
    .local v25, photoId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhotoColumnIndex:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhotoColumnIndex:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 3408
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3409
    .local v12, contactId:J
    if-eqz v36, :cond_f

    .line 3411
    const/16 v4, 0x8

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3412
    .local v20, lookupKey:Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v28

    .line 3413
    .local v28, quickContact:Landroid/widget/QuickContactBadge;
    move-wide v0, v12

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 3414
    move-object/from16 v38, v28

    .line 3419
    .end local v20           #lookupKey:Ljava/lang/String;
    .end local v28           #quickContact:Landroid/widget/QuickContactBadge;
    .local v38, viewToUse:Landroid/widget/ImageView;
    :goto_7
    const-wide/16 v6, 0x0

    cmp-long v4, v25, v6

    if-nez v4, :cond_10

    .line 3420
    move-object/from16 v0, v38

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Landroid/widget/QuickContactBadge;->setDefaultPhoto(Landroid/widget/ImageView;J)V

    .line 3421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$3500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 3426
    :goto_8
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->getStarredView()Landroid/widget/ImageView;

    move-result-object v33

    .line 3427
    .local v33, starredView:Landroid/widget/ImageView;
    if-nez v32, :cond_11

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->showStarred(Z)V

    .line 3432
    .end local v12           #contactId:J
    .end local v25           #photoId:J
    .end local v33           #starredView:Landroid/widget/ImageView;
    .end local v36           #useQuickContact:Z
    .end local v38           #viewToUse:Landroid/widget/ImageView;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v5, 0x4000

    and-int/2addr v4, v5

    if-nez v4, :cond_16

    .line 3435
    const/16 v4, 0xd

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 3436
    .local v22, miliaoStatus:I
    if-lez v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$3600(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 3453
    .end local v22           #miliaoStatus:I
    :goto_b
    const/16 v16, 0x0

    .line 3455
    .local v16, isLabelSet:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayAdditionalData:Z

    move v4, v0

    if-eqz v4, :cond_18

    .line 3457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDataColumnIndex:I

    move v4, v0

    iget-object v5, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->dataBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3459
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->dataBuffer:Landroid/database/CharArrayBuffer;

    move-object v0, v4

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v30, v0

    .line 3460
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->dataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v0, v37

    move-object v1, v4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->setData([CI)V

    .line 3463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mTypeColumnIndex:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mTypeColumnIndex:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 3465
    .local v35, type:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLabelColumnIndex:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3467
    .local v19, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, -0x1fffffc8

    if-eq v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, -0x1fffffc9

    if-ne v4, v5, :cond_17

    .line 3468
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v35

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 3473
    :goto_c
    const/16 v16, 0x1

    .line 3533
    .end local v19           #label:Ljava/lang/String;
    .end local v35           #type:I
    :cond_7
    :goto_d
    return-void

    .line 3326
    .end local v14           #hasPhone:Z
    .end local v16           #isLabelSet:Z
    .end local v21           #marked:Z
    .end local v30           #size:I
    :cond_8
    const/4 v4, 0x0

    move/from16 v21, v4

    goto/16 :goto_0

    .line 3333
    .restart local v21       #marked:Z
    :sswitch_0
    const v4, 0x10800df

    const v5, 0x10800da

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->setToggleMarkResource(II)V

    goto/16 :goto_1

    .line 3339
    :sswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->setToggleMarkResource(II)V

    goto/16 :goto_1

    .line 3344
    :sswitch_2
    const v4, 0x10800df

    const v5, 0x10800da

    move-object/from16 v0, v37

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->setToggleMarkResource(II)V

    goto/16 :goto_1

    .line 3368
    .restart local v5       #nameView:Landroid/widget/TextView;
    .restart local v30       #size:I
    :cond_9
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    move-object v0, v5

    move-object v1, v4

    move v2, v6

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    goto/16 :goto_2

    .line 3371
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3381
    .end local v5           #nameView:Landroid/widget/TextView;
    :cond_b
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_3

    .line 3389
    .restart local v14       #hasPhone:Z
    :cond_c
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->hideCallButton()V

    goto/16 :goto_4

    .line 3395
    :cond_d
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->hideMark()V

    goto/16 :goto_5

    .line 3400
    :cond_e
    const/4 v4, 0x0

    move/from16 v36, v4

    goto/16 :goto_6

    .line 3416
    .restart local v12       #contactId:J
    .restart local v25       #photoId:J
    .restart local v36       #useQuickContact:Z
    :cond_f
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v38

    .restart local v38       #viewToUse:Landroid/widget/ImageView;
    goto/16 :goto_7

    .line 3423
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$3500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v38

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoLoader;->loadPhoto(Landroid/widget/ImageView;J)V

    goto/16 :goto_8

    .line 3427
    .restart local v33       #starredView:Landroid/widget/ImageView;
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_9

    .line 3429
    .end local v12           #contactId:J
    .end local v25           #photoId:J
    .end local v33           #starredView:Landroid/widget/ImageView;
    .end local v36           #useQuickContact:Z
    .end local v38           #viewToUse:Landroid/widget/ImageView;
    :cond_12
    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/ContactListItemView;->hidePhotoView()V

    goto/16 :goto_a

    .line 3438
    .restart local v22       #miliaoStatus:I
    :cond_13
    const/4 v4, 0x6

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 3439
    const/4 v4, 0x6

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 3440
    .local v29, serverStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 3441
    .local v15, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_14

    .line 3442
    move-object/from16 v0, v37

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 3444
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 3447
    .end local v15           #icon:Landroid/graphics/drawable/Drawable;
    .end local v29           #serverStatus:I
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 3450
    .end local v22           #miliaoStatus:I
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 3470
    .restart local v16       #isLabelSet:Z
    .restart local v19       #label:Ljava/lang/String;
    .restart local v35       #type:I
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v35

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 3476
    .end local v19           #label:Ljava/lang/String;
    .end local v35           #type:I
    :cond_18
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_1a

    .line 3477
    const/16 v4, 0xe

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 3478
    .local v31, snippetMimeType:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "vnd.android.cursor.item/nickname"

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3479
    :cond_19
    const/16 v4, 0xf

    iget-object v5, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3480
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    move-object v0, v4

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v30, v0

    .line 3481
    if-lez v30, :cond_1a

    .line 3482
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v0, v37

    move-object v1, v4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->setLabel([CI)V

    .line 3483
    const/16 v16, 0x1

    .line 3502
    .end local v31           #snippetMimeType:Ljava/lang/String;
    :cond_1a
    :goto_e
    if-nez v16, :cond_1d

    .line 3503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhoneticNameColumnIndex:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1b

    .line 3505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhoneticNameColumnIndex:I

    move v4, v0

    iget-object v5, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3506
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    move-object v0, v4

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v30, v0

    .line 3507
    if-eqz v30, :cond_1b

    .line 3508
    iget-object v4, v10, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v0, v37

    move-object v1, v4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->setLabel([CI)V

    .line 3509
    const/16 v16, 0x1

    .line 3513
    :cond_1b
    if-nez v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, 0x8a00004

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, 0x28200014

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    iget v4, v4, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v5, 0x28a00039

    if-ne v4, v5, :cond_1d

    .line 3514
    :cond_1c
    const/16 v4, 0xb

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 3515
    .local v24, nickName:Ljava/lang/String;
    const/16 v4, 0xa

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3516
    .local v11, company:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 3517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 3518
    const/16 v16, 0x1

    .line 3529
    .end local v11           #company:Ljava/lang/String;
    .end local v24           #nickName:Ljava/lang/String;
    :cond_1d
    :goto_f
    if-nez v16, :cond_7

    .line 3530
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 3485
    .restart local v31       #snippetMimeType:Ljava/lang/String;
    :cond_1e
    const-string v4, "vnd.android.cursor.item/organization"

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3486
    const/16 v4, 0xf

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3487
    .restart local v11       #company:Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 3488
    .local v34, title:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 3489
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 3494
    :goto_10
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 3492
    :cond_1f
    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 3495
    :cond_20
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3496
    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 3497
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 3519
    .end local v31           #snippetMimeType:Ljava/lang/String;
    .end local v34           #title:Ljava/lang/String;
    .restart local v24       #nickName:Ljava/lang/String;
    :cond_21
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 3520
    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 3521
    const/16 v16, 0x1

    goto :goto_f

    .line 3522
    :cond_22
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 3523
    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 3524
    const/16 v16, 0x1

    goto/16 :goto_f

    .line 3331
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_2
        0x140003b -> :sswitch_0
        0x28a00039 -> :sswitch_1
    .end sparse-switch
.end method

.method public calcDisplaySectionHeaders()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2900(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1500(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 3145
    :goto_0
    return v0

    .line 3135
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 3145
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 3143
    goto :goto_0

    .line 3135
    :sswitch_data_0
    .sparse-switch
        -0x36ffffce -> :sswitch_0
        -0x1fffffcd -> :sswitch_0
        -0x1fffffc9 -> :sswitch_0
        -0x1fffffc8 -> :sswitch_0
        0x140003b -> :sswitch_0
        0x820001e -> :sswitch_0
        0x28a00023 -> :sswitch_0
    .end sparse-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x4

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 3582
    if-eqz p1, :cond_2

    .line 3583
    invoke-virtual {p0, v11}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setLoading(Z)V

    .line 3585
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v6, v6, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v7, 0x20

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v6, v6, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v7, 0x140003b

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v6, v6, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v7, -0x7fbfffa6

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 3588
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3589
    .local v0, count:I
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    const v7, 0x7f0700a7

    invoke-virtual {v6, v7}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3590
    .local v4, subHeader:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$1500(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3592
    if-lez v0, :cond_5

    move v6, v11

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3594
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$3800(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/SearchEditText;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3595
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$3800(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/SearchEditText;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    const v8, 0x7f0b0105

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/ContactsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3601
    .end local v0           #count:I
    .end local v4           #subHeader:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->calcDisplaySectionHeaders()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplaySectionHeaders:Z

    .line 3604
    iput v12, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    .line 3605
    if-eqz p1, :cond_4

    .line 3606
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v6, v6, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v7, 0x28a00023

    if-ne v6, v7, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 3607
    invoke-interface {p1, v12}, Landroid/database/Cursor;->move(I)Z

    .line 3608
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3609
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3610
    .local v3, starred:I
    if-nez v3, :cond_6

    .line 3611
    iput v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    .line 3617
    .end local v2           #i:I
    .end local v3           #starred:I
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$3900(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3618
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    const v7, 0x7f07005d

    invoke-virtual {v6, v7}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3619
    .local v1, foundContactsText:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const v8, 0x7f0b0048

    const v9, 0x7f0d0004

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/contacts/ContactsListActivity;->getQuantityText(III)Ljava/lang/String;

    move-result-object v5

    .line 3621
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3625
    .end local v1           #foundContactsText:Landroid/widget/TextView;
    .end local v5           #text:Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3627
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 3628
    return-void

    .restart local v0       #count:I
    .restart local v4       #subHeader:Landroid/widget/TextView;
    :cond_5
    move v6, v13

    .line 3592
    goto :goto_0

    .line 3608
    .end local v0           #count:I
    .end local v4           #subHeader:Landroid/widget/TextView;
    .restart local v2       #i:I
    .restart local v3       #starred:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 3696
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 3697
    const/4 v1, 0x0

    .line 3711
    :goto_0
    return v1

    .line 3699
    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 3701
    .local v0, superCount:I
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z
    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$2900(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3703
    add-int/lit8 v0, v0, 0x1

    .line 3706
    :cond_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v1, :cond_2

    .line 3709
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 3711
    goto :goto_0
.end method

.method public getFrequentSeparatorPos()I
    .locals 1

    .prologue
    .line 3577
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    .line 3743
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-gt p1, v1, :cond_0

    .line 3744
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealPosition(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3745
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 3753
    :goto_0
    return-object v1

    .line 3746
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isSearchAllContactsItemPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 3747
    goto :goto_0

    .line 3749
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealPosition(I)I

    move-result v0

    .line 3750
    .local v0, realPosition:I
    if-gez v0, :cond_2

    move-object v1, v2

    .line 3751
    goto :goto_0

    .line 3753
    :cond_2
    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "pos"

    .prologue
    const-wide/16 v3, 0x0

    .line 3759
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_1

    .line 3760
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3761
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mRowIDColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3772
    :goto_0
    return-wide v1

    :cond_0
    move-wide v1, v3

    .line 3763
    goto :goto_0

    .line 3765
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isSearchAllContactsItemPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v1, v3

    .line 3766
    goto :goto_0

    .line 3768
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealPosition(I)I

    move-result v0

    .line 3769
    .local v0, realPosition:I
    if-gez v0, :cond_3

    move-wide v1, v3

    .line 3770
    goto :goto_0

    .line 3772
    :cond_3
    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 3214
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isShowAllContactsItemPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3227
    :goto_0
    return v0

    .line 3218
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isSearchAllContactsItemPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 3219
    goto :goto_0

    .line 3222
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getSeparatorId(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 3224
    goto :goto_0

    .line 3227
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 3665
    const/4 v0, -0x1

    .line 3668
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 3719
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3672
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 3673
    const/4 v0, -0x1

    .line 3676
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 3656
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 3657
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 3659
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 3232
    iget-boolean v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDataValid:Z

    if-nez v6, :cond_0

    .line 3233
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "this should only be called when the cursor is valid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3237
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isShowAllContactsItemPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3238
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v6}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030011

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 3279
    :goto_0
    return-object v6

    .line 3242
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isSearchAllContactsItemPosition(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3243
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v6}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000f

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 3248
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getSeparatorId(I)I

    move-result v2

    .line 3249
    .local v2, separatorId:I
    if-eqz v2, :cond_3

    .line 3250
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v6}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002b

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3252
    .local v5, view:Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    move-object v6, v5

    .line 3253
    goto :goto_0

    .line 3258
    .end local v5           #view:Landroid/widget/TextView;
    :cond_3
    iget v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v6, v6, 0x2

    if-ge p1, v6, :cond_4

    .line 3259
    const/4 v3, 0x1

    .line 3260
    .local v3, showingSuggestion:Z
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 3266
    .local v0, cursor:Landroid/database/Cursor;
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealPosition(I)I

    move-result v1

    .line 3267
    .local v1, realPosition:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3268
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t move cursor to position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3262
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #realPosition:I
    .end local v3           #showingSuggestion:Z
    :cond_4
    const/4 v3, 0x0

    .line 3263
    .restart local v3       #showingSuggestion:Z
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mCursor:Landroid/database/Cursor;

    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_1

    .line 3272
    .restart local v1       #realPosition:I
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 3273
    :cond_6
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v0, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3277
    .local v4, v:Landroid/view/View;
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v6, v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v6, v4

    .line 3279
    goto :goto_0

    .line 3275
    .end local v4           #v:Landroid/view/View;
    :cond_7
    move-object v4, p2

    .restart local v4       #v:Landroid/view/View;
    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/high16 v2, 0x1000

    const/4 v1, 0x0

    .line 3192
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$3100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3193
    const/4 v0, 0x1

    .line 3207
    :goto_0
    return v0

    .line 3196
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2900(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3197
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1500(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 3198
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 3201
    goto :goto_0

    .line 3203
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLoading:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 3205
    goto :goto_0

    .line 3207
    :cond_4
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 3687
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    if-lez v0, :cond_1

    .line 3688
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    .line 3691
    :goto_0
    return v0

    .line 3688
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3691
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 3306
    new-instance v0, Lcom/android/contacts/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3307
    .local v0, view:Lcom/android/contacts/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v1, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setMode(I)V

    .line 3308
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPaddingRight:I

    if-eqz v1, :cond_0

    .line 3309
    iget v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPaddingRight:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setPaddingRight(I)V

    .line 3311
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 3312
    new-instance v1, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;

    invoke-direct {v1}, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setTag(Ljava/lang/Object;)V

    .line 3314
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 4

    .prologue
    .line 3165
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v2, v2, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x140003b

    if-ne v2, v3, :cond_0

    .line 3184
    :goto_0
    return-void

    .line 3170
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mIsActive:Z
    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$3000(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3171
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/contacts/ContactsListActivity;->mIsContentChanged:Z
    invoke-static {v2, v3}, Lcom/android/contacts/ContactsListActivity;->access$1102(Lcom/android/contacts/ContactsListActivity;Z)Z

    goto :goto_0

    .line 3175
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$1500(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;

    move-result-object v0

    .line 3176
    .local v0, constraint:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3178
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 3179
    .local v1, filter:Landroid/widget/Filter;
    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3182
    .end local v1           #filter:Landroid/widget/Filter;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v7, 0x0

    .line 3778
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4000(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez p2, :cond_0

    .line 3779
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4100(Lcom/android/contacts/ContactsListActivity;)V

    .line 3782
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4200(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3783
    invoke-virtual {p0, p2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getSectionForPosition(I)I

    move-result v5

    .line 3784
    .local v5, section:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 3785
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4200(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3786
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3787
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3788
    .local v1, needle:C
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabet:[C
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4300(Lcom/android/contacts/ContactsListActivity;)[C

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v2

    .line 3790
    .local v2, newIndex:I
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndex:I
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4400(Lcom/android/contacts/ContactsListActivity;)I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 3791
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #setter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndex:I
    invoke-static {v6, v2}, Lcom/android/contacts/ContactsListActivity;->access$4402(Lcom/android/contacts/ContactsListActivity;I)I

    .line 3792
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4200(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3795
    .local v4, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ui/widget/AlphabetScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/ui/widget/AlphabetScroller;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabet:[C
    invoke-static {v7}, Lcom/android/contacts/ContactsListActivity;->access$4300(Lcom/android/contacts/ContactsListActivity;)[C

    move-result-object v7

    array-length v7, v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 3796
    .local v0, alphabetHeight:F
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4200(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v0, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v7}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    add-float v3, v6, v7

    .line 3799
    .local v3, offset:F
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndex:I
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4400(Lcom/android/contacts/ContactsListActivity;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3800
    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->access$4200(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3805
    .end local v0           #alphabetHeight:F
    .end local v1           #needle:C
    .end local v2           #newIndex:I
    .end local v3           #offset:F
    .end local v4           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #section:I
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 3808
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2800(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3809
    if-eqz p2, :cond_2

    .line 3810
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$3200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/TextHighlightingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/TextHighlightingAnimation;->startHighlighting()V

    .line 3816
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    #setter for: Lcom/android/contacts/ContactsListActivity;->mIsScrolling:Z
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$3302(Lcom/android/contacts/ContactsListActivity;Z)Z

    .line 3817
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mIsScrolling:Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$3300(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3818
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$3500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->pause()V

    .line 3822
    :cond_1
    :goto_2
    return-void

    .line 3812
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$3200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/TextHighlightingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/TextHighlightingAnimation;->stopHighlighting()V

    goto :goto_0

    .line 3816
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 3819
    :cond_4
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    if-eqz v0, :cond_1

    .line 3820
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$3500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->resume()V

    goto :goto_2
.end method

.method public reloadFromMode()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3068
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->calcDisplaySectionHeaders()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplaySectionHeaders:Z

    .line 3070
    iput-boolean v5, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayAdditionalData:Z

    .line 3076
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x5fffffb0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mQueryMode:I
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2400(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 3077
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayAdditionalData:Z

    .line 3080
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 3081
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayAdditionalData:Z

    .line 3084
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_3

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayCallButton:Z

    .line 3085
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_4

    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayMark:Z

    .line 3087
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->getEnablePhoto()Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2500(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    .line 3088
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    #setter for: Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$2602(Lcom/android/contacts/ContactsListActivity;Z)Z

    .line 3089
    const-string v0, "ContactsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable photo init is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z
    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$2600(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 3114
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->getSummaryDisplayNameColumnIndex()I
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2700(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mNameColumnIndex:I

    .line 3115
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhotoColumnIndex:I

    .line 3116
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x7effffd5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x6effffd4

    if-ne v0, v1, :cond_6

    .line 3117
    :cond_2
    iput v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhoneticNameColumnIndex:I

    .line 3121
    :goto_3
    iput v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDataColumnIndex:I

    .line 3122
    iput v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mTypeColumnIndex:I

    .line 3123
    iput v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLabelColumnIndex:I

    .line 3124
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayAdditionalData:Z

    .line 3125
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$2800(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00023

    if-eq v0, v1, :cond_7

    move v0, v5

    :goto_4
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mHighlightingEnabled:Z

    .line 3128
    :goto_5
    return-void

    :cond_3
    move v0, v4

    .line 3084
    goto/16 :goto_0

    :cond_4
    move v0, v4

    .line 3085
    goto/16 :goto_1

    :cond_5
    move v0, v4

    .line 3087
    goto :goto_2

    .line 3095
    :sswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mNameColumnIndex:I

    .line 3096
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhotoColumnIndex:I

    .line 3097
    iput v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhoneticNameColumnIndex:I

    .line 3098
    iput v7, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDataColumnIndex:I

    .line 3099
    iput v5, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mTypeColumnIndex:I

    .line 3100
    iput v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLabelColumnIndex:I

    goto :goto_5

    .line 3105
    :sswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mNameColumnIndex:I

    .line 3106
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhotoColumnIndex:I

    .line 3107
    iput v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhoneticNameColumnIndex:I

    .line 3108
    iput v7, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDataColumnIndex:I

    .line 3109
    iput v5, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mTypeColumnIndex:I

    .line 3110
    iput v6, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLabelColumnIndex:I

    goto :goto_5

    .line 3119
    :cond_6
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPhoneticNameColumnIndex:I

    goto :goto_3

    :cond_7
    move v0, v4

    .line 3125
    goto :goto_4

    .line 3091
    :sswitch_data_0
    .sparse-switch
        -0x5fffffb0 -> :sswitch_0
        -0x36ffffce -> :sswitch_0
        -0x1fffffcd -> :sswitch_0
        -0x1fffffc9 -> :sswitch_1
        -0x1fffffc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 3652
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 3187
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLoading:Z

    .line 3188
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3064
    iput p1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mPaddingRight:I

    .line 3065
    return-void
.end method

.method public setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3153
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 3154
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I

    .line 3155
    return-void

    .line 3154
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method
