.class public Lcom/android/contacts/ViewContactActivity;
.super Landroid/app/Activity;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ViewContactActivity$StatusQuery;,
        Lcom/android/contacts/ViewContactActivity$ViewAdapter;,
        Lcom/android/contacts/ViewContactActivity$ViewCache;,
        Lcom/android/contacts/ViewContactActivity$ViewEntry;,
        Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;,
        Lcom/android/contacts/ViewContactActivity$CallLogEntry;,
        Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;,
        Lcom/android/contacts/ViewContactActivity$CallLogQuery;
    }
.end annotation


# static fields
.field public static final MILIAO_SIGNATURE_CONTENT_URI:Landroid/net/Uri;

.field public static final MILIAO_STATUS_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

.field protected mAllRestricted:Z

.field private mBottomButtonBar:Landroid/view/View;

.field private mBottomView:Landroid/view/View;

.field private mButtonActionType:I

.field mCallLogEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogShowStatus:I

.field private mCallLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$CallLogEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

.field protected mContainCallLogInfo:Z

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDisplayNameSource:I

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasCallLogs:Z

.field private mHasEntities:Z

.field private mHasStatuses:Z

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field protected mLookupUri:Landroid/net/Uri;

.field private mMiliaoItems:Landroid/widget/LinearLayout;

.field private mNameRawContactId:J

.field mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOtherEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhotoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrimaryPhoneUri:Landroid/net/Uri;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadOnlySourcesCnt:I

.field private mResolver:Landroid/content/ContentResolver;

.field mRingEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mSipAddressEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknowNumberButtons:Landroid/view/View;

.field private mUnknownContact:Z

.field private mUnknownNumber:Ljava/lang/String;

.field protected mWritableRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mWritableSourcesCnt:I

.field private miliaoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private showCalllogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    const-string v0, "content://com.xiaomi.channel.providers.BuddyStatusForPhoneProvider/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewContactActivity;->MILIAO_STATUS_CONTENT_URI:Landroid/net/Uri;

    .line 265
    const-string v0, "content://com.xiaomi.channel.providers.BuddyStatusForPhoneProvider/signature"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewContactActivity;->MILIAO_SIGNATURE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity;->showCalllogs:Z

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ViewContactActivity;->mButtonActionType:I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mNicknameEntries:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mRingEntries:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPhotoEntries:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEventEntries:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogEntries:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    .line 208
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    .line 226
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity;->mHasEntities:Z

    .line 227
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity;->mHasStatuses:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity;->mHasCallLogs:Z

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;

    .line 311
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogs:Ljava/util/ArrayList;

    .line 321
    iput v2, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    .line 324
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ViewContactActivity;->mNameRawContactId:J

    .line 325
    iput v2, p0, Lcom/android/contacts/ViewContactActivity;->mDisplayNameSource:I

    .line 327
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEntities:Ljava/util/ArrayList;

    .line 328
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mStatuses:Ljava/util/HashMap;

    .line 330
    new-instance v0, Lcom/android/contacts/ViewContactActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ViewContactActivity$1;-><init>(Lcom/android/contacts/ViewContactActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    .line 2804
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ViewContactActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ViewContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->startEntityQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/ViewContactActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/ViewContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/ViewContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/ViewContactActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/ViewContactActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ViewContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->gotoEditor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/ViewContactActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ViewContactActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mMiliaoItems:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/ViewContactActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/ViewContactActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity;->mEntities:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/contacts/ViewContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/contacts/ViewContactActivity;->mHasEntities:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/ViewContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->considerBindData()V

    return-void
.end method

.method private addButtonsForUnknowContact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    .line 461
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 466
    return-void
.end method

.method private addCallLogEntry(Lcom/android/contacts/ViewContactActivity$CallLogEntry;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2230
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromCallLog(Landroid/content/Context;Lcom/android/contacts/ViewContactActivity$CallLogEntry;)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v0

    .line 2231
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->isPresentationAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2232
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 2234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    iget-object v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2237
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    return-void
.end method

.method private bindCallLog()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v10, "vnd.android.cursor.dir/calls"

    .line 2195
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2197
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2198
    if-le v1, v8, :cond_0

    move v2, v8

    .line 2200
    :goto_0
    if-le v1, v6, :cond_4

    .line 2201
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0177

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/ViewContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-static {v0, v3, v10, v6}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromCallLogButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v0

    .line 2205
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    if-ne v0, v6, :cond_3

    move v3, v7

    .line 2208
    :goto_1
    if-ge v3, v2, :cond_1

    .line 2209
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;

    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->addCallLogEntry(Lcom/android/contacts/ViewContactActivity$CallLogEntry;)V

    .line 2208
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v2, v1

    .line 2198
    goto :goto_0

    .line 2212
    :cond_1
    if-le v1, v8, :cond_2

    .line 2213
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0178

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/ViewContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-static {v0, v1, v10, v9}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromCallLogButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v0

    .line 2217
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2227
    :cond_2
    :goto_2
    return-void

    .line 2219
    :cond_3
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    if-ne v0, v9, :cond_2

    .line 2220
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;

    .line 2221
    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->addCallLogEntry(Lcom/android/contacts/ViewContactActivity$CallLogEntry;)V

    goto :goto_3

    .line 2224
    :cond_4
    if-ne v1, v6, :cond_2

    .line 2225
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;

    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->addCallLogEntry(Lcom/android/contacts/ViewContactActivity$CallLogEntry;)V

    goto :goto_2
.end method

.method private bindData()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1096
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->buildEntries()V

    .line 1099
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1102
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1103
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1104
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1105
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1106
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1107
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1108
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1109
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1112
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->confirmBackgroundForEntries()V

    .line 1114
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    if-nez v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getMiliaoInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 1117
    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mMiliaoItems:Landroid/widget/LinearLayout;

    .line 1119
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mMiliaoItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1120
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->bindMiliaoView()V

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1124
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1126
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;-><init>(Lcom/android/contacts/ViewContactActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    .line 1127
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1133
    :goto_0
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->showCalllogs:Z

    if-eqz v0, :cond_2

    .line 1134
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1135
    iput-boolean v3, p0, Lcom/android/contacts/ViewContactActivity;->showCalllogs:Z

    .line 1137
    :cond_2
    return-void

    .line 1129
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->setSections(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private bindMiliaoView()V
    .locals 12

    .prologue
    .line 470
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 471
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 472
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_3

    .line 473
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    .line 474
    .local v1, entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03002e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 475
    .local v8, view:Landroid/view/View;
    iget-object v9, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 478
    const/4 v4, 0x0

    .line 480
    .local v4, miliaoNumber:Ljava/lang/String;
    :try_start_0
    iget-object v9, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->number:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v4, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    const v9, 0x7f0700af

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const v9, 0x7f0700b1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/android/contacts/ViewContactActivity$3;

    invoke-direct {v10, p0, v1}, Lcom/android/contacts/ViewContactActivity$3;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    const v9, 0x7f0700ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/android/contacts/ViewContactActivity$4;

    invoke-direct {v10, p0, v1}, Lcom/android/contacts/ViewContactActivity$4;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 534
    const v9, 0x7f0700ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200ad

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 536
    const v9, 0x7f0700b1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200b0

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 557
    :goto_2
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->mMiliaoItems:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 482
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "ViewContact"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 539
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-nez v2, :cond_1

    .line 540
    const v9, 0x7f0700ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020098

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 542
    const v9, 0x7f0700b1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f02009b

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 544
    :cond_1
    const/4 v9, 0x1

    sub-int v9, v7, v9

    if-ne v2, v9, :cond_2

    .line 545
    const v9, 0x7f0700ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200a7

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 547
    const v9, 0x7f0700b1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200aa

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 550
    :cond_2
    const v9, 0x7f0700ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200a1

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 552
    const v9, 0x7f0700b1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200a4

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 560
    .end local v1           #entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    .end local v4           #miliaoNumber:Ljava/lang/String;
    .end local v8           #view:Landroid/view/View;
    :cond_3
    new-instance v9, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$1;)V

    invoke-virtual {v9}, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->start()V

    .line 617
    .end local v2           #i:I
    .end local v7           #size:I
    :cond_4
    :goto_3
    return-void

    .line 561
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 563
    sget-boolean v9, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v9, :cond_4

    .line 568
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v6, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 570
    .local v1, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iget-object v9, v1, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    .line 571
    .local v5, number:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v5, :cond_6

    .line 572
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 573
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 574
    iget-object v9, v1, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 577
    :cond_7
    iget-object v9, v1, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 582
    .end local v1           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v5           #number:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 587
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03002e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 588
    .restart local v8       #view:Landroid/view/View;
    const v9, 0x7f070032

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v9, 0x7f02009f

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 589
    const v9, 0x7f0700af

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v9, 0x7f0b01d0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 590
    const v9, 0x7f0700b1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v9, 0x10800a3

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    const v9, 0x1080533

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 592
    new-instance v9, Lcom/android/contacts/ViewContactActivity$5;

    invoke-direct {v9, p0, v6}, Lcom/android/contacts/ViewContactActivity$5;-><init>(Lcom/android/contacts/ViewContactActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 615
    iget-object v9, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_3
.end method

.method private bottomButtonClick(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 789
    iput p1, p0, Lcom/android/contacts/ViewContactActivity;->mButtonActionType:I

    .line 792
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->startIntentFromNumber(Ljava/lang/String;)V

    .line 801
    :goto_0
    return-void

    .line 795
    :cond_0
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mButtonActionType:I

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZ)Z

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZ)Z

    goto :goto_0
.end method

.method static buildActionString(Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/content/ContentValues;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "lowerCase"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2242
    iget-object v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 2249
    :goto_0
    return-object v1

    .line 2245
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    invoke-interface {v1, p3, p1}, Lcom/android/contacts/model/ContactsSource$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2246
    .local v0, actionHeader:Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 2247
    goto :goto_0

    .line 2249
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static buildDataString(Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2253
    iget-object v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 2257
    :goto_0
    return-object v1

    .line 2256
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    invoke-interface {v1, p2, p1}, Lcom/android/contacts/model/ContactsSource$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2257
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 23

    .prologue
    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1791
    const/4 v5, 0x0

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_0

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1791
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 1795
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1797
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    .line 1798
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    .line 1799
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ViewContactActivity;->mAllRestricted:Z

    .line 1800
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1805
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v14

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_26

    .line 1810
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Lcom/android/contacts/ui/EditContactActivity$CustomQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1812
    const/4 v6, 0x0

    .line 1813
    const/4 v7, 0x0

    .line 1815
    if-eqz v5, :cond_2e

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1816
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1817
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object/from16 v22, v7

    move-object v7, v6

    move-object/from16 v6, v22

    .line 1820
    :goto_1
    if-eqz v5, :cond_1

    .line 1821
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1825
    :cond_1
    if-eqz v7, :cond_2

    .line 1826
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromValues(Landroid/content/Context;)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v5

    .line 1827
    const-string v8, "ringtone"

    iput-object v8, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 1828
    const v8, 0x7f0200f4

    iput v8, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1830
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1831
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .line 1832
    if-eqz v8, :cond_a

    .line 1833
    iput-object v7, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1834
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 1840
    :goto_2
    iget-object v7, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/contacts/ViewContactActivity;->getRingtonePickerIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1841
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isIntentForResult:Z

    .line 1842
    const/4 v7, 0x4

    iput v7, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intentRequestCode:I

    .line 1843
    const v7, 0x10800a3

    iput v7, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryActionIcon:I

    .line 1844
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIconNoAction:Z

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mRingEntries:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    :cond_2
    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1850
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromValues(Landroid/content/Context;)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v5

    .line 1851
    const-string v7, "call_incoming_photo"

    iput-object v7, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 1852
    const v7, 0x7f0200f2

    iput v7, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1854
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1855
    const v6, 0x10800a3

    iput v6, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryActionIcon:I

    .line 1856
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIconNoAction:Z

    .line 1857
    const v6, 0x7f0b018a

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhotoEntries:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromValues(Landroid/content/Context;)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v15

    .line 1865
    const-string v5, "vnd.android.cursor.item/group_membership"

    iput-object v5, v15, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 1866
    const v5, 0x7f0200e7

    iput v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1867
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/contacts/ui/ContactMembershipEditor;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1868
    const v5, 0x10800a3

    iput v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryActionIcon:I

    .line 1869
    const/4 v5, 0x1

    iput-boolean v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIconNoAction:Z

    .line 1870
    const/16 v5, 0x64

    iput v5, v15, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 1871
    iget-object v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v6, "extra_check_groups"

    iget-object v7, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1873
    iget-object v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v6, "extra_contact_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mEntities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    .line 1878
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 1879
    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1880
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1883
    const-string v7, "is_restricted"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    .line 1884
    :goto_3
    if-nez v6, :cond_5

    .line 1885
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ViewContactActivity;->mAllRestricted:Z

    .line 1887
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    :cond_6
    const/4 v6, 0x1

    move-object v0, v14

    move-object/from16 v1, v17

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v6

    .line 1892
    if-eqz v6, :cond_c

    iget-boolean v6, v6, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-eqz v6, :cond_c

    .line 1893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    .line 1900
    :goto_4
    invoke-virtual {v5}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity$NamedContentValues;

    .line 1901
    iget-object v12, v5, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1902
    const-string v5, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1904
    const-string v5, "_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1905
    const-string v5, "mimetype"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1906
    if-eqz v6, :cond_7

    .line 1910
    const-string v5, "vnd.android.cursor.item/vnd.com.xiaomi.channel.profile"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1912
    new-instance v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$1;)V

    .line 1913
    const-string v5, "data1"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    .line 1914
    const-string v5, "data2"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->name:Ljava/lang/String;

    .line 1915
    const-string v5, "data3"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->number:Ljava/lang/String;

    .line 1916
    const-string v5, "ViewContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "miliao entry, account = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "; number = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->number:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const/4 v7, 0x0

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    .line 1922
    invoke-virtual {v5, v6}, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1923
    const-string v5, "ViewContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duplicate miliao entry, account = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "; number = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v6, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->number:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v5, 0x1

    .line 1930
    :goto_6
    if-nez v5, :cond_7

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1820
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_9

    .line 1821
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1820
    :cond_9
    throw v6

    .line 1836
    :cond_a
    const-string v7, "ViewContact"

    const-string v8, "ringtone\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const v7, 0x7f0b0042

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    goto/16 :goto_2

    .line 1883
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1895
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1936
    :cond_d
    const/4 v5, 0x3

    move-object v0, v14

    move-object/from16 v1, v17

    move-object v2, v6

    move-object/from16 v3, p0

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/Sources;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v7

    .line 1938
    if-eqz v7, :cond_7

    move-object/from16 v5, p0

    .line 1942
    invoke-static/range {v5 .. v12}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$DataKind;JJLandroid/content/ContentValues;)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v13

    .line 1945
    iget-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    move/from16 v19, v5

    .line 1946
    :goto_7
    const-string v5, "is_super_primary"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    .line 1948
    :goto_8
    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    if-eqz v19, :cond_11

    .line 1950
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    iget-object v11, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1952
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v10, "smsto"

    iget-object v11, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1956
    if-eqz v5, :cond_e

    .line 1957
    iget-object v6, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 1960
    :cond_e
    iput-boolean v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    iget v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    packed-switch v5, :pswitch_data_0

    .line 1977
    const v5, 0x7f0200eb

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto/16 :goto_5

    .line 1945
    :cond_f
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_7

    .line 1946
    :cond_10
    const/4 v5, 0x0

    goto :goto_8

    .line 1965
    :pswitch_0
    const v5, 0x7f0200eb

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto/16 :goto_5

    .line 1968
    :pswitch_1
    const v5, 0x7f0200e5

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto/16 :goto_5

    .line 1971
    :pswitch_2
    const v5, 0x7f0200f9

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto/16 :goto_5

    .line 1974
    :pswitch_3
    const v5, 0x7f0200e9

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto/16 :goto_5

    .line 1980
    :cond_11
    const-string v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    if-eqz v19, :cond_12

    .line 1982
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v19, "mailto"

    move-object v0, v13

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1984
    iput-boolean v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mStatuses:Ljava/util/HashMap;

    move-object v5, v0

    iget-wide v6, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/contacts/util/DataStatus;

    move-object v13, v0

    .line 1990
    if-eqz v13, :cond_7

    .line 1991
    const-string v5, "vnd.android.cursor.item/im"

    .line 1992
    const-string v5, "vnd.android.cursor.item/im"

    const/4 v6, 0x2

    move-object v0, v14

    move-object/from16 v1, v17

    move-object v2, v5

    move-object/from16 v3, p0

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/Sources;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v7

    .line 1994
    const-string v6, "vnd.android.cursor.item/im"

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v12}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$DataKind;JJLandroid/content/ContentValues;)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v5

    .line 1996
    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->buildImIntent(Landroid/content/ContentValues;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1997
    const/4 v6, 0x0

    invoke-virtual {v5, v13, v6}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2000
    :cond_12
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-eqz v19, :cond_13

    .line 2002
    const/4 v5, 0x4

    iput v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 2003
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2005
    :cond_13
    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    if-eqz v19, :cond_16

    .line 2007
    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->buildImIntent(Landroid/content/ContentValues;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 2008
    iget-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2009
    const v5, 0x7f0b00f0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 2012
    :cond_14
    iget v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    packed-switch v5, :pswitch_data_1

    .line 2023
    :pswitch_4
    const v5, 0x7f0200e1

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 2028
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mStatuses:Ljava/util/HashMap;

    move-object v5, v0

    iget-wide v6, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/util/DataStatus;

    .line 2029
    if-eqz v5, :cond_15

    .line 2030
    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 2032
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2014
    :pswitch_5
    const v5, 0x7f0200f3

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto :goto_9

    .line 2017
    :pswitch_6
    const v5, 0x7f0200ec

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto :goto_9

    .line 2020
    :pswitch_7
    const v5, 0x7f0200e8

    iput v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    goto :goto_9

    .line 2033
    :cond_16
    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-nez v19, :cond_7

    iget-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2036
    :cond_17
    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v19, :cond_19

    .line 2037
    iget-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2038
    const/4 v10, 0x0

    .line 2039
    iget-object v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2040
    cmp-long v5, v12, v6

    if-nez v5, :cond_18

    .line 2041
    const/4 v5, 0x1

    .line 2045
    :goto_a
    if-nez v5, :cond_7

    .line 2046
    iget-object v5, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2048
    :cond_19
    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-eqz v19, :cond_1c

    .line 2050
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/ViewContactActivity;->mNameRawContactId:J

    move-wide v5, v0

    cmp-long v5, v5, v8

    if-nez v5, :cond_1a

    const/4 v5, 0x1

    .line 2052
    :goto_b
    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactActivity;->mDisplayNameSource:I

    move v5, v0

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    .line 2055
    :goto_c
    if-nez v5, :cond_7

    .line 2056
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mNicknameEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2050
    :cond_1a
    const/4 v5, 0x0

    goto :goto_b

    .line 2052
    :cond_1b
    const/4 v5, 0x0

    goto :goto_c

    .line 2060
    :cond_1c
    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    if-eqz v19, :cond_1d

    .line 2062
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2063
    const/16 v5, 0x64

    iput v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2065
    :cond_1d
    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v19, :cond_1e

    .line 2066
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2067
    const/16 v5, 0xa

    iput v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 2069
    :try_start_1
    new-instance v5, Landroid/net/WebAddress;

    iget-object v6, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 2070
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v5}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2075
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2072
    :catch_0
    move-exception v5

    .line 2073
    const-string v5, "ViewContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t parse website: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2076
    :cond_1e
    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v19, :cond_20

    .line 2077
    iget v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1f

    iget v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 2080
    :cond_1f
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2081
    const/4 v5, 0x1

    iput v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mEventEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2084
    :cond_20
    const-string v5, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    if-eqz v19, :cond_21

    .line 2086
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2087
    const/4 v5, 0x1

    iput v5, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 2088
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "sip"

    iget-object v10, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2099
    :cond_21
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v10, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-direct {v5, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, v13, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mStatuses:Ljava/util/HashMap;

    move-object v5, v0

    iget-wide v10, v13, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/util/DataStatus;

    .line 2103
    iget-boolean v6, v7, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBodySocial:Z

    if-eqz v6, :cond_24

    if-eqz v5, :cond_24

    const/4 v6, 0x1

    .line 2104
    :goto_e
    if-eqz v6, :cond_22

    .line 2105
    const/4 v7, 0x1

    invoke-virtual {v13, v5, v7}, Lcom/android/contacts/ViewContactActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 2108
    :cond_22
    if-nez v6, :cond_23

    if-eqz v19, :cond_7

    .line 2109
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2103
    :cond_24
    const/4 v6, 0x0

    goto :goto_e

    .line 2115
    :cond_25
    const v5, 0x7f0b0127

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    move-object v6, v0

    iget-object v7, v15, Lcom/android/contacts/ViewContactActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lcom/android/contacts/ContactsUtils;->getGroupNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    move v5, v0

    if-eqz v5, :cond_27

    .line 2123
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->bindCallLog()V

    .line 2127
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    move v5, v0

    if-eqz v5, :cond_29

    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->isPresentationAllowed()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 2129
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mBottomButtonBar:Landroid/view/View;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mBottomView:Landroid/view/View;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2136
    :goto_f
    const-string v5, "ViewContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writable count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const-string v5, "ViewContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readonly count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    move v5, v0

    if-nez v5, :cond_2a

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ContactHeaderWidget;->showEdit(Z)V

    .line 2143
    :cond_2a
    return-void

    .line 2132
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mBottomButtonBar:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mBottomView:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_2c
    move v5, v10

    goto/16 :goto_a

    :cond_2d
    move v5, v7

    goto/16 :goto_6

    :cond_2e
    move-object/from16 v22, v7

    move-object v7, v6

    move-object/from16 v6, v22

    goto/16 :goto_1

    .line 1963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2012
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private closeCursor()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1064
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    .line 1067
    :cond_0
    return-void
.end method

.method private confirmBackgroundForEntries()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2148
    .line 2152
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v8

    move v4, v9

    move-object v5, v1

    move-object v6, v1

    .line 2154
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2155
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2156
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    move v0, v4

    move-object v1, v5

    move-object v4, v6

    .line 2154
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v1

    move-object v6, v4

    move v4, v0

    goto :goto_0

    .line 2159
    :cond_0
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    iget-object v1, v1, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 2162
    const-string v7, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_1

    .line 2164
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    iput v8, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    move v0, v4

    move-object v1, v5

    move-object v4, v6

    goto :goto_1

    .line 2166
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    iput v9, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    .line 2167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    iput v10, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    move v0, v4

    move-object v1, v5

    move-object v4, v6

    goto :goto_1

    .line 2170
    :cond_2
    if-nez v6, :cond_7

    .line 2171
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 2174
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v1, v6, :cond_6

    .line 2176
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-object v4, v1

    move-object v1, v0

    move v0, v8

    goto :goto_1

    .line 2181
    :cond_3
    if-eqz v6, :cond_4

    .line 2182
    if-eqz v4, :cond_5

    .line 2183
    iput v8, v6, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    .line 2191
    :cond_4
    :goto_3
    return-void

    .line 2185
    :cond_5
    iput v9, v6, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    .line 2186
    if-eqz v5, :cond_4

    .line 2187
    iput v10, v5, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    goto :goto_3

    :cond_6
    move v0, v4

    move-object v4, v1

    move-object v1, v5

    goto :goto_1

    :cond_7
    move-object v1, v6

    goto :goto_2
.end method

.method private considerBindData()V
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-eqz v0, :cond_2

    .line 1076
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasCallLogs:Z

    if-eqz v0, :cond_1

    .line 1077
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->bindData()V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->bindData()V

    goto :goto_0

    .line 1082
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    if-eqz v0, :cond_3

    .line 1083
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasEntities:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasStatuses:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasCallLogs:Z

    if-eqz v0, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->bindData()V

    goto :goto_0

    .line 1087
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasEntities:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasStatuses:Z

    if-eqz v0, :cond_0

    .line 1088
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->bindData()V

    goto :goto_0
.end method

.method private createCalllogMenu(Landroid/view/ContextMenu;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1253
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->isPresentationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    const v0, 0x7f0b001d

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1256
    const v0, 0x7f0b001e

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1259
    iget-object v0, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactsUtils;->doIpCallContacts(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V

    .line 1262
    const v0, 0x7f0b00a9

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ViewContactActivity$8;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/ViewContactActivity$8;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1274
    :cond_0
    iget-wide v0, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->noteId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    const-string v1, "android.intent.extra.UID"

    iget-wide v2, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->noteId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1277
    const-string v1, "vnd.android.cursor.item/call_note"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const v1, 0x7f0b019b

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/ViewContactActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/ViewContactActivity$9;-><init>(Lcom/android/contacts/ViewContactActivity;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1288
    :cond_1
    const v0, 0x7f0b019c

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ViewContactActivity$10;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/ViewContactActivity$10;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1315
    const v0, 0x7f0b019d

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ViewContactActivity$11;

    invoke-direct {v1, p0}, Lcom/android/contacts/ViewContactActivity$11;-><init>(Lcom/android/contacts/ViewContactActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1343
    return-void
.end method

.method private getRealListItemPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getRefreshedContactId()J
    .locals 3

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 899
    .local v0, freshContactUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 900
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 902
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getRingtonePickerIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2835
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2837
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2839
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2841
    if-nez p0, :cond_0

    .line 2843
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 2847
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2849
    return-object v0

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private getViewEntryForMenuItem(Landroid/view/MenuItem;)Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .locals 3
    .parameter

    .prologue
    .line 1654
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->getRealListItemPosition(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    const-string v1, "ViewContact"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1657
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gotoEditor()V
    .locals 4

    .prologue
    .line 1346
    .line 1347
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1353
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1355
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ViewContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1357
    :cond_0
    return-void
.end method

.method private isPresentationAllowed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 409
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 416
    :goto_0
    return v1

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, presentation:I
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 414
    goto :goto_0

    .line 416
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private joinAggregate(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1619
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1623
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1625
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->setAggregationException(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1628
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1631
    const v0, 0x7f0b002b

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1632
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->startEntityQuery()V

    .line 1633
    return-void
.end method

.method private makeItemPrimary(Landroid/view/MenuItem;Z)V
    .locals 1
    .parameter "item"
    .parameter "isPrimary"

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/android/contacts/ViewContactActivity;->getViewEntryForMenuItem(Landroid/view/MenuItem;)Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-result-object v0

    .line 1514
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {p0, v0, p2}, Lcom/android/contacts/ViewContactActivity;->makeItemPrimary(Lcom/android/contacts/ViewContactActivity$ViewEntry;Z)V

    .line 1515
    return-void
.end method

.method private makeItemPrimary(Lcom/android/contacts/ViewContactActivity$ViewEntry;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1518
    if-nez p1, :cond_0

    .line 1533
    :goto_0
    return-void

    .line 1523
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1524
    const-string v1, "is_super_primary"

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    if-nez p2, :cond_1

    .line 1527
    const-string v1, "is_primary"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1530
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1532
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->startEntityQuery()V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1524
    goto :goto_1
.end method

.method private declared-synchronized readCallLogs(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 926
    monitor-enter p0

    if-nez p1, :cond_0

    .line 948
    :goto_0
    monitor-exit p0

    return-void

    .line 930
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 936
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 937
    new-instance v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ViewContactActivity$CallLogEntry;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$1;)V

    .line 938
    .local v0, callLog:Lcom/android/contacts/ViewContactActivity$CallLogEntry;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->id:J

    .line 939
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->date:J

    .line 940
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->duration:J

    .line 941
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->callType:I

    .line 942
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->number:Ljava/lang/String;

    .line 943
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->firewallType:I

    .line 944
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 926
    .end local v0           #callLog:Lcom/android/contacts/ViewContactActivity$CallLogEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 947
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/ViewContactActivity;->mHasCallLogs:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized readStatuses(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 910
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mStatuses:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 913
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 914
    new-instance v2, Lcom/android/contacts/util/DataStatus;

    invoke-direct {v2, p1}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 915
    .local v2, status:Lcom/android/contacts/util/DataStatus;
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 916
    .local v0, dataId:J
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mStatuses:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 910
    .end local v0           #dataId:J
    .end local v2           #status:Lcom/android/contacts/util/DataStatus;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 919
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/contacts/ViewContactActivity;->mHasStatuses:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    monitor-exit p0

    return-void
.end method

.method private resetSectionsAndHeader(Z)V
    .locals 2
    .parameter "isUnknowNumber"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    if-nez p1, :cond_3

    .line 427
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mRingEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknowNumberButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->showEdit(Z)V

    .line 453
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_2
    return-void

    .line 447
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->isPresentationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->showEdit(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->addButtonsForUnknowContact()V

    goto :goto_0
.end method

.method private sendShareIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1472
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1473
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1476
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    const v0, 0x7f0b00ab

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendToDesktop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1484
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ShortcutRouterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1485
    const-string v2, "android.intent.action.VIEW_CONTACT_SHORTCUT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1487
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1488
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v2}, Lcom/android/internal/widget/ContactHeaderWidget;->getDisplayNmae()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    const-string v1, "duplicate"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1491
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1494
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01ca

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1496
    return-void
.end method

.method private static setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const-string v9, "lookup"

    .line 951
    if-nez p1, :cond_1

    move-object v0, v3

    .line 988
    :cond_0
    :goto_0
    return-object v0

    .line 954
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 955
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    move-object v0, v3

    .line 956
    goto :goto_0

    .line 960
    :cond_2
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 961
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 962
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 970
    new-array v2, v8, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name_raw_contact_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "display_name_source"

    aput-object v4, v2, v0

    const-string v0, "lookup"

    aput-object v9, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 977
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 978
    const-string v1, "lookup"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 980
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 983
    goto :goto_0

    .line 987
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 988
    goto :goto_0
.end method

.method private shareContact(Z)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v11, "vnd.android.cursor.item/organization"

    const-string v10, "vnd.android.cursor.item/email_v2"

    const-string v9, "android.intent.extra.TEXT"

    const-string v3, "android.intent.action.SEND"

    .line 1401
    if-eqz p1, :cond_1

    .line 1402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1403
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string v1, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->sendShareIntent(Landroid/content/Intent;)V

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mAllRestricted:Z

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1413
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1415
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1416
    const-string v1, "text/x-vcard"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1420
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1421
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/internal/widget/ContactHeaderWidget;->getDisplayNmae()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1423
    if-eqz v0, :cond_2

    .line 1424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-static {v0, v8}, Lcom/android/contacts/ContactEntryAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v5

    move v6, v8

    .line 1432
    :goto_1
    if-ge v6, v5, :cond_8

    .line 1433
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-static {v0, v6, v8}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 1435
    const-string v1, "vnd.android.cursor.item/phone_v2"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vnd.android.cursor.item/email_v2"

    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vnd.android.cursor.item/organization"

    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1438
    :cond_3
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1439
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_4
    const-string v1, "vnd.android.cursor.item/phone_v2"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/email_v2"

    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/organization"

    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/nickname"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/note"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/website"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/contact_event"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/im"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1452
    :cond_5
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1453
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    :cond_6
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 1455
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    iget-object v7, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1462
    :cond_8
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1463
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_3

    .line 1466
    :cond_9
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    invoke-direct {p0, v2}, Lcom/android/contacts/ViewContactActivity;->sendShareIntent(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private signalError()V
    .locals 0

    .prologue
    .line 1781
    return-void
.end method

.method private declared-synchronized startEntityQuery()V
    .locals 11

    .prologue
    const-string v0, "contactid="

    .line 993
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->closeCursor()V

    .line 994
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-eqz v0, :cond_1

    .line 995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasCallLogs:Z

    .line 996
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/ViewContactActivity$CallLogQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contactid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/CallLog;->makeFakeId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->considerBindData()V

    .line 1002
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->bindFromUnKnownNumber(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    :goto_0
    monitor-exit p0

    return-void

    .line 1006
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/contacts/ViewContactActivity;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    .line 1012
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 1014
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/contacts/ViewContactActivity;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    .line 1020
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ViewContactActivity;->mNameRawContactId:J

    .line 1021
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ViewContactActivity;->mDisplayNameSource:I

    .line 1025
    const v0, 0x7f0b003a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1026
    const-string v0, "ViewContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1031
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 1033
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const-string v2, "name_raw_contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/ViewContactActivity;->mNameRawContactId:J

    .line 1035
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const-string v2, "display_name_source"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ViewContactActivity;->mDisplayNameSource:I

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasEntities:Z

    .line 1042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mHasStatuses:Z

    .line 1044
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "contact_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1050
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v4, Lcom/android/contacts/ViewContactActivity$StatusQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mode IS NOT NULL OR status IS NOT NULL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    if-eqz v0, :cond_4

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/ViewContactActivity$CallLogQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contactid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->bindFromContactLookupUri(Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private startIntentFromNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    .line 804
    const/4 v0, 0x0

    .line 806
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/contacts/ViewContactActivity;->mButtonActionType:I

    if-nez v1, :cond_3

    .line 807
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "sip"

    invoke-static {v1, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 819
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 822
    :cond_1
    return-void

    .line 811
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    invoke-static {v1, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 814
    :cond_3
    iget v1, p0, Lcom/android/contacts/ViewContactActivity;->mButtonActionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 815
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1556
    packed-switch p1, :pswitch_data_0

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1558
    :pswitch_0
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 1559
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1560
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ViewContactActivity;->joinAggregate(J)V

    goto :goto_0

    .line 1565
    :pswitch_1
    const/16 v0, 0x309

    if-ne p2, v0, :cond_1

    .line 1566
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V

    goto :goto_0

    .line 1567
    :cond_1
    if-ne p2, v1, :cond_0

    .line 1568
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 1569
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V

    goto :goto_0

    .line 1576
    :pswitch_2
    if-ne p2, v1, :cond_0

    .line 1577
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1579
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v0, v3

    .line 1586
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1587
    const-string v2, "custom_ringtone"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1583
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1593
    :pswitch_3
    if-ne p2, v1, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1599
    :pswitch_4
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 1600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    .line 1601
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->resetSectionsAndHeader(Z)V

    .line 1602
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 1603
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1604
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V

    goto :goto_0

    .line 1609
    :pswitch_5
    if-ne p2, v1, :cond_0

    .line 1610
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1611
    const-string v1, "custom_call_incoming_photo"

    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 345
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->closeCursor()V

    .line 346
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 349
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 350
    .local v0, contactId:J
    invoke-static {p0, v0, v1}, Lcom/android/contacts/ContactsUtils;->updateDeleteContactCallLogs(Landroid/content/Context;J)V

    .line 352
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V

    .line 353
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v3, "phone"

    .line 695
    if-nez p1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 699
    :cond_0
    const/4 v0, 0x0

    .line 700
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 719
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/contacts/ViewContactActivity;->bottomButtonClick(I)V

    goto :goto_0

    .line 702
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 703
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ViewContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 707
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 708
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "phone"

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ViewContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 713
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.ADD_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v1, "numbers"

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 722
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/contacts/ViewContactActivity;->bottomButtonClick(I)V

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x7f07003f
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1500
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1509
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1502
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/ViewContactActivity;->makeItemPrimary(Landroid/view/MenuItem;Z)V

    move v0, v1

    .line 1503
    goto :goto_0

    .line 1505
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ViewContactActivity;->makeItemPrimary(Landroid/view/MenuItem;Z)V

    move v0, v1

    .line 1506
    goto :goto_0

    .line 1500
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 358
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 359
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 360
    const v5, 0x7f030006

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->setContentView(I)V

    .line 362
    const v5, 0x7f07003e

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mBottomButtonBar:Landroid/view/View;

    .line 363
    const v5, 0x7f07003d

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mBottomView:Landroid/view/View;

    .line 365
    new-instance v5, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v5, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 366
    const v5, 0x7f07003c

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    .line 367
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 368
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    const/high16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 369
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 371
    const v5, 0x7f07003f

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v5, 0x7f070040

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v5, 0x7f070031

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ContactHeaderWidget;

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    .line 375
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    new-instance v6, Lcom/android/contacts/ViewContactActivity$2;

    invoke-direct {v6, p0}, Lcom/android/contacts/ViewContactActivity$2;-><init>(Lcom/android/contacts/ViewContactActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ContactHeaderWidget;->setOnEditListener(Landroid/view/View$OnClickListener;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    .line 383
    iput-object p0, p0, Lcom/android/contacts/ViewContactActivity;->mContext:Landroid/content/Context;

    .line 385
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 386
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "extra.show.calllogs"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    iput v7, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    .line 388
    iput-boolean v7, p0, Lcom/android/contacts/ViewContactActivity;->showCalllogs:Z

    .line 390
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 391
    .local v1, data:Landroid/net/Uri;
    if-nez v1, :cond_2

    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    .line 392
    iget-boolean v5, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-eqz v5, :cond_3

    .line 393
    const-string v5, "number"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownNumber:Ljava/lang/String;

    .line 405
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    invoke-direct {p0, v5}, Lcom/android/contacts/ViewContactActivity;->resetSectionsAndHeader(Z)V

    .line 406
    return-void

    :cond_2
    move v5, v8

    .line 391
    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, authority:Ljava/lang/String;
    const-string v5, "com.android.contacts"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 397
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    goto :goto_1

    .line 398
    :cond_4
    const-string v5, "contacts"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 400
    .local v3, rawContactId:J
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mLookupUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    const-string v4, "vnd.android.cursor.dir/calls"

    .line 1180
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    if-nez p3, :cond_1

    .line 1188
    const-string v0, "ViewContact"

    const-string v1, "bad menuInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    const-string v1, "ViewContact"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getRealListItemPosition(I)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 1198
    if-eqz v0, :cond_0

    .line 1202
    const v1, 0x7f0b002c

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1204
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-eqz v1, :cond_2

    .line 1205
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    if-ne v1, v5, :cond_0

    .line 1207
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ViewContactActivity;->createCalllogMenu(Landroid/view/ContextMenu;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1213
    const v1, 0x7f0b001d

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1214
    const v1, 0x7f0b001e

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1217
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/contacts/ContactsUtils;->doIpCallContacts(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V

    .line 1219
    iget-boolean v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    if-eqz v1, :cond_4

    .line 1220
    const v1, 0x7f0b012f

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1239
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    const v1, 0x7f0b00a9

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/ViewContactActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/ViewContactActivity$7;-><init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1222
    :cond_4
    const v1, 0x7f0b0021

    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1224
    :cond_5
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1225
    const v1, 0x7f0b001f

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1226
    iget-boolean v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    if-eqz v1, :cond_6

    .line 1227
    const v1, 0x7f0b0130

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1229
    :cond_6
    const v1, 0x7f0b0022

    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1231
    :cond_7
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1232
    const v1, 0x7f0b0020

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1233
    :cond_8
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    if-ne v1, v5, :cond_3

    .line 1235
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ViewContactActivity;->createCalllogMenu(Landroid/view/ContextMenu;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x7f0b002d

    const v1, 0x1080027

    const v2, 0x104000a

    .line 749
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 785
    :goto_0
    return-object v0

    .line 751
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 760
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 769
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 778
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1142
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-eqz v0, :cond_0

    .line 1143
    const v0, 0x7f070111

    const v1, 0x7f0b00a7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1148
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1146
    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 743
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 744
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->closeCursor()V

    .line 745
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1722
    invoke-direct {p0, p3}, Lcom/android/contacts/ViewContactActivity;->getRealListItemPosition(I)I

    move-result v0

    .line 1723
    if-gez v0, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1727
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-static {v1, v0, v3}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 1729
    if-eqz v0, :cond_8

    .line 1731
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.dir/calls"

    if-ne v1, v2, :cond_4

    .line 1732
    iget v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    if-ne v1, v4, :cond_3

    .line 1733
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    if-eqz v0, :cond_2

    .line 1734
    iput v3, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    .line 1738
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->considerBindData()V

    .line 1739
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1736
    :cond_2
    iput v4, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    goto :goto_1

    .line 1741
    :cond_3
    iget v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    if-ne v1, v5, :cond_5

    .line 1742
    iput v5, p0, Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I

    .line 1743
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->considerBindData()V

    goto :goto_0

    .line 1746
    :cond_4
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    const-string v2, "call_incoming_photo"

    if-ne v1, v2, :cond_5

    .line 1747
    iget-object v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1750
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1751
    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1752
    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ViewContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1756
    :cond_5
    iget-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1757
    if-eqz v1, :cond_7

    .line 1759
    :try_start_0
    iget-boolean v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isIntentForResult:Z

    if-eqz v2, :cond_6

    .line 1760
    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intentRequestCode:I

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ViewContactActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    const-string v0, "ViewContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto :goto_0

    .line 1762
    :cond_6
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1769
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto :goto_0

    .line 1772
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    .line 1668
    sparse-switch p1, :sswitch_data_0

    .line 1716
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 1671
    :sswitch_0
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1673
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1681
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1682
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1683
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getRealListItemPosition(I)I

    move-result v5

    invoke-static {v4, v5, v7}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 1687
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    if-ne v4, v8, :cond_3

    .line 1689
    iget-object v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 1690
    goto :goto_0

    .line 1692
    .end local v0           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 1694
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-direct {v2, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1696
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 1697
    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    move v4, v7

    .line 1699
    goto :goto_0

    .line 1703
    .end local v1           #index:I
    :sswitch_1
    iget v4, p0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    if-lez v4, :cond_4

    move v4, v6

    :goto_2
    iget v5, p0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    if-lez v5, :cond_5

    move v5, v6

    :goto_3
    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 1704
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    :goto_4
    move v4, v6

    .line 1712
    goto :goto_0

    :cond_4
    move v4, v7

    .line 1703
    goto :goto_2

    :cond_5
    move v5, v7

    goto :goto_3

    .line 1705
    :cond_6
    iget v4, p0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    if-nez v4, :cond_7

    .line 1706
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    goto :goto_4

    .line 1707
    :cond_7
    iget v4, p0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    if-le v4, v6, :cond_8

    .line 1708
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    goto :goto_4

    .line 1710
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    goto :goto_4

    .line 1677
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1668
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1397
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1363
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->gotoEditor()V

    goto :goto_0

    .line 1368
    :sswitch_1
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    if-lez v0, :cond_0

    move v0, v2

    :goto_2
    iget v1, p0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1369
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    :goto_4
    move v0, v2

    .line 1377
    goto :goto_1

    :cond_0
    move v0, v3

    .line 1368
    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_3

    .line 1370
    :cond_2
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    if-nez v0, :cond_3

    .line 1371
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    goto :goto_4

    .line 1372
    :cond_3
    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mReadOnlySourcesCnt:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    if-le v0, v2, :cond_4

    .line 1373
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    goto :goto_4

    .line 1375
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    goto :goto_4

    .line 1380
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->showJoinAggregateActivity()V

    move v0, v2

    .line 1381
    goto :goto_1

    .line 1384
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    invoke-direct {p0, v0}, Lcom/android/contacts/ViewContactActivity;->shareContact(Z)V

    move v0, v2

    .line 1385
    goto :goto_1

    .line 1388
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->sendToDesktop()V

    move v0, v2

    .line 1389
    goto :goto_1

    .line 1393
    :sswitch_5
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v1}, Lcom/android/internal/widget/ContactHeaderWidget;->isStared()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->setStared(Z)V

    move v0, v2

    .line 1394
    goto :goto_1

    :cond_5
    move v1, v3

    .line 1393
    goto :goto_5

    .line 1361
    :sswitch_data_0
    .sparse-switch
        0x7f0700fe -> :sswitch_1
        0x7f070100 -> :sswitch_2
        0x7f07010f -> :sswitch_5
        0x7f070110 -> :sswitch_0
        0x7f070111 -> :sswitch_3
        0x7f070112 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 737
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 738
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->closeCursor()V

    .line 739
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1153
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1154
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    .line 1157
    :goto_0
    const v1, 0x7f070110

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/contacts/ViewContactActivity;->mWritableSourcesCnt:I

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1160
    const v0, 0x7f070111

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/ViewContactActivity;->mAllRestricted:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1163
    const v0, 0x7f07010f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v1}, Lcom/android/internal/widget/ContactHeaderWidget;->isStared()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0b001a

    .line 1166
    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1168
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v1}, Lcom/android/internal/widget/ContactHeaderWidget;->isStared()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f020088

    .line 1170
    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1173
    :cond_0
    return v2

    :cond_1
    move v0, v3

    .line 1156
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1157
    goto :goto_1

    :cond_3
    move v1, v3

    .line 1160
    goto :goto_2

    .line 1164
    :cond_4
    const v1, 0x7f0b0019

    goto :goto_3

    .line 1168
    :cond_5
    const v1, 0x7f020087

    goto :goto_4
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 826
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 829
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/contacts/ViewContactActivity;->readStatuses(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    if-eqz p3, :cond_0

    .line 832
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->considerBindData()V

    .line 895
    :goto_0
    return-void

    .line 831
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_1

    .line 832
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 831
    :cond_1
    throw v1

    .line 837
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 840
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/contacts/ViewContactActivity;->readCallLogs(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 842
    if-eqz p3, :cond_3

    .line 843
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->considerBindData()V

    goto :goto_0

    .line 842
    :catchall_1
    move-exception v1

    if-eqz p3, :cond_4

    .line 843
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_4
    throw v1

    .line 860
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEntities:Ljava/util/ArrayList;

    .line 861
    .local v0, oldEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    new-instance v1, Lcom/android/contacts/ViewContactActivity$6;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/contacts/ViewContactActivity$6;-><init>(Lcom/android/contacts/ViewContactActivity;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/contacts/ViewContactActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 731
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 732
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->startEntityQuery()V

    .line 733
    return-void
.end method

.method protected setAggregationException(JI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1640
    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1641
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1642
    cmp-long v0, v3, p1

    if-eqz v0, :cond_0

    .line 1643
    const-string v0, "raw_contact_id1"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1644
    const-string v0, "raw_contact_id2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1645
    const-string v0, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1646
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1649
    :cond_1
    return-void
.end method

.method public showJoinAggregateActivity()V
    .locals 5

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->getRefreshedContactId()J

    move-result-wide v0

    .line 1540
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1541
    const/4 v2, 0x0

    .line 1542
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1543
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1545
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.JOIN_AGGREGATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1546
    const-string v4, "com.android.contacts.action.AGGREGATE_ID"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1547
    if-eqz v2, :cond_1

    .line 1548
    const-string v0, "com.android.contacts.action.AGGREGATE_NAME"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/ViewContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1552
    :cond_2
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2821
    if-eqz p4, :cond_0

    .line 2822
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2826
    :goto_0
    return-void

    .line 2824
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
