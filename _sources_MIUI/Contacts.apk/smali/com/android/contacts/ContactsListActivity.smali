.class public Lcom/android/contacts/ContactsListActivity;
.super Landroid/app/ListActivity;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/EditableListView$EditModeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;,
        Lcom/android/contacts/ContactsListActivity$ContactListItemCache;,
        Lcom/android/contacts/ContactsListActivity$QueryHandler;,
        Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;,
        Lcom/android/contacts/ContactsListActivity$DeleteClickListener;,
        Lcom/android/contacts/ContactsListActivity$ContactsSearchActivity;,
        Lcom/android/contacts/ContactsListActivity$JoinContactActivity;
    }
.end annotation


# static fields
.field private static final CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

.field static final CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field static final CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

.field static final LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

.field static final LEGACY_PHONES_PROJECTION:[Ljava/lang/String;

.field static final LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final POSTALS_PROJECTION:[Ljava/lang/String;

.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final sContactsIdMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAlphabet:[C

.field private mAlphabetIndex:I

.field private mAlphabetIndexBg:Landroid/widget/ImageView;

.field private mAlwaysDoFilterEvenWhenFilterIsEmpty:Z

.field private mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

.field private mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

.field private mCreateNew:Landroid/view/View;

.field private mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

.field private mDisplayOnlyPhones:Z

.field private mDisplayOrder:I

.field private mEnablePhotoBefore:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFooterView:Landroid/view/View;

.field private mGroupDelta:Lcom/android/contacts/model/GroupDelta;

.field private mGroupEditMode:Z

.field private mGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupUri:Landroid/net/Uri;

.field private mHighlightWhenScrolling:Z

.field private mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;

.field private mIconSize:I

.field private mInitialFilter:Ljava/lang/String;

.field private mIsActive:Z

.field private mIsContentChanged:Z

.field private mIsMiliaoInstalled:Z

.field private mIsScrolling:Z

.field private mJoinModeShowAllContacts:Z

.field private mJustCreated:Z

.field private mList:Landroid/widget/EditableListView;

.field private mListState:Landroid/os/Parcelable;

.field private mMarkedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMergedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mMiliaoCard:Landroid/view/View;

.field mMode:I

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mProviderStatus:I

.field private mProviderStatusObserver:Landroid/database/ContentObserver;

.field private mQueryAggregateId:J

.field private mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

.field private mQueryMode:I

.field private mReadOnlySourcesCnt:I

.field private mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

.field private mSearchEditText:Lcom/android/contacts/SearchEditText;

.field private mSearchInitiated:Z

.field private mSearchMode:Z

.field private mSearchResultsMode:Z

.field mSelectedContactUri:Landroid/net/Uri;

.field private mShortcutAction:Ljava/lang/String;

.field private mShowSearchBox:Z

.field private mSortOrder:I

.field private mTab:Lcom/android/contacts/DialtactsActivity;

.field private mWritableRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWritableSourcesCnt:I

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field final sLookupProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "display_name"

    .line 200
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

    .line 308
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "miliao_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 324
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

    .line 340
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "miliao_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "snippet_mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "snippet_data1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "snippet_data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

    .line 360
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name"

    aput-object v3, v0, v6

    const-string v1, "display_name"

    aput-object v3, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 387
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 396
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PHONES_PROJECTION:[Ljava/lang/String;

    .line 411
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->POSTALS_PROJECTION:[Ljava/lang/String;

    .line 419
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "data"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

    .line 426
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 529
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    .line 530
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 531
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 445
    const v0, 0x8a00004

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    .line 468
    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 475
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 481
    iput v2, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    .line 491
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    .line 494
    iput v2, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndex:I

    .line 516
    iput-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    .line 524
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lookup"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->sLookupProjection:[Ljava/lang/String;

    .line 598
    iput-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    .line 599
    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;

    .line 601
    new-instance v0, Lcom/android/contacts/ContactsListActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactsListActivity$1;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatusObserver:Landroid/database/ContentObserver;

    .line 961
    new-instance v0, Lcom/android/contacts/ContactsListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactsListActivity$2;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 3036
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->deleteContact(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->checkProviderState(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity;->mIsContentChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/ContactsListActivity;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/ContactsListActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/ContactsListActivity;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/ContactsListActivity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getShowAllContactsLabelCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->createNew()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getShowGuidePopupWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/ContactsListActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/ContactsListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->setShowGuidePopupWindow(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/ContactsListActivity;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/ContactsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getEnablePhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getSummaryDisplayNameColumnIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactsListActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/TextHighlightingAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/FastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFastScroller:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactPhotoLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactsListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/contacts/ContactsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/contacts/ContactsListActivity;)[C
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabet:[C

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndex:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/contacts/ContactsListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndex:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ui/widget/AlphabetScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/model/GroupDelta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactsListActivity;->setAsStar(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method private buildMergedGroupIds(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string v3, "\'"

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1425
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1426
    if-lez v1, :cond_0

    .line 1427
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    :cond_0
    const-string v2, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1431
    const-string v2, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1433
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 2596
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private buildUserGroupUri(Ljava/lang/String;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 1420
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1421
    return-void
.end method

.method private buildUserGroupUri(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1415
    .local p1, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_IDS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->buildMergedGroupIds(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1417
    return-void
.end method

.method private checkProviderState(Z)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 1533
    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1534
    if-nez v8, :cond_0

    move v1, v11

    .line 1593
    :goto_0
    return v1

    .line 1538
    :cond_0
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 1542
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v5, "status"

    aput-object v5, v3, v10

    const-string v5, "data1"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1546
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1547
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1548
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-eq v2, v3, :cond_1

    .line 1549
    iput v2, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    packed-switch v2, :pswitch_data_0

    .line 1586
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1589
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-ne v1, v12, :cond_3

    move v1, v10

    :goto_2
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-nez v1, :cond_4

    move v1, v11

    goto :goto_0

    .line 1552
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    .line 1553
    if-eqz p1, :cond_1

    .line 1554
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1586
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1559
    :pswitch_1
    const v2, 0x7f0b00f9

    :try_start_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1560
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1561
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 1565
    :pswitch_2
    const-string v2, "ContactsListActivity"

    const-string v3, "Provider is upgrading, wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const v2, 0x7f0b00fa

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1567
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1568
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 1572
    :pswitch_3
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1573
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00fb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1575
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1576
    invoke-direct {p0, v8}, Lcom/android/contacts/ContactsListActivity;->configureImportFailureView(Landroid/view/View;)V

    .line 1577
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1578
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 1583
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1589
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    :cond_4
    move v1, v10

    .line 1593
    goto/16 :goto_0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private configureImportFailureView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1598
    new-instance v1, Lcom/android/contacts/ContactsListActivity$8;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$8;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    .line 1616
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1617
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 1620
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1621
    return-void
.end method

.method private createNew()V
    .locals 4

    .prologue
    const/high16 v3, 0x1000

    const-string v2, "android.intent.action.INSERT"

    .line 1316
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-ne v0, v1, :cond_1

    .line 1317
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAddMemberActivity()V

    .line 1337
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00023

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-ne v0, v1, :cond_3

    .line 1319
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startFavoritePickerActivity()V

    goto :goto_0

    .line 1320
    :cond_3
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x667fffd3

    if-ne v0, v1, :cond_5

    .line 1321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1322
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1323
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1324
    if-eqz v1, :cond_4

    .line 1325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1328
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1329
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    .line 1330
    :cond_5
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    .line 1331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1332
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1334
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1335
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteContact(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 540
    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 545
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/contacts/ContactsUtils;->updateDeleteContactCallLogs(Landroid/content/Context;J)V

    .line 548
    :cond_0
    return-void
.end method

.method private deleteSelection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2158
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    .line 2170
    :goto_0
    return v0

    .line 2162
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2163
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2164
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 2165
    if-eqz v0, :cond_1

    .line 2166
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->doContactDelete(Landroid/net/Uri;)V

    .line 2167
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2170
    goto :goto_0
.end method

.method private doSearch()V
    .locals 5

    .prologue
    const-string v4, "phone"

    .line 1850
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    .line 1851
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1886
    :goto_0
    return-void

    .line 1855
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/SearchResultsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1856
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1857
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1858
    if-eqz v2, :cond_1

    .line 1859
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1862
    :cond_1
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1863
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v3, -0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 1864
    const-string v2, "com.android.contacts.INTERNAL_SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1865
    const-string v2, "shortcutAction"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1866
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1867
    const-string v2, "android.intent.action.CALL"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.SENDTO"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1869
    :cond_2
    const-string v2, "phone"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1881
    :cond_3
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1872
    :cond_4
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1874
    :pswitch_0
    const-string v2, "email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1877
    :pswitch_1
    const-string v2, "phone"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1883
    :cond_5
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1884
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1872
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAddToGroupFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "filter"

    .prologue
    .line 2580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2581
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2583
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filter"

    .prologue
    .line 2566
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2567
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2572
    .local v0, baseUri:Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->calcDisplaySectionHeaders()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2573
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2575
    :goto_1
    return-object v1

    .line 2569
    .end local v0           #baseUri:Landroid/net/Uri;
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v0       #baseUri:Landroid/net/Uri;
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 2575
    goto :goto_1
.end method

.method private getContactSelection()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "data2"

    .line 2546
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x36ffffce

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data2"

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2561
    :goto_0
    return-object v0

    .line 2550
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x7fbfffa6

    if-ne v0, v1, :cond_2

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2553
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v1, :cond_1

    .line 2554
    const-string v1, "has_phone_number=1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    :cond_1
    const-string v1, "starred=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2561
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v0, :cond_3

    const-string v0, "has_phone_number=1"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContactUri(I)Landroid/net/Uri;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2430
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position not in list bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2435
    if-nez v0, :cond_1

    .line 2436
    const/4 v0, 0x0

    .line 2450
    :goto_0
    return-object v0

    .line 2439
    :cond_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 2448
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2449
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2450
    invoke-static {v1, v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2442
    :sswitch_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2443
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2439
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7effffd5 -> :sswitch_0
        -0x6effffd4 -> :sswitch_0
    .end sparse-switch
.end method

.method private getEnablePhoto()Z
    .locals 3

    .prologue
    .line 3031
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3032
    const-string v1, "pref_key_enable_contact_photo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 2601
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2602
    iget-wide v1, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2603
    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2605
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2607
    :cond_0
    const-string v1, "limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2608
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "filter"

    .prologue
    .line 2588
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2589
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2591
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getSelectedUri(I)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 2460
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position not in list bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2464
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 2465
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v2, :sswitch_data_0

    .line 2484
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2468
    :sswitch_0
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2472
    :sswitch_1
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2475
    :sswitch_2
    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2478
    :sswitch_3
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2481
    :sswitch_4
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2465
    :sswitch_data_0
    .sparse-switch
        -0x7effffd5 -> :sswitch_0
        -0x6effffd4 -> :sswitch_0
        -0x5fffffb0 -> :sswitch_1
        -0x36ffffce -> :sswitch_1
        -0x1fffffcd -> :sswitch_2
        -0x1fffffc9 -> :sswitch_3
        -0x1fffffc8 -> :sswitch_4
    .end sparse-switch
.end method

.method private getShowAllContactsLabelCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "projection"

    .prologue
    .line 2837
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2838
    .local v0, matrixCursor:Landroid/database/MatrixCursor;
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 2840
    .local v1, row:[Ljava/lang/Object;
    const/4 v2, 0x0

    const-wide/16 v3, -0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2841
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2842
    return-object v0
.end method

.method private getShowGuidePopupWindow()Z
    .locals 3

    .prologue
    .line 3919
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3920
    const-string v1, "show_guide_popup_window"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2612
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2613
    const-string v0, "sort_key"

    .line 2615
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sort_key_alt"

    goto :goto_0
.end method

.method private getSummaryDisplayNameColumnIndex()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1267
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getTextFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1627
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUriToQuery()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2361
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 2420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2363
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2417
    :goto_0
    return-object v0

    .line 2366
    :sswitch_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2374
    :sswitch_2
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

    goto :goto_0

    .line 2377
    :sswitch_3
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2381
    :sswitch_4
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2384
    :sswitch_5
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2387
    :sswitch_6
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2390
    :sswitch_7
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2393
    :sswitch_8
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2396
    :sswitch_9
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2397
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2399
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2400
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2403
    :cond_1
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

    goto :goto_0

    .line 2408
    :sswitch_a
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2411
    :sswitch_b
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2417
    :sswitch_c
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    goto :goto_0

    .line 2361
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_2
        -0x7effffd5 -> :sswitch_4
        -0x77ffffbf -> :sswitch_9
        -0x76ffffd8 -> :sswitch_2
        -0x6effffd4 -> :sswitch_4
        -0x667fffd6 -> :sswitch_2
        -0x667fffd3 -> :sswitch_2
        -0x5fffffb0 -> :sswitch_b
        -0x57ffffab -> :sswitch_a
        -0x56ffffb5 -> :sswitch_a
        -0x36ffffce -> :sswitch_5
        -0x32ffffba -> :sswitch_0
        -0x1fffffcd -> :sswitch_6
        -0x1fffffc9 -> :sswitch_7
        -0x1fffffc8 -> :sswitch_8
        0x8 -> :sswitch_2
        0x140003b -> :sswitch_c
        0x820001e -> :sswitch_1
        0x8a00004 -> :sswitch_2
        0x2800003c -> :sswitch_a
        0x28200014 -> :sswitch_1
        0x28a00023 -> :sswitch_3
        0x28a00039 -> :sswitch_c
        0x28c0003a -> :sswitch_c
    .end sparse-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 2323
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2325
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2326
    return-void
.end method

.method private queryContactSources(Landroid/net/Uri;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2191
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    .line 2192
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    .line 2193
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2195
    invoke-static {p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v6

    .line 2196
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2199
    if-eqz v0, :cond_2

    .line 2201
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2202
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2203
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2204
    const/4 v4, 0x1

    invoke-virtual {v6, v1, v4}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v1

    .line 2206
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-eqz v1, :cond_0

    .line 2207
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2214
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2209
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    .line 2210
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2214
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2217
    :cond_2
    return-void
.end method

.method private queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 1
    .parameter "contactId"

    .prologue
    .line 2909
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/contacts/ContactsUtils;->queryPhoneNumbers(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private registerProviderStatusObserver()V
    .locals 4

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1135
    return-void
.end method

.method private returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const-string v4, "android.intent.extra.shortcut.NAME"

    .line 2340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2342
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2343
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ShortcutRouterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2344
    const-string v2, "android.intent.action.VIEW_CONTACT_SHORTCUT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2345
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2346
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2347
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2348
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 2357
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 2358
    return-void

    .line 2351
    :cond_0
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x36ffffce

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x5fffffb0

    if-ne v1, v2, :cond_2

    .line 2352
    :cond_1
    const-string v1, "data1"

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2354
    :cond_2
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2355
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private setAsStar(Landroid/net/Uri;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3826
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3827
    const-string v1, "starred"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3828
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3829
    return-void
.end method

.method private setDefaultMode()V
    .locals 3

    .prologue
    .line 1441
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1442
    const-string v1, "only_phones"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 1443
    return-void
.end method

.method private setDeleteButtonBarMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3904
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-ne v0, v1, :cond_1

    .line 3905
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setMode(ILandroid/widget/EditableListView;)V

    .line 3911
    :cond_0
    :goto_0
    return-void

    .line 3906
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-ne v0, v1, :cond_2

    .line 3907
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setMode(ILandroid/widget/EditableListView;)V

    goto :goto_0

    .line 3908
    :cond_2
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_0

    .line 3909
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setMode(ILandroid/widget/EditableListView;)V

    goto :goto_0
.end method

.method private setDeleteButtonBarText(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 3894
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-ne v0, v1, :cond_1

    .line 3895
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setRemoveButtonText(II)V

    .line 3901
    :cond_0
    :goto_0
    return-void

    .line 3896
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-ne v0, v1, :cond_2

    .line 3897
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setRemoveButtonText(II)V

    goto :goto_0

    .line 3898
    :cond_2
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_0

    .line 3899
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setRemoveButtonText(II)V

    goto :goto_0
.end method

.method private setEmptyText()V
    .locals 7

    .prologue
    const v6, 0x1080533

    const/4 v5, 0x0

    .line 1354
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x32ffffba

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1363
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1366
    :cond_2
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1367
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1368
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1369
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1370
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1371
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    const v2, 0x7f070056

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1375
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28a00039

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28c0003a

    if-ne v3, v4, :cond_4

    .line 1376
    :cond_3
    const v3, 0x7f0b0154

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1377
    const v1, 0x7f0b0159

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1378
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1379
    :cond_4
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28a00023

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28200014

    if-ne v3, v4, :cond_6

    .line 1380
    :cond_5
    const v3, 0x7f0b0153

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    const v1, 0x7f0b0158

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1382
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1383
    :cond_6
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x2800003c

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x56ffffb5

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x5fffffb0

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x77ffffbf

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x57ffffab

    if-ne v2, v3, :cond_8

    .line 1386
    :cond_7
    const v2, 0x7f0b0043

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1389
    :cond_8
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 1392
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1393
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1398
    if-eqz v0, :cond_9

    .line 1399
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1403
    :cond_9
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1404
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1407
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1408
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setHeaderIcon()V
    .locals 4

    .prologue
    const v3, 0x7f0700ad

    .line 996
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getEnablePhoto()Z

    move-result v1

    .line 1002
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    const v2, 0x7f0700a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1003
    if-eqz v1, :cond_2

    .line 1004
    const v1, 0x10803b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1007
    :cond_2
    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setShowGuidePopupWindow(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3914
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3915
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_guide_popup_window"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3916
    return-void
.end method

.method private setupAddToFavoriteView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1102
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1106
    const v1, 0x7f0b0112

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1107
    new-instance v1, Lcom/android/contacts/ContactsListActivity$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$5;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$6;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    return-void
.end method

.method private setupAddToGroupView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1081
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1085
    const v1, 0x7f0b0112

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1086
    new-instance v1, Lcom/android/contacts/ContactsListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$3;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$4;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    return-void
.end method

.method private setupFastScroller()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1051
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/AlphabetScroller;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

    .line 1052
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_3

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setList(Landroid/widget/AbsListView;Landroid/widget/SectionIndexer;)V

    .line 1056
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setPaddingRight(I)V

    .line 1058
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-ne v0, v1, :cond_1

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setImageResource(I)V

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFastScroller:Landroid/widget/FastScroller;

    .line 1063
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 1067
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v3}, Landroid/widget/EditableListView;->setVerticalScrollBarEnabled(Z)V

    .line 1073
    :cond_2
    :goto_0
    return-void

    .line 1068
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

    if-eqz v0, :cond_2

    .line 1069
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mScrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;

    invoke-virtual {v0, v4}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method private setupGroupView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1076
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    return-void
.end method

.method private setupHeader()V
    .locals 8

    .prologue
    const/high16 v7, 0x1000

    const/high16 v6, 0x80

    const v2, 0x7f0700a5

    const/4 v5, 0x0

    .line 1013
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1014
    if-nez v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1042
    :goto_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_0

    .line 1044
    :cond_2
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1045
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1019
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1022
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0119

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1025
    :sswitch_2
    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1028
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1032
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1037
    :sswitch_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1017
    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_4
        -0x667fffd6 -> :sswitch_5
        -0x667fffd3 -> :sswitch_5
        -0x32ffffba -> :sswitch_3
        0x140003b -> :sswitch_1
        0x28a00023 -> :sswitch_2
        0x28a00039 -> :sswitch_0
    .end sparse-switch
.end method

.method private setupListView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1146
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    .line 1148
    new-instance v0, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    const/16 v2, 0x15e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;-><init>(Landroid/widget/ListView;ILcom/android/contacts/ContactsListActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;

    .line 1153
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v4}, Landroid/widget/EditableListView;->setDividerHeight(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1156
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1159
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 1161
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1162
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1163
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1164
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1167
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v4}, Landroid/widget/EditableListView;->setSaveEnabled(Z)V

    .line 1170
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_1

    .line 1171
    :cond_0
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/ContactDeleteButtonBar;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    .line 1172
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setDeleteButtonBarMode(I)V

    .line 1175
    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->setDeleteButtonBarText(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    new-instance v1, Lcom/android/contacts/ContactsListActivity$7;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$7;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 1246
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 1247
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 1248
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 1250
    :cond_1
    return-void
.end method

.method private setupSearchView()V
    .locals 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0, p0}, Lcom/android/contacts/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1258
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0, p0}, Lcom/android/contacts/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1260
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    return-void
.end method

.method private showSoftKeyboard()V
    .locals 3

    .prologue
    .line 2330
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2332
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2333
    return-void
.end method

.method private startAccountSettings()V
    .locals 5

    .prologue
    .line 1789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1790
    const-string v1, "authorities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.contacts"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1793
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1794
    return-void
.end method

.method private startAddContactActivity()V
    .locals 3

    .prologue
    .line 3848
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3849
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 3850
    return-void
.end method

.method private startAddMemberActivity()V
    .locals 3

    .prologue
    .line 3859
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3860
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.ADD_TO_GROUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3861
    const-string v1, "com.android.contacts.extra.GROUP_ID"

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3862
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3863
    return-void
.end method

.method private startFavoritePickerActivity()V
    .locals 2

    .prologue
    .line 3853
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3854
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.PICK_FAVORITE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3855
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 3856
    return-void
.end method

.method private toggleMarkedItem(Lcom/android/contacts/ContactListItemView;J)V
    .locals 2
    .parameter "item"
    .parameter "id"

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3839
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3840
    invoke-virtual {p1}, Lcom/android/contacts/ContactListItemView;->hideMark()V

    .line 3845
    :goto_0
    return-void

    .line 3842
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3843
    invoke-virtual {p1}, Lcom/android/contacts/ContactListItemView;->showMark()V

    goto :goto_0
.end method

.method private unregisterProviderStatusObserver()V
    .locals 2

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1143
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->onSearchTextChanged()V

    .line 2114
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2117
    return-void
.end method

.method callContact(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2859
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ContactsListActivity;->callOrSmsContact(Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method

.method callOrSmsContact(Landroid/database/Cursor;Z)Z
    .locals 5
    .parameter "cursor"
    .parameter "sendSms"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2871
    if-nez p1, :cond_0

    move v2, v3

    .line 2902
    :goto_0
    return v2

    .line 2875
    :cond_0
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v2, :sswitch_data_0

    .line 2895
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v4

    .line 2896
    .local v0, hasPhone:Z
    :goto_1
    if-nez v0, :cond_3

    .line 2898
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->signalError()V

    move v2, v3

    .line 2899
    goto :goto_0

    .line 2879
    .end local v0           #hasPhone:Z
    :sswitch_0
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2880
    .local v1, phone:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2881
    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_2
    move v2, v4

    .line 2885
    goto :goto_0

    .line 2883
    :cond_1
    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .end local v1           #phone:Ljava/lang/String;
    :sswitch_1
    move v2, v3

    .line 2890
    goto :goto_0

    :cond_2
    move v0, v3

    .line 2895
    goto :goto_1

    .line 2902
    .restart local v0       #hasPhone:Z
    :cond_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p2}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZ)Z

    move-result v2

    goto :goto_0

    .line 2875
    :sswitch_data_0
    .sparse-switch
        -0x5fffffb0 -> :sswitch_0
        -0x36ffffce -> :sswitch_0
        -0x1fffffcd -> :sswitch_0
        -0x1fffffc9 -> :sswitch_1
        -0x1fffffc8 -> :sswitch_1
    .end sparse-switch
.end method

.method callSelection()Z
    .locals 3

    .prologue
    .line 2850
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2851
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2852
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2853
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->callContact(Landroid/database/Cursor;)Z

    move-result v2

    .line 2855
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected doContactDelete(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 2177
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->queryContactSources(Landroid/net/Uri;)V

    .line 2178
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity;->mSelectedContactUri:Landroid/net/Uri;

    .line 2179
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    if-lez v0, :cond_0

    .line 2180
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    .line 2188
    :goto_0
    return-void

    .line 2181
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    if-nez v0, :cond_1

    .line 2182
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    goto :goto_0

    .line 2183
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2184
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    goto :goto_0

    .line 2186
    :cond_2
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    goto :goto_0
.end method

.method doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2745
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2746
    if-nez v0, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->getProjectionForQuery(Z)[Ljava/lang/String;

    move-result-object v2

    .line 2747
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2748
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2829
    :goto_1
    return-object v0

    :cond_0
    move v1, v6

    .line 2746
    goto :goto_0

    .line 2752
    :cond_1
    if-eqz v0, :cond_2

    .line 2753
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlwaysDoFilterEvenWhenFilterIsEmpty:Z

    if-nez v0, :cond_3

    .line 2754
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2757
    :cond_2
    iput-boolean v3, p0, Lcom/android/contacts/ContactsListActivity;->mAlwaysDoFilterEvenWhenFilterIsEmpty:Z

    .line 2760
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2761
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 2833
    :sswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filtering not allowed in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2768
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2775
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getAddToGroupFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2781
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "display_name"

    move-object v3, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2786
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "starred=1"

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2792
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "times_contacted > 0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "times_contacted DESC, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2800
    :sswitch_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2801
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    move-object v3, v4

    move-object v5, v4

    .line 2806
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2804
    :cond_4
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 2810
    :sswitch_7
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v1

    .line 2811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2812
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2814
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2825
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2827
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 2828
    iput-boolean v6, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    .line 2829
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id != "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2761
    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_1
        -0x7effffd5 -> :sswitch_3
        -0x76ffffd8 -> :sswitch_1
        -0x6effffd4 -> :sswitch_3
        -0x667fffd6 -> :sswitch_1
        -0x667fffd3 -> :sswitch_1
        -0x36ffffce -> :sswitch_7
        -0x32ffffba -> :sswitch_8
        -0x1fffffcd -> :sswitch_0
        0x8 -> :sswitch_1
        0x140003b -> :sswitch_2
        0x820001e -> :sswitch_5
        0x8a00004 -> :sswitch_1
        0x28200014 -> :sswitch_4
        0x28a00023 -> :sswitch_6
        0x28a00039 -> :sswitch_2
        0x28c0003a -> :sswitch_2
    .end sparse-switch
.end method

.method getProjectionForQuery(Z)[Ljava/lang/String;
    .locals 2
    .parameter "filterMode"

    .prologue
    .line 2490
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 2538
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 2501
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2508
    :sswitch_1
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2512
    :sswitch_2
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2516
    :sswitch_3
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2519
    :sswitch_4
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PHONES_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2522
    :sswitch_5
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->POSTALS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2525
    :sswitch_6
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2528
    :sswitch_7
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2529
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

    goto :goto_0

    .line 2530
    :cond_3
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2531
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2490
    :sswitch_data_0
    .sparse-switch
        -0x7effffd5 -> :sswitch_2
        -0x77ffffbf -> :sswitch_7
        -0x76ffffd8 -> :sswitch_0
        -0x6effffd4 -> :sswitch_2
        -0x667fffd6 -> :sswitch_0
        -0x667fffd3 -> :sswitch_0
        -0x5fffffb0 -> :sswitch_3
        -0x57ffffab -> :sswitch_1
        -0x56ffffb5 -> :sswitch_1
        -0x36ffffce -> :sswitch_3
        -0x32ffffba -> :sswitch_0
        -0x1fffffcd -> :sswitch_4
        -0x1fffffc9 -> :sswitch_5
        -0x1fffffc8 -> :sswitch_6
        0x8 -> :sswitch_0
        0x820001e -> :sswitch_0
        0x8a00004 -> :sswitch_0
        0x2800003c -> :sswitch_1
        0x28200014 -> :sswitch_0
        0x28a00023 -> :sswitch_0
        0x28a00039 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getQuantityText(III)Ljava/lang/String;
    .locals 4
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 2914
    if-nez p1, :cond_0

    .line 2915
    invoke-virtual {p0, p2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2918
    :goto_0
    return-object v1

    .line 2917
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2918
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 1945
    packed-switch p1, :pswitch_data_0

    .line 1998
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1947
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 1948
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1954
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1962
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 1963
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1964
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    .line 1968
    :pswitch_4
    if-ne p2, v0, :cond_0

    .line 1969
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1971
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 1979
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/GroupDelta;->setRingtoneToGroupMembers(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1980
    const v0, 0x7f0b0151

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1975
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1988
    :pswitch_5
    if-ne p2, v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1991
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 1992
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1994
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUri(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1344
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-ne v0, v1, :cond_0

    .line 1345
    const v0, 0x28a00039

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    .line 1349
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 1
    .parameter "checkable"

    .prologue
    .line 3890
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->count()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setDeleteButtonBarText(I)V

    .line 3891
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1277
    sparse-switch v0, :sswitch_data_0

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1280
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1281
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1282
    if-eqz v1, :cond_0

    .line 1283
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1284
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->callContact(Landroid/database/Cursor;)Z

    goto :goto_0

    .line 1289
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAccountSettings()V

    goto :goto_0

    .line 1293
    :sswitch_2
    const v0, 0x7f0b007a

    invoke-static {v0, p0}, Lcom/android/contacts/ContactsPreferenceActivity;->handleImportRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 1297
    :sswitch_3
    const v0, 0x7f0b007b

    invoke-static {v0, p0}, Lcom/android/contacts/ContactsPreferenceActivity;->handleImportRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 1302
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->createNew()V

    goto :goto_0

    .line 1306
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1307
    const-string v1, "android.intent.action.CLOUD_RESTORE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    const-string v1, "cloud_restore_type"

    const-string v2, "ADDRESSBOOK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1277
    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x7f070051 -> :sswitch_1
        0x7f070052 -> :sswitch_5
        0x7f070053 -> :sswitch_2
        0x7f070054 -> :sswitch_3
        0x7f070055 -> :sswitch_4
        0x7f0700a8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2059
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 2067
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2090
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    const-string v1, "ContactsListActivity"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 2062
    goto :goto_0

    .line 2070
    :pswitch_1
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->setAsStar(Landroid/net/Uri;I)V

    move v0, v3

    .line 2071
    goto :goto_0

    :cond_0
    move v1, v4

    .line 2070
    goto :goto_1

    .line 2075
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->callContact(Landroid/database/Cursor;)Z

    move v0, v3

    .line 2076
    goto :goto_0

    .line 2080
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->smsContact(Landroid/database/Cursor;)Z

    move v0, v3

    .line 2081
    goto :goto_0

    .line 2085
    :pswitch_4
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->doContactDelete(Landroid/net/Uri;)V

    move v0, v3

    .line 2086
    goto :goto_0

    .line 2067
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const v10, 0x8a00004

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "phone"

    .line 611
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mIconSize:I

    .line 614
    new-instance v0, Lcom/android/contacts/ui/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

    .line 616
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlphabet:[C

    .line 618
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/DialtactsActivity;

    if-eqz v0, :cond_a

    .line 619
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/DialtactsActivity;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    .line 620
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/DialtactsActivity;->getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 621
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/DialtactsActivity;->getFooterView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;

    .line 627
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 630
    const-string v0, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 641
    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 642
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    .line 643
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 644
    if-eqz v3, :cond_b

    .line 645
    const-string v4, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 646
    const-string v4, "originalAction"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 648
    if-eqz v4, :cond_1

    move-object v0, v4

    .line 651
    :cond_1
    const-string v4, "originalComponent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_2
    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    .line 661
    :goto_1
    const-string v3, "ContactsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called with action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iput v8, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 663
    const-string v3, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 664
    :cond_3
    iput v10, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 878
    :cond_4
    :goto_2
    const-string v0, "com.android.contacts.action.JOIN_AGGREGATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_3c

    .line 880
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 893
    :cond_5
    :goto_3
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    if-nez v0, :cond_6

    .line 894
    iput v10, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 897
    :cond_6
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_3d

    move v1, v7

    .line 899
    :goto_4
    if-eqz v1, :cond_3e

    .line 900
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 920
    :cond_7
    :goto_5
    if-eqz v1, :cond_43

    .line 921
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupGroupView()V

    .line 947
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/ui/ContactsPreferences;->getSortOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    .line 948
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    .line 949
    new-instance v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    .line 950
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    if-eqz v0, :cond_9

    .line 951
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupSearchView()V

    .line 954
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupHeader()V

    .line 955
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupListView()V

    .line 956
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupFastScroller()V

    .line 957
    new-instance v0, Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    .line 958
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    .line 959
    :goto_7
    return-void

    .line 623
    :cond_a
    new-instance v0, Lcom/android/contacts/ContactPhotoLoader;

    const v1, 0x10803b6

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    goto/16 :goto_0

    .line 657
    :cond_b
    iput-object v9, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    :cond_c
    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_1

    .line 667
    :cond_d
    const-string v3, "com.android.contacts.action.ADD_TO_GROUP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 668
    const v0, 0x140003b

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 669
    const-string v0, "com.android.contacts.extra.GROUP_ID"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    .line 673
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 674
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v3, v4, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 675
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 676
    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    int-to-long v5, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v5, v6, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 680
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-nez v0, :cond_f

    .line 681
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_7

    .line 684
    :cond_f
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_ACCOUNT_NOT_GROUP_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/contacts/ContactsListActivity;->buildMergedGroupIds(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 687
    :cond_10
    const-string v3, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 688
    const v0, 0x28a00039

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 689
    const-string v0, "com.android.contacts.extra.GROUP_ID"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    .line 690
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 691
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v3, v4, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 692
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 693
    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    int-to-long v5, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v5, v6, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 696
    :cond_11
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_12

    .line 697
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUri(Ljava/util/ArrayList;)V

    .line 706
    :cond_12
    :goto_a
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 707
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 700
    :cond_13
    const-string v0, "com.android.contacts.extra.GROUP"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 702
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUri(Ljava/lang/String;)V

    goto :goto_a

    .line 710
    :cond_14
    const-string v3, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 711
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 712
    iput-boolean v8, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto/16 :goto_2

    .line 713
    :cond_15
    const-string v3, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 714
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_16

    move v0, v10

    :goto_b
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    :cond_16
    const v0, 0x28200014

    goto :goto_b

    .line 715
    :cond_17
    const-string v3, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 716
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_18

    move v0, v10

    :goto_c
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    :cond_18
    const v0, 0x820001e

    goto :goto_c

    .line 717
    :cond_19
    const-string v3, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 718
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_1a

    move v0, v10

    :goto_d
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    :cond_1a
    const v0, 0x28a00023

    goto :goto_d

    .line 719
    :cond_1b
    const-string v3, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 720
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 721
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto/16 :goto_2

    .line 722
    :cond_1c
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 725
    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 726
    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 727
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 728
    :cond_1d
    const-string v3, "vnd.android.cursor.dir/person"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 729
    const v0, -0x7effffd5

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 730
    :cond_1e
    const-string v3, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 731
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 732
    :cond_1f
    const-string v3, "vnd.android.cursor.dir/phone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 733
    const v0, -0x1fffffcd

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 734
    :cond_20
    const-string v3, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 735
    const v0, -0x1fffffc9

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 736
    :cond_21
    const-string v3, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    const v0, -0x1fffffc8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 739
    :cond_22
    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 740
    const-string v3, "alias.DialShortcut"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 741
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 742
    const-string v0, "android.intent.action.CALL"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 743
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 744
    :cond_23
    const-string v3, "alias.MessageShortcut"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 745
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 746
    const-string v0, "android.intent.action.SENDTO"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 747
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 748
    :cond_24
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_25

    .line 749
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 750
    const-string v0, "android.intent.action.VIEW"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 751
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 753
    :cond_25
    const v0, -0x667fffd6

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 754
    const-string v0, "android.intent.action.VIEW"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 755
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 757
    :cond_26
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 758
    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 759
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 760
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_27

    .line 761
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 763
    :cond_27
    const v0, -0x667fffd6

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 765
    :cond_28
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 766
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 767
    :cond_29
    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 768
    const v0, -0x1fffffcd

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 769
    :cond_2a
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 770
    const v0, -0x1fffffc9

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 771
    :cond_2b
    const-string v3, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 772
    const v0, -0x1fffffc8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 773
    :cond_2c
    const-string v3, "vnd.android.cursor.item/person"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_2d

    .line 775
    const v0, -0x7effffd5

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 777
    :cond_2d
    const v0, -0x6effffd4

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 781
    :cond_2e
    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 782
    const v0, -0x667fffd3

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 783
    :cond_2f
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 785
    const-string v0, "call"

    const-string v3, "action_msg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 786
    const-string v0, "query"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 788
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 790
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 792
    :cond_30
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 797
    :cond_31
    const-string v0, "email"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 798
    const v0, -0x77ffffbf

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 799
    iput v7, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 800
    const-string v0, "email"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 810
    :goto_e
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    goto/16 :goto_2

    .line 801
    :cond_32
    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 802
    const v0, -0x77ffffbf

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 803
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 804
    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_e

    .line 807
    :cond_33
    const v0, 0x2800003c

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 808
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_e

    .line 811
    :cond_34
    const-string v0, "com.android.contacts.INTERNAL_SEARCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 813
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_48

    .line 815
    const-string v3, "originalAction"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_f
    const-string v3, "shortcutAction"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 819
    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 820
    const v0, -0x57ffffab

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 821
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 831
    :goto_10
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    goto/16 :goto_2

    .line 822
    :cond_35
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_36

    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 823
    const v0, -0x5fffffb0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 824
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 825
    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_10

    .line 827
    :cond_36
    const v0, -0x56ffffb5

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 828
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 829
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_10

    .line 835
    :cond_37
    const-string v0, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 836
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 838
    sget-object v2, Lcom/android/contacts/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_47

    .line 839
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 840
    invoke-direct {p0, v2, v3}, Lcom/android/contacts/ContactsListActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v2

    .line 841
    if-eqz v2, :cond_47

    .line 842
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v7, :cond_46

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 843
    const-string v3, "data1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 844
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 847
    :goto_11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .line 852
    :goto_12
    const-string v3, "call"

    const-string v4, "action_msg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    .line 853
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 857
    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 858
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 855
    :cond_38
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_13

    .line 860
    :cond_39
    const-string v0, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 861
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 862
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 863
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 865
    :cond_3a
    const-string v0, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 867
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 868
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 869
    const-string v2, "phone"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 871
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 874
    :cond_3b
    const-string v0, "com.android.contacts.action.PICK_FAVORITE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 875
    const v0, -0x7fbfffa6

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 882
    :cond_3c
    const v0, -0x32ffffba

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 883
    const-string v0, "com.android.contacts.action.AGGREGATE_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    .line 884
    iget-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    .line 885
    const-string v0, "ContactsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is missing required extra: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.android.contacts.action.AGGREGATE_ID"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {p0, v8}, Lcom/android/contacts/ContactsListActivity;->setResult(I)V

    .line 888
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_3

    :cond_3d
    move v1, v8

    .line 897
    goto/16 :goto_4

    .line 901
    :cond_3e
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x32ffffba

    if-ne v0, v3, :cond_3f

    .line 902
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 903
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    goto/16 :goto_5

    .line 904
    :cond_3f
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_40

    .line 905
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    goto/16 :goto_5

    .line 906
    :cond_40
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    if-eqz v0, :cond_41

    .line 907
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 908
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 909
    const v3, 0x7f0b00fe

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/ContactsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 912
    :cond_41
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 913
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x140003b

    if-ne v0, v3, :cond_42

    .line 914
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupAddToGroupView()V

    goto/16 :goto_5

    .line 915
    :cond_42
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x7fbfffa6

    if-ne v0, v3, :cond_7

    .line 916
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupAddToFavoriteView()V

    goto/16 :goto_5

    .line 922
    :cond_43
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_44

    .line 923
    const v0, 0x7f0700ab

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/SearchEditText;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    goto/16 :goto_6

    .line 924
    :cond_44
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 925
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    .line 926
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 927
    const v0, 0x7f0700ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/SearchEditText;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    .line 929
    const v0, 0x7f07009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    .line 930
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 932
    const-string v0, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 933
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 935
    const v0, 0x7f0700a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0149

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 938
    const v0, 0x7f0700ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    .line 939
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 941
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setHeaderIcon()V

    goto/16 :goto_6

    .line 943
    :cond_45
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_46
    move-object v3, v9

    goto/16 :goto_11

    :cond_47
    move-object v2, v9

    goto/16 :goto_12

    :cond_48
    move-object v0, v9

    goto/16 :goto_f
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/high16 v1, -0x8000

    const/4 v6, 0x0

    .line 2004
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2010
    :cond_1
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2017
    if-eqz v0, :cond_0

    .line 2021
    iget-wide v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 2022
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2023
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/contacts/ContactsUtils;->queryForRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v1

    .line 2024
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2027
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getSummaryDisplayNameColumnIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2030
    const/4 v2, 0x1

    const v4, 0x7f0b0017

    invoke-interface {p1, v6, v2, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2033
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2035
    const/4 v2, 0x2

    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2038
    const v2, 0x7f0b001e

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2042
    :cond_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2043
    if-nez v0, :cond_3

    .line 2044
    const v0, 0x7f0b0019

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2050
    :goto_1
    const/4 v0, 0x6

    const v2, 0x7f0b001b

    invoke-interface {p1, v6, v0, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2052
    const/4 v0, 0x7

    const v1, 0x7f0b001c

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2011
    :catch_0
    move-exception v0

    .line 2012
    const-string v1, "ContactsListActivity"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2046
    :cond_3
    const v0, 0x7f0b001a

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0b002d

    const/high16 v5, 0x104

    const v4, 0x1080027

    const v3, 0x104000a

    const/4 v2, 0x0

    .line 1890
    sparse-switch p1, :sswitch_data_0

    .line 1940
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1894
    :sswitch_0
    invoke-static {p0, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1897
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1904
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1913
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1922
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1931
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1890
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070006 -> :sswitch_2
        0x7f070007 -> :sswitch_3
        0x7f070008 -> :sswitch_5
        0x7f070009 -> :sswitch_4
        0x7f07000e -> :sswitch_1
        0x7f0b007a -> :sswitch_0
        0x7f0b007b -> :sswitch_0
        0x7f0b0120 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 1668
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1672
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-ne v0, v1, :cond_1

    .line 1673
    :cond_0
    const/4 v0, 0x0

    .line 1695
    :goto_0
    return v0

    .line 1676
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1679
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1690
    const v1, 0x7f0f0006

    .line 1694
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1695
    const/4 v0, 0x1

    goto :goto_0

    .line 1681
    :sswitch_0
    const v1, 0x7f0f0002

    .line 1682
    goto :goto_1

    .line 1686
    :sswitch_1
    const v1, 0x7f0f0003

    .line 1687
    goto :goto_1

    .line 1679
    :sswitch_data_0
    .sparse-switch
        0x28200014 -> :sswitch_0
        0x28a00039 -> :sswitch_1
        0x28c0003a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1447
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1448
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->stop()V

    .line 1449
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 2126
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 2127
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2128
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 2131
    :cond_0
    const/4 v0, 0x1

    .line 2133
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnterEditMode()V
    .locals 2

    .prologue
    .line 3867
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 3868
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    if-eqz v0, :cond_0

    .line 3869
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/DialtactsActivity;->setActionFooterVisibility(Z)V

    .line 3872
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_1

    .line 3873
    const v0, 0x28c0003a

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 3875
    :cond_1
    return-void
.end method

.method public onExitEditMode()V
    .locals 2

    .prologue
    .line 3879
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    if-eqz v0, :cond_0

    .line 3880
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/DialtactsActivity;->setActionFooterVisibility(Z)V

    .line 3883
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-ne v0, v1, :cond_1

    .line 3884
    const v0, 0x28a00039

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 3886
    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 2223
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 2224
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2226
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2098
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchInitiated:Z

    if-nez v1, :cond_0

    .line 2099
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 2100
    .local v0, unicodeChar:I
    if-eqz v0, :cond_0

    .line 2101
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mSearchInitiated:Z

    .line 2102
    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [I

    aput v0, v2, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/contacts/ContactsListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v1, v4

    .line 2106
    .end local v0           #unicodeChar:I
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2138
    sparse-switch p1, :sswitch_data_0

    .line 2154
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2140
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->callSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2141
    goto :goto_0

    .line 2147
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->deleteSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2148
    goto :goto_0

    .line 2138
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2252
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2254
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->onBackPressed()V

    .line 2255
    const/4 v0, 0x1

    .line 2257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, -0x32ffffba

    const/4 v4, 0x0

    const/high16 v3, -0x8000

    .line 2262
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 2263
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2266
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupEditMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x7fbfffa6

    if-ne v0, v1, :cond_3

    :cond_1
    instance-of v0, p2, Lcom/android/contacts/ContactListItemView;

    if-eqz v0, :cond_3

    .line 2267
    check-cast p2, Lcom/android/contacts/ContactListItemView;

    invoke-direct {p0, p2, p4, p5}, Lcom/android/contacts/ContactsListActivity;->toggleMarkedItem(Lcom/android/contacts/ContactListItemView;J)V

    .line 2319
    :cond_2
    :goto_0
    return-void

    .line 2268
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    #calls: Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isSearchAllContactsItemPosition(I)Z
    invoke-static {v0, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->access$1000(Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2269
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->doSearch()V

    goto :goto_0

    .line 2270
    :cond_4
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x667fffd3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x57ffffab

    if-ne v0, v1, :cond_9

    .line 2271
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/contacts/ContactsListActivity;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 2274
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->queryContactSources(Landroid/net/Uri;)V

    .line 2275
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    if-nez v1, :cond_6

    .line 2276
    const v0, 0x7f0b00b1

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2280
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2281
    const/high16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2282
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2283
    if-eqz v0, :cond_7

    .line 2284
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2286
    :cond_7
    const-string v0, "picker_mode"

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    move v2, v6

    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2288
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2289
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    :cond_8
    move v2, v5

    .line 2286
    goto :goto_1

    .line 2290
    :cond_9
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    if-ne v0, v2, :cond_a

    const-wide/16 v0, -0x2

    cmp-long v0, p4, v0

    if-nez v0, :cond_a

    .line 2291
    iput-boolean v5, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    .line 2292
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    goto :goto_0

    .line 2293
    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_12

    .line 2294
    invoke-direct {p0, p3}, Lcom/android/contacts/ContactsListActivity;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 2295
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v3

    if-nez v0, :cond_b

    .line 2296
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2297
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2298
    :cond_b
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    if-ne v0, v2, :cond_c

    .line 2299
    invoke-direct {p0, v4, v4, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2300
    :cond_c
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x77ffffbf

    if-ne v0, v2, :cond_d

    .line 2302
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2303
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2304
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_0

    .line 2305
    :cond_d
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x36ffffce

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x5fffffb0

    if-ne v0, v2, :cond_f

    .line 2306
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2307
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2308
    :cond_f
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 2309
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2310
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getSummaryDisplayNameColumnIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2311
    :cond_10
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x1fffffc9

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x1fffffc8

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x1fffffcd

    if-ne v0, v2, :cond_2

    .line 2314
    :cond_11
    invoke-direct {p0, v4, v4, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2317
    :cond_12
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->signalError()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1726
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v4

    .line 1785
    :goto_1
    return v0

    .line 1729
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f07010b

    if-ne v0, v1, :cond_1

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 1730
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    .line 1732
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1733
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1734
    const-string v1, "only_phones"

    iget-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1735
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v3

    .line 1737
    goto :goto_1

    :cond_1
    move v0, v3

    .line 1729
    goto :goto_2

    .line 1740
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAddContactActivity()V

    goto :goto_0

    .line 1744
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAccountSettings()V

    move v0, v3

    .line 1745
    goto :goto_1

    .line 1748
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    move v0, v3

    .line 1749
    goto :goto_1

    .line 1752
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/GroupDelta;->sendSmsToGroup(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1758
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_0

    .line 1759
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->getRingtonePickerIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1760
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1765
    :pswitch_7
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAddMemberActivity()V

    goto :goto_0

    .line 1769
    :pswitch_8
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startFavoritePickerActivity()V

    goto :goto_0

    .line 1773
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1777
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1778
    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SimContacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    const-string v1, "view_sim_contacts"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1781
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x7f070101
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 1453
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 1454
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->unregisterProviderStatusObserver()V

    .line 1455
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsActive:Z

    .line 1457
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x28a00023

    if-ne v1, v2, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getFrequentSeparatorPos()I

    move-result v0

    .line 1459
    .local v0, separatorPos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1460
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCount()I

    .line 1463
    .end local v0           #separatorPos:I
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1701
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 1712
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-ne v0, v1, :cond_1

    move v0, v3

    .line 1713
    :goto_0
    const v1, 0x7f07010b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1716
    const v1, 0x7f07010a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-nez v0, :cond_3

    move v0, v3

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1721
    :goto_3
    :sswitch_0
    return v3

    .line 1705
    :sswitch_1
    const v0, 0x7f070103

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x28a00039

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    :goto_4
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_3

    :cond_0
    move v1, v4

    goto :goto_4

    :cond_1
    move v0, v4

    .line 1712
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1713
    goto :goto_1

    :cond_3
    move v0, v4

    .line 1716
    goto :goto_2

    .line 1701
    nop

    :sswitch_data_0
    .sparse-switch
        0x28200014 -> :sswitch_0
        0x28a00039 -> :sswitch_1
        0x28c0003a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1632
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 1634
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->checkProviderState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1650
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1652
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 1653
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1467
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 1469
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getMiliaoInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    .line 1470
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsActive:Z

    .line 1479
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->registerProviderStatusObserver()V

    .line 1480
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->resume()V

    .line 1484
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x7fbfffa6

    if-ne v0, v1, :cond_2

    .line 1488
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setDefaultMode()V

    .line 1492
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_3

    .line 1493
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->requestFocus()Z

    .line 1496
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->checkProviderState(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1523
    :goto_1
    return-void

    .line 1471
    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    .line 1500
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsContentChanged:Z

    if-eqz v0, :cond_7

    .line 1501
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1502
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->onSearchTextChanged()V

    .line 1508
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getEnablePhoto()Z

    move-result v0

    .line 1511
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    if-eq v1, v0, :cond_8

    .line 1512
    const-string v1, "ContactsListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable photo change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->reloadFromMode()V

    .line 1515
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetChanged()V

    .line 1516
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    .line 1518
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setHeaderIcon()V

    .line 1521
    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    .line 1522
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mSearchInitiated:Z

    goto :goto_1

    .line 1504
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1641
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1643
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    if-eqz v0, :cond_0

    .line 1644
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1646
    :cond_0
    return-void
.end method

.method protected onSearchTextChanged()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1824
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setEmptyText()V

    .line 1826
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1828
    .local v0, filter:Landroid/widget/Filter;
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x8a00004

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1829
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1830
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1831
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    if-eqz v1, :cond_0

    .line 1832
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1843
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1844
    return-void

    .line 1836
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    if-eqz v1, :cond_0

    .line 1838
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1657
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1659
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x2800003c

    if-ne v0, v1, :cond_0

    .line 1661
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SearchManager;

    .line 1662
    invoke-virtual {p0}, Landroid/app/SearchManager;->stopSearch()V

    .line 1664
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2120
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 2232
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 2233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2245
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2235
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    goto :goto_0

    .line 2238
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    .line 2241
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2242
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    goto :goto_0

    .line 2233
    :sswitch_data_0
    .sparse-switch
        0x1020004 -> :sswitch_1
        0x102000a -> :sswitch_0
    .end sparse-switch
.end method

.method signalError()V
    .locals 0

    .prologue
    .line 2927
    return-void
.end method

.method smsContact(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2863
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ContactsListActivity;->callOrSmsContact(Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method

.method startQuery()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const-string v7, "display_name"

    .line 2620
    const-string v0, "ContactsListActivity"

    const-string v3, "start query"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setEmptyText()V

    .line 2624
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    if-eqz v0, :cond_0

    .line 2625
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2626
    const v3, 0x7f0b00ff

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2629
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setLoading(Z)V

    .line 2632
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 2633
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->setLoadingJoinSuggestions(Z)V

    .line 2637
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    .line 2638
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 2640
    iput-boolean v6, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    .line 2646
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getProjectionForQuery(Z)[Ljava/lang/String;

    move-result-object v4

    .line 2647
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2648
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2734
    :goto_1
    return-void

    .line 2641
    :cond_2
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    if-ne v0, v6, :cond_1

    .line 2643
    iput-boolean v6, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    goto :goto_0

    .line 2652
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2653
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    .line 2654
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2655
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "requesting_package"

    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    .line 2662
    :cond_4
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 2672
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2678
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "display_name"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2688
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2694
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "starred=1"

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2700
    :sswitch_4
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "times_contacted > 0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "times_contacted DESC, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2708
    :sswitch_5
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2712
    :sswitch_6
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2717
    :sswitch_7
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "display_name"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2722
    :sswitch_8
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "kind=2"

    const-string v6, "display_name"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2729
    :sswitch_9
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-virtual {v0, v6}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->setLoadingJoinSuggestions(Z)V

    .line 2730
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2662
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_0
        -0x7effffd5 -> :sswitch_1
        -0x77ffffbf -> :sswitch_2
        -0x76ffffd8 -> :sswitch_0
        -0x6effffd4 -> :sswitch_1
        -0x667fffd6 -> :sswitch_0
        -0x667fffd3 -> :sswitch_0
        -0x5fffffb0 -> :sswitch_2
        -0x57ffffab -> :sswitch_2
        -0x56ffffb5 -> :sswitch_2
        -0x36ffffce -> :sswitch_6
        -0x32ffffba -> :sswitch_9
        -0x1fffffcd -> :sswitch_7
        -0x1fffffc9 -> :sswitch_2
        -0x1fffffc8 -> :sswitch_8
        0x8 -> :sswitch_0
        0x140003b -> :sswitch_0
        0x820001e -> :sswitch_4
        0x8a00004 -> :sswitch_0
        0x2800003c -> :sswitch_2
        0x28200014 -> :sswitch_3
        0x28a00023 -> :sswitch_5
        0x28a00039 -> :sswitch_0
        0x28c0003a -> :sswitch_0
    .end sparse-switch
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1799
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-eqz v0, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_2

    .line 1804
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1805
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->requestFocus()Z

    .line 1806
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->showSoftKeyboard()V

    goto :goto_0

    .line 1807
    :cond_2
    if-eqz p4, :cond_3

    .line 1808
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 1809
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-eq v0, v1, :cond_0

    .line 1810
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 1811
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactsSearchManager;->startSearchForResult(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 1813
    :cond_4
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
