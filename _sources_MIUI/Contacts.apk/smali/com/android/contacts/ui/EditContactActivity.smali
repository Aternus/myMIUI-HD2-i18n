.class public final Lcom/android/contacts/ui/EditContactActivity;
.super Landroid/app/Activity;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/EditContactActivity$AddContactTask;,
        Lcom/android/contacts/ui/EditContactActivity$JoinContactQuery;,
        Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;,
        Lcom/android/contacts/ui/EditContactActivity$PersistTask;,
        Lcom/android/contacts/ui/EditContactActivity$SaveClickListener;,
        Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;,
        Lcom/android/contacts/ui/EditContactActivity$PhotoListener;,
        Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;,
        Lcom/android/contacts/ui/EditContactActivity$CustomQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;"
    }
.end annotation


# static fields
.field private static final PHOTO_DIR:Ljava/io/File;


# instance fields
.field private isInsert:Z

.field private mAddMoreDialog:Landroid/app/Dialog;

.field private mContactIdForJoin:J

.field private mContent:Landroid/widget/LinearLayout;

.field private mCurrentPhotoFile:Landroid/net/Uri;

.field private mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

.field private mEntity:Lcom/android/contacts/model/EntityDelta;

.field private mFocusFirstEditBox:Z

.field private final mGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNames:Landroid/widget/TextView;

.field private mIncomingCallPhoto:Ljava/lang/String;

.field private mIsShowInputMethod:Z

.field private mManagedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

.field mQuerySelection:Ljava/lang/String;

.field private mRawContactIdRequestingPhoto:J

.field private mRingtoneNames:Landroid/widget/TextView;

.field private mRingtoneUri:Landroid/net/Uri;

.field private mSource:Lcom/android/contacts/model/ContactsSource;

.field private mState:Lcom/android/contacts/model/EntitySet;

.field private mStatus:I

.field private mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/ui/EditContactActivity;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 157
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J

    .line 172
    iput-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    .line 188
    iput-boolean v2, p0, Lcom/android/contacts/ui/EditContactActivity;->isInsert:Z

    .line 192
    iput-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    .line 213
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mManagedDialogs:Ljava/util/ArrayList;

    .line 215
    iput-boolean v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mIsShowInputMethod:Z

    .line 1777
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/ui/EditContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doRevertAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/ui/EditContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/ui/EditContactActivity;ZILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ui/EditContactActivity;->onSaveCompleted(ZILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->updateMmsThreadContactInfo(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/ui/EditContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/contacts/ui/EditContactActivity;->isInsert:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->updateCallLogs(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->updateRingtone(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->saveCallIncomingPhoto(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/contacts/ui/EditContactActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->doTakePhoto(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doPickPhotoFromGallery()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/contacts/ui/EditContactActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->ensureDefaultKindsExist(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/ui/EditContactActivity;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity;->findDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doPickIncomingCallPhoto()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doEditIncomingCallPhoto()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->bindCallIncoming()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/ui/EditContactActivity;)Lcom/android/contacts/model/EntitySet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/model/EntitySet;)Lcom/android/contacts/model/EntitySet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/widget/BaseContactEditorView;)Lcom/android/contacts/ui/widget/BaseContactEditorView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/ui/EditContactActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->setPhoto(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/ui/EditContactActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity;->doPickPhotoAction(J)V

    return-void
.end method

.method private bindCallIncoming()V
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    const v2, 0x7f070093

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 603
    .local v0, text:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 604
    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private bindRingtone()V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneNames:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneNames:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/media/Ringtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneNames:Landroid/widget/TextView;

    const v1, 0x7f0b0042

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buildIcons([ZLandroid/view/View;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const v12, 0x7f0700bb

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1855
    const v0, 0x7f0700b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1856
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1860
    invoke-static {}, Lcom/android/contacts/model/ContactItemTypeSource;->getItems()Ljava/util/List;

    move-result-object v4

    move v5, v10

    move v3, v11

    move v6, v10

    move-object v2, v1

    .line 1861
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_6

    .line 1862
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    .line 1864
    iget-object v7, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1865
    aget-boolean v7, p1, v5

    if-eqz v7, :cond_1

    const v7, 0x7f0200ed

    :goto_1
    iput v7, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->drawableId:I

    .line 1875
    :cond_0
    :goto_2
    div-int/lit8 v7, v6, 0x4

    if-lt v7, v3, :cond_8

    .line 1876
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1877
    add-int/lit8 v3, v3, 0x1

    move v7, v3

    move-object v8, v2

    .line 1880
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 1881
    sub-int v2, v6, v11

    rem-int/lit8 v2, v2, 0x4

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1882
    aget-boolean v3, p1, v5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1883
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1884
    const v3, 0x7f07009e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget v9, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->drawableId:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1885
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v1, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->textId:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1886
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aget-boolean v3, p1, v5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1887
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1861
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v7

    move-object v2, v8

    goto :goto_0

    .line 1865
    :cond_1
    const v7, 0x7f0200ee

    goto :goto_1

    .line 1867
    :cond_2
    iget-object v7, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/note"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1868
    aget-boolean v7, p1, v5

    if-eqz v7, :cond_3

    const v7, 0x7f0200f0

    :goto_4
    iput v7, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->drawableId:I

    goto :goto_2

    :cond_3
    const v7, 0x7f0200f1

    goto :goto_4

    .line 1870
    :cond_4
    iget-object v7, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/contact_event"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1871
    aget-boolean v7, p1, v5

    if-eqz v7, :cond_5

    const v7, 0x7f0200e2

    :goto_5
    iput v7, v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;->drawableId:I

    goto :goto_2

    :cond_5
    const v7, 0x7f0200e3

    goto :goto_5

    .line 1890
    :cond_6
    rem-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_7

    .line 1891
    rem-int/lit8 v0, v6, 0x4

    :goto_6
    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    .line 1892
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 1891
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1895
    :cond_7
    return-void

    :cond_8
    move v7, v3

    move-object v8, v2

    goto/16 :goto_3
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1443
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1445
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1446
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1447
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1448
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    return-void
.end method

.method private createContact(Landroid/accounts/Account;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "account_type"

    const-string v3, "account_name"

    .line 1902
    invoke-static {p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v0

    .line 1903
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1904
    if-eqz p1, :cond_1

    .line 1905
    const-string v2, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v2, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :goto_0
    new-instance v2, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 1914
    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v0

    .line 1917
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1918
    invoke-static {p0, v0, v2, v1}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 1920
    invoke-static {v2, v0}, Lcom/android/contacts/ui/EditContactActivity;->ensureDefaultKindsExist(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V

    .line 1924
    const-string v1, "com.google"

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    invoke-static {v2, p0}, Lcom/android/contacts/model/GoogleSource;->attemptMyContactsMembership(Lcom/android/contacts/model/EntityDelta;Landroid/content/Context;)V

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    if-nez v0, :cond_3

    .line 1930
    invoke-static {v2}, Lcom/android/contacts/model/EntitySet;->fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntitySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    .line 1935
    :goto_2
    return-void

    .line 1908
    :cond_1
    const-string v2, "account_name"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1909
    const-string v2, "account_type"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 1914
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1933
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntitySet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private createSplitDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1753
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1754
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1755
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1756
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1757
    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/ui/EditContactActivity$6;

    invoke-direct {v2, p0}, Lcom/android/contacts/ui/EditContactActivity$6;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1764
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1765
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1766
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static dismissDialog(Landroid/app/Dialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 461
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 465
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EditContactActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring exception while dismissing dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doAddAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1464
    iget v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mStatus:I

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 1470
    :goto_0
    return v0

    .line 1469
    :cond_0
    new-instance v0, Lcom/android/contacts/ui/EditContactActivity$AddContactTask;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/EditContactActivity$AddContactTask;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/EditContactActivity$AddContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v2

    .line 1470
    goto :goto_0
.end method

.method private doAddMore()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1836
    invoke-static {}, Lcom/android/contacts/model/ContactItemTypeSource;->getItems()Ljava/util/List;

    move-result-object v1

    .line 1837
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Z

    .line 1838
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 1839
    iget-object v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    iget-object v5, p0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    iget-object v0, v0, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)Z

    move-result v0

    aput-boolean v0, v2, v3

    .line 1838
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1841
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/EditContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1843
    const v1, 0x7f030034

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1845
    invoke-direct {p0, v2, v0}, Lcom/android/contacts/ui/EditContactActivity;->buildIcons([ZLandroid/view/View;)V

    .line 1847
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1848
    const v2, 0x7f0b011b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1850
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mAddMoreDialog:Landroid/app/Dialog;

    .line 1851
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mAddMoreDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1852
    return-void
.end method

.method private doCropPhoto(Landroid/net/Uri;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1682
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1689
    invoke-static {p1}, Lcom/android/contacts/ui/EditContactActivity;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1690
    const/16 v1, 0xbd4

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    :goto_0
    return-void

    .line 1691
    :catch_0
    move-exception v0

    .line 1692
    const-string v1, "EditContactActivity"

    const-string v2, "Cannot crop image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1693
    const v0, 0x7f0b003f

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doDeleteAction()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 1478
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->hasValidState()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1479
    const/4 v7, 0x0

    .line 1503
    :goto_0
    return v7

    .line 1480
    :cond_0
    const/4 v4, 0x0

    .line 1481
    .local v4, readOnlySourcesCnt:I
    const/4 v6, 0x0

    .line 1482
    .local v6, writableSourcesCnt:I
    invoke-static {p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v5

    .line 1483
    .local v5, sources:Lcom/android/contacts/model/Sources;
    iget-object v7, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v7}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    .line 1484
    .local v2, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {v5, v0, v10}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v1

    .line 1487
    .local v1, contactsSource:Lcom/android/contacts/model/ContactsSource;
    if-eqz v1, :cond_1

    iget-boolean v7, v1, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-eqz v7, :cond_1

    .line 1488
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1490
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1494
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #contactsSource:Lcom/android/contacts/model/ContactsSource;
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_2
    if-lez v4, :cond_3

    if-lez v6, :cond_3

    .line 1495
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/contacts/ui/EditContactActivity;->showDialog(I)V

    :goto_2
    move v7, v9

    .line 1503
    goto :goto_0

    .line 1496
    :cond_3
    if-lez v4, :cond_4

    if-nez v6, :cond_4

    .line 1497
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/contacts/ui/EditContactActivity;->showDialog(I)V

    goto :goto_2

    .line 1498
    :cond_4
    if-nez v4, :cond_5

    if-le v6, v9, :cond_5

    .line 1499
    invoke-virtual {p0, v10}, Lcom/android/contacts/ui/EditContactActivity;->showDialog(I)V

    goto :goto_2

    .line 1501
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/contacts/ui/EditContactActivity;->showDialog(I)V

    goto :goto_2
.end method

.method private doEditGroups()V
    .locals 8

    .prologue
    .line 1816
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/ui/ContactMembershipEditor;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1817
    const-string v0, "extra_check_groups"

    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1819
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1821
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 1823
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 1824
    new-instance v4, Lcom/android/contacts/model/AccountWithId;

    const-string v5, "account_name"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, -0x1

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/android/contacts/model/AccountWithId;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1828
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1831
    :cond_0
    const-string v0, "extra_accounts"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1832
    const/16 v0, 0xbcf

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1833
    return-void
.end method

.method private doEditIncomingCallPhoto()V
    .locals 3

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1615
    :goto_0
    return-void

    .line 1612
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1613
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1614
    const/16 v1, 0xbd6

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private doEditRingtone()V
    .locals 2

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/contacts/ViewContactActivity;->getRingtonePickerIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1812
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xbd2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1813
    return-void
.end method

.method private doJoinContactAction()Z
    .locals 1

    .prologue
    .line 1770
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/EditContactActivity;->doSaveAction(I)Z

    move-result v0

    return v0
.end method

.method private doPickCallIncomingPhotoAction()V
    .locals 3

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1559
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1560
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1561
    const v1, 0x7f060001

    new-instance v2, Lcom/android/contacts/ui/EditContactActivity$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/ui/EditContactActivity$4;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1601
    :goto_1
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1577
    :cond_1
    const v1, 0x7f060002

    new-instance v2, Lcom/android/contacts/ui/EditContactActivity$5;

    invoke-direct {v2, p0}, Lcom/android/contacts/ui/EditContactActivity$5;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private doPickIncomingCallPhoto()V
    .locals 2

    .prologue
    .line 1507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1509
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    const/16 v1, 0xbd5

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1512
    return-void
.end method

.method private doPickPhotoAction(J)V
    .locals 3
    .parameter

    .prologue
    .line 1518
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1520
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1521
    const/high16 v1, 0x7f06

    new-instance v2, Lcom/android/contacts/ui/EditContactActivity$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity$3;-><init>(Lcom/android/contacts/ui/EditContactActivity;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1548
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private doPickPhotoFromGallery()V
    .locals 2

    .prologue
    .line 1648
    :try_start_0
    invoke-static {}, Lcom/android/contacts/ui/EditContactActivity;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1649
    const/16 v1, 0xbd4

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :goto_0
    return-void

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    const v0, 0x7f0b003f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doRevertAction()Z
    .locals 1

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->finish()V

    .line 1456
    const/4 v0, 0x1

    return v0
.end method

.method private doSplitContactAction()Z
    .locals 1

    .prologue
    .line 1746
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1749
    :goto_0
    return v0

    .line 1748
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->createSplitDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/EditContactActivity;->showAndManageDialog(Landroid/app/Dialog;)V

    .line 1749
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doTakePhoto(I)V
    .locals 2
    .parameter

    .prologue
    .line 1633
    :try_start_0
    sget-object v0, Lcom/android/contacts/ui/EditContactActivity;->PHOTO_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1634
    sget-object v0, Lcom/android/contacts/ui/EditContactActivity;->PHOTO_DIR:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->getPhotoFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mCurrentPhotoFile:Landroid/net/Uri;

    .line 1635
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mCurrentPhotoFile:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->getTakePickIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1636
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    :goto_0
    return-void

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    const v0, 0x7f0b003f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static ensureDefaultKindsExist(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V
    .locals 1
    .parameter "state"
    .parameter "source"

    .prologue
    .line 351
    const-string v0, "vnd.android.cursor.item/name"

    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)V

    .line 352
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)V

    .line 353
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private findDisplayName(J)Ljava/lang/String;
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1729
    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntitySet;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v0

    .line 1730
    .local v0, entity:Lcom/android/contacts/model/EntityDelta;
    if-eqz v0, :cond_0

    .line 1731
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1732
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1733
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data1"

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1737
    .end local v1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8c

    const/4 v3, 0x1

    .line 1717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1718
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1721
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1722
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1723
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1724
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1725
    return-object v0
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1659
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1660
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x8c

    const/4 v3, 0x1

    .line 1702
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1703
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1704
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1707
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1708
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1709
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1710
    return-object v0
.end method

.method private static getTakePickIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 1670
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1671
    const-string v1, "output"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1672
    return-object v0
.end method

.method private isContactUpdated()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 805
    iget-object v11, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    if-nez v11, :cond_0

    move v11, v13

    .line 838
    :goto_0
    return v11

    .line 809
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v9

    .line 811
    .local v9, sources:Lcom/android/contacts/model/Sources;
    iget-object v11, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v11}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/EntityDelta;

    .line 812
    .local v10, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v10}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v11

    const-string v12, "account_type"

    invoke-virtual {v11, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, accountType:Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v9, v0, v11}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v8

    .line 816
    .local v8, source:Lcom/android/contacts/model/ContactsSource;
    invoke-virtual {v8}, Lcom/android/contacts/model/ContactsSource;->getDataKinds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 817
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    iget-object v7, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    .line 818
    .local v7, mimeType:Ljava/lang/String;
    invoke-virtual {v10, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 819
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v1, :cond_2

    .line 822
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 824
    .local v2, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v11

    if-nez v11, :cond_3

    .line 826
    :cond_4
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 828
    :cond_5
    invoke-static {v2, v6}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result v11

    if-nez v11, :cond_3

    move v11, v14

    .line 829
    goto :goto_0

    .line 831
    :cond_6
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v14

    .line 832
    goto :goto_0

    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v2           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #source:Lcom/android/contacts/model/ContactsSource;
    .end local v10           #state:Lcom/android/contacts/model/EntityDelta;
    :cond_7
    move v11, v13

    .line 838
    goto :goto_0
.end method

.method private joinAggregate(J)V
    .locals 11
    .parameter

    .prologue
    .line 1372
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1376
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ui/EditContactActivity$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=? OR contact_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mContactIdForJoin:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1382
    const-wide/16 v1, -0x1

    .line 1384
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v6, v3, [J

    .line 1385
    const/4 v3, 0x0

    move-wide v7, v1

    move v1, v3

    :goto_0
    array-length v2, v6

    if-ge v1, v2, :cond_1

    .line 1386
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1387
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1388
    aput-wide v2, v6, v1

    .line 1389
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-wide v9, p0, Lcom/android/contacts/ui/EditContactActivity;->mContactIdForJoin:J

    cmp-long v4, v4, v9

    if-nez v4, :cond_5

    .line 1390
    const-wide/16 v4, -0x1

    cmp-long v4, v7, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 1385
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-wide v7, v2

    goto :goto_0

    .line 1397
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    const/4 v0, 0x0

    move v9, v0

    :goto_2
    array-length v0, v6

    if-ge v9, v0, :cond_4

    .line 1403
    const/4 v0, 0x0

    move v10, v0

    :goto_3
    array-length v0, v6

    if-ge v10, v0, :cond_3

    .line 1404
    if-eq v9, v10, :cond_2

    .line 1405
    aget-wide v2, v6, v9

    aget-wide v4, v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/ui/EditContactActivity;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 1403
    :cond_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_3

    .line 1402
    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 1412
    :cond_4
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1414
    const-string v2, "name_verified"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1415
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1423
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1426
    new-instance v1, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1428
    const v0, 0x7f0b002b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1436
    :goto_4
    return-void

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    const-string v1, "EditContactActivity"

    const-string v2, "Failed to apply aggregation exception batch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    const v0, 0x7f0b0047

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1432
    :catch_1
    move-exception v0

    .line 1433
    const-string v1, "EditContactActivity"

    const-string v2, "Failed to apply aggregation exception batch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1434
    const v0, 0x7f0b0047

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_5
    move-wide v2, v7

    goto/16 :goto_1
.end method

.method private onSaveCompleted(ZILandroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1215
    packed-switch p2, :pswitch_data_0

    .line 1259
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/contacts/ui/EditContactActivity$2;

    invoke-direct {v1, p0, p3}, Lcom/android/contacts/ui/EditContactActivity$2;-><init>(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1269
    return-void

    .line 1218
    :pswitch_0
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 1219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1221
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1222
    if-nez v1, :cond_1

    move-object v1, v2

    .line 1225
    :goto_1
    const-string v2, "contacts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1227
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1229
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1231
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1236
    :goto_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ui/EditContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 1240
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->finish()V

    goto :goto_0

    .line 1222
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1234
    :cond_2
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 1238
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/ui/EditContactActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    .line 1243
    :pswitch_1
    if-eqz p1, :cond_4

    .line 1244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1245
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1246
    const/16 v1, 0x309

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ui/EditContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 1248
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->finish()V

    goto :goto_0

    .line 1252
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mStatus:I

    .line 1253
    if-eqz p1, :cond_0

    .line 1254
    invoke-virtual {p0, p3}, Lcom/android/contacts/ui/EditContactActivity;->showJoinAggregateActivity(Landroid/net/Uri;)V

    goto :goto_0

    .line 1215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseGroupEditResult(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    .line 957
    if-nez p1, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const/4 v0, 0x0

    .line 962
    const-string v1, "extra_added_groups"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 963
    const-string v2, "extra_removed_groups"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 966
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 967
    iget-object v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v4, v3}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/EntityDelta;

    .line 968
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 969
    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 970
    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 973
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithId;

    .line 974
    iget-object v8, v0, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 975
    iget-object v7, p0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-static {p1, v7, v8}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 976
    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    iget-wide v9, v0, Lcom/android/contacts/model/AccountWithId;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 977
    iget-object v7, p0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    iget-wide v8, v0, Lcom/android/contacts/model/AccountWithId;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    const/4 v0, 0x1

    :goto_3
    move v7, v0

    .line 979
    goto :goto_2

    .line 982
    :cond_2
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 983
    if-nez v0, :cond_4

    .line 966
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v7

    goto :goto_1

    .line 988
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 989
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 993
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 994
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithId;

    .line 995
    iget-wide v9, v0, Lcom/android/contacts/model/AccountWithId;->id:J

    cmp-long v0, v9, v5

    if-nez v0, :cond_6

    .line 996
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_4

    .line 1003
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/AccountWithId;

    .line 1004
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/android/contacts/model/AccountWithId;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1005
    const/4 v0, 0x1

    goto :goto_5

    .line 1008
    :cond_8
    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mGroupNames:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->getGroupNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    move v0, v7

    goto :goto_3
.end method

.method private rebindEditor()V
    .locals 12

    .prologue
    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 659
    const/4 v9, 0x0

    .line 660
    .local v9, focus:Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    if-eqz v3, :cond_0

    .line 661
    iget-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    iget-object v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    iget-object v7, p0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    iget-object v11, p0, Lcom/android/contacts/ui/EditContactActivity;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    invoke-virtual {v3, v4, v7, v11}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/ui/ViewIdGenerator;)V

    .line 663
    iget-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->getInputFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 664
    iget-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->getInputFocus()Landroid/view/View;

    move-result-object v9

    .line 667
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mIsShowInputMethod:Z

    if-eqz v3, :cond_3

    .line 669
    iget-boolean v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mFocusFirstEditBox:Z

    if-eqz v3, :cond_1

    .line 670
    iget-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->findFirstEditText(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 671
    iput-boolean v8, p0, Lcom/android/contacts/ui/EditContactActivity;->mFocusFirstEditBox:Z

    .line 674
    :cond_1
    if-eqz v9, :cond_3

    .line 675
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 676
    iget-boolean v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mFocusFirstEditBox:Z

    if-nez v3, :cond_4

    instance-of v3, v9, Landroid/widget/EditText;

    if-eqz v3, :cond_2

    move-object v0, v9

    check-cast v0, Landroid/widget/EditText;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 680
    :cond_2
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/EditContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 681
    .local v10, manager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v10, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 688
    .end local v10           #manager:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    :goto_0
    return-void

    :cond_4
    move-wide v3, v1

    move v7, v6

    .line 684
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private saveCallIncomingPhoto(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1272
    if-nez p1, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1276
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1277
    const-string v1, "custom_call_incoming_photo"

    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveContact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 792
    iget-boolean v0, p0, Lcom/android/contacts/ui/EditContactActivity;->isInsert:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->isContactUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01cf

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b011f

    new-instance v2, Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/EditContactActivity;->doSaveAction(I)Z

    goto :goto_0
.end method

.method private setPhoto(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "photo"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1620
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J

    .line 1625
    :cond_0
    return-void
.end method

.method private showSetPhotoDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f0700e2

    const/4 v11, 0x7

    .line 611
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 612
    .local v0, source:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 613
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 614
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 615
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v2, v1, 0x2

    .line 617
    .local v2, offY:I
    const/high16 v1, 0x430c

    int-to-float v4, v3

    div-float v9, v1, v4

    .line 618
    .local v9, scale:F
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 619
    const/4 v1, 0x0

    const/4 v6, 0x1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 622
    .local v8, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030044

    invoke-virtual {v1, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 623
    .local v10, v:Landroid/view/View;
    const v1, 0x7f0700e1

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v8, v11, v11}, Lcom/android/internal/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/ui/widget/PhotoEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/ui/widget/PhotoEditorView;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 633
    :goto_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0b018f

    new-instance v6, Lcom/android/contacts/ui/EditContactActivity$1;

    invoke-direct {v6, p0, v8}, Lcom/android/contacts/ui/EditContactActivity$1;-><init>(Lcom/android/contacts/ui/EditContactActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0b0190

    invoke-virtual {v1, v4, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 646
    .end local v2           #offY:I
    .end local v3           #width:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #resizedBitmap:Landroid/graphics/Bitmap;
    .end local v9           #scale:F
    .end local v10           #v:Landroid/view/View;
    :cond_0
    return-void

    .line 629
    .restart local v2       #offY:I
    .restart local v3       #width:I
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    .restart local v8       #resizedBitmap:Landroid/graphics/Bitmap;
    .restart local v9       #scale:F
    .restart local v10       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x10803b6

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private startManagingDialog(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mManagedDialogs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mManagedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateCallLogs(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    const-string v5, "data1"

    .line 1294
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1296
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1297
    const-string v2, "data1"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1299
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1300
    const-string v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v2, "type"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1302
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1303
    const-string v2, "duration"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v2, "new"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1307
    const-string v3, "name"

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v0, "contactid"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1309
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1314
    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    .line 1307
    goto :goto_0
.end method

.method private updateMmsThreadContactInfo(Landroid/net/Uri;)V
    .locals 9
    .parameter "contactLookupUri"

    .prologue
    const/4 v7, 0x0

    const-string v8, "data1"

    .line 1317
    iget-object v5, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1319
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v1, :cond_1

    .line 1335
    :cond_0
    return-void

    .line 1323
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1324
    .local v3, value:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1325
    const-string v5, "data1"

    invoke-virtual {v3, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1329
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1330
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "data1"

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_UPDATE_BYADDRESS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRingtone(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1282
    if-nez p1, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1289
    const-string v2, "custom_ringtone"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 1286
    goto :goto_1
.end method


# virtual methods
.method protected bindEditors()V
    .locals 25

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 599
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string v4, "layout_inflater"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    .line 489
    .local v19, inflater:Landroid/view/LayoutInflater;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v22

    .line 492
    .local v22, sources:Lcom/android/contacts/model/Sources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 497
    const/4 v12, 0x0

    .line 498
    .local v12, editorCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v21

    .line 500
    .local v21, size:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/EntityDelta;

    .line 502
    .local v13, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v13}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v24

    .line 503
    .local v24, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v24 .. v24}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 500
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 507
    :cond_2
    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v13, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 508
    .local v15, groupValues:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 509
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 510
    .local v23, value:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v4, "data1"

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 511
    .local v14, groupId:Ljava/lang/Long;
    if-eqz v14, :cond_3

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 517
    .end local v14           #groupId:Ljava/lang/Long;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v23           #value:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    if-nez v4, :cond_7

    .line 518
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    .line 519
    const-string v4, "account_type"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, accountType:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v22

    move-object v1, v10

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    .line 521
    const-string v4, "_id"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 523
    .local v6, rawContactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-nez v4, :cond_5

    .line 524
    const v4, 0x7f03001f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    .line 534
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->getPhotoEditor()Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v10, v0

    .end local v10           #accountType:Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    move-object v5, v0

    iget-boolean v8, v5, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;JZLcom/android/contacts/ui/widget/PhotoEditorView;)V

    invoke-virtual {v10, v4}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setEditorListener(Lcom/android/contacts/model/Editor$EditorListener;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 538
    add-int/lit8 v12, v12, 0x1

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-nez v4, :cond_1

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070094

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 542
    .local v20, moreButton:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f07004c

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 545
    .local v11, deleteButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/EditContactActivity;->isInsert:Z

    move v4, v0

    if-eqz v4, :cond_6

    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/EditContactActivity;->isInsert:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 547
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 529
    .end local v11           #deleteButton:Landroid/view/View;
    .end local v20           #moreButton:Landroid/view/View;
    .restart local v10       #accountType:Ljava/lang/String;
    :cond_5
    const v4, 0x7f030024

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    goto/16 :goto_4

    .line 545
    .end local v10           #accountType:Ljava/lang/String;
    .restart local v11       #deleteButton:Landroid/view/View;
    .restart local v20       #moreButton:Landroid/view/View;
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 551
    .end local v6           #rawContactId:J
    .end local v11           #deleteButton:Landroid/view/View;
    .end local v20           #moreButton:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/contacts/model/ContactsSource;->getDataKinds()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    move-object v5, v0

    invoke-static {v4, v13, v5}, Lcom/android/contacts/model/EntityModifier;->link(Ljava/util/List;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)V

    goto/16 :goto_2

    .line 556
    .end local v13           #entity:Lcom/android/contacts/model/EntityDelta;
    .end local v15           #groupValues:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v24           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f07008f

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mGroupNames:Landroid/widget/TextView;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mGroupNames:Landroid/widget/TextView;

    move-object v4, v0

    if-eqz v4, :cond_9

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mGroupNames:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mGroupIds:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->getGroupNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f07008e

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    :cond_9
    const/4 v4, 0x1

    if-ne v12, v4, :cond_a

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f0700c7

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 565
    .local v16, header:Landroid/view/View;
    if-eqz v16, :cond_a

    .line 566
    const/16 v4, 0x8

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    .end local v16           #header:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-nez v4, :cond_c

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mGroupNames:Landroid/widget/TextView;

    move-object v4, v0

    if-eqz v4, :cond_b

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ui/EditContactActivity;->rebindEditor()V

    .line 576
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070091

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneNames:Landroid/widget/TextView;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070090

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ui/EditContactActivity;->bindRingtone()V

    .line 581
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070092

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070090

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1080531

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070092

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ui/EditContactActivity;->bindCallIncoming()V

    .line 595
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    const v4, 0x7f07001b

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 598
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ui/EditContactActivity;->mStatus:I

    goto/16 :goto_0

    .line 588
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070092

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;

    move-object v4, v0

    const v5, 0x7f070090

    invoke-virtual {v4, v5}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1080532

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6
.end method

.method public compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const-string v8, "account_name"

    const-string v7, "_id"

    .line 1942
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/EntityDelta;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 2004
    :cond_0
    :goto_0
    return v0

    .line 1946
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v0

    .line 1947
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1948
    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v1

    .line 1950
    invoke-virtual {p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1951
    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v0

    .line 1955
    iget-boolean v2, v1, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-nez v2, :cond_2

    move v0, v4

    .line 1956
    goto :goto_0

    .line 1957
    :cond_2
    iget-boolean v2, v0, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-nez v2, :cond_3

    move v0, v5

    .line 1958
    goto :goto_0

    .line 1963
    :cond_3
    instance-of v2, v1, Lcom/android/contacts/model/GoogleSource;

    .line 1964
    instance-of v3, v0, Lcom/android/contacts/model/GoogleSource;

    .line 1965
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    move v0, v5

    .line 1966
    goto :goto_0

    .line 1967
    :cond_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    move v0, v4

    .line 1968
    goto :goto_0

    .line 1969
    :cond_5
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    move v2, v4

    .line 1974
    :goto_1
    if-nez v2, :cond_6

    .line 1977
    iget-object v1, v1, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1978
    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1979
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1980
    if-nez v0, :cond_0

    .line 1986
    :cond_6
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 1987
    const-string v1, "account_name"

    invoke-virtual {v0, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1988
    invoke-virtual {p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 1989
    const-string v3, "account_name"

    invoke-virtual {v2, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1990
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 1991
    if-eqz v1, :cond_7

    move v0, v1

    .line 1992
    goto/16 :goto_0

    .line 1996
    :cond_7
    const-string v1, "_id"

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1997
    const-string v1, "_id"

    invoke-virtual {v2, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1998
    if-nez v0, :cond_8

    move v0, v5

    .line 1999
    goto/16 :goto_0

    .line 2000
    :cond_8
    if-nez v1, :cond_9

    move v0, v4

    .line 2001
    goto/16 :goto_0

    .line 2004
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    goto/16 :goto_0

    :cond_a
    move v2, v6

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    check-cast p1, Lcom/android/contacts/model/EntityDelta;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/EntityDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity;->compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I

    move-result v0

    return v0
.end method

.method doSaveAction(I)Z
    .locals 5
    .parameter "saveMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1184
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 1192
    :goto_0
    return v1

    .line 1188
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mStatus:I

    .line 1189
    new-instance v0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/ui/EditContactActivity$PersistTask;-><init>(Lcom/android/contacts/ui/EditContactActivity;I)V

    .line 1190
    .local v0, task:Lcom/android/contacts/ui/EditContactActivity$PersistTask;
    new-array v1, v4, [Lcom/android/contacts/model/EntitySet;

    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v4

    .line 1192
    goto :goto_0
.end method

.method protected hasValidState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 474
    iget v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mStatus:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xbd6

    const/4 v0, -0x1

    const/4 v2, 0x0

    const-class v8, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    const-string v7, "data"

    .line 857
    if-nez p2, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 862
    :pswitch_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 863
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 864
    instance-of v3, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;

    if-eqz v3, :cond_2

    .line 865
    check-cast v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;

    .line 866
    invoke-virtual {v0}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->getRawContactId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move-object v1, v0

    .line 873
    :goto_2
    if-eqz v1, :cond_0

    .line 874
    const-string v0, "data"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 875
    invoke-virtual {v1, v0}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 876
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J

    goto :goto_0

    .line 862
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 886
    :pswitch_2
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 887
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 888
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->joinAggregate(J)V

    goto :goto_0

    .line 893
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/android/contacts/ui/EditContactActivity;->parseGroupEditResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 896
    :pswitch_4
    if-ne p2, v0, :cond_0

    .line 897
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 898
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 899
    :cond_3
    iput-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    .line 904
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->bindRingtone()V

    goto :goto_0

    .line 902
    :cond_4
    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;

    goto :goto_3

    .line 908
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mCurrentPhotoFile:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/EditContactActivity;->doCropPhoto(Landroid/net/Uri;)V

    goto :goto_0

    .line 911
    :pswitch_6
    const-string v0, "data"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 912
    invoke-direct {p0, v0}, Lcom/android/contacts/ui/EditContactActivity;->setPhoto(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 915
    :pswitch_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 916
    if-eqz v1, :cond_0

    .line 920
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 921
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 923
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 924
    if-eqz v0, :cond_6

    .line 926
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 927
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 928
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 931
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 935
    :goto_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 936
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 937
    invoke-virtual {p0, v1, v6}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 931
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 940
    :pswitch_8
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mCurrentPhotoFile:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 941
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 942
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mCurrentPhotoFile:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 943
    invoke-virtual {p0, v0, v6}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 947
    :pswitch_9
    const-string v0, "data"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;

    .line 948
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->bindCallIncoming()V

    .line 951
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->showSetPhotoDialog()V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_4

    :cond_7
    move-object v1, v2

    goto/16 :goto_2

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 777
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->isContactUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b011c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b011d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b011e

    new-instance v2, Lcom/android/contacts/ui/EditContactActivity$SaveClickListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/ui/EditContactActivity$SaveClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b011f

    new-instance v2, Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 771
    :goto_0
    return-void

    .line 722
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->saveContact()V

    goto :goto_0

    .line 725
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doRevertAction()Z

    goto :goto_0

    .line 728
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doAddMore()V

    goto :goto_0

    .line 731
    :sswitch_3
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doEditGroups()V

    goto :goto_0

    .line 734
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doEditRingtone()V

    goto :goto_0

    .line 737
    :sswitch_5
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doPickCallIncomingPhotoAction()V

    goto :goto_0

    .line 740
    :sswitch_6
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doDeleteAction()Z

    goto :goto_0

    .line 743
    :sswitch_7
    iget-object v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mAddMoreDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    .line 745
    .local v3, item:Lcom/android/contacts/model/ContactItemTypeSource$Item;
    const/4 v0, 0x0

    .line 746
    .local v0, editType:Lcom/android/contacts/model/ContactsSource$EditType;
    iget-object v6, v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;->editType:Lcom/android/contacts/model/ContactsSource$EditType;

    if-eqz v6, :cond_0

    .line 747
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    .end local v0           #editType:Lcom/android/contacts/model/ContactsSource$EditType;
    iget-object v6, v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;->editType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v6, v6, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    iget-object v7, v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;->editType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v7, v7, Lcom/android/contacts/model/ContactsSource$EditType;->labelRes:I

    invoke-direct {v0, v6, v7}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(II)V

    .line 750
    .restart local v0       #editType:Lcom/android/contacts/model/ContactsSource$EditType;
    :cond_0
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    iget-object v7, p0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    iget-object v8, v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    invoke-static {v6, v7, v8, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    move-object v4, v6

    .line 755
    .local v4, mainValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    .line 756
    .local v1, entity:Lcom/android/contacts/model/EntityDelta;
    iget-object v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    if-eq v1, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 760
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    iget-object v7, v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    invoke-static {v1, v6, v7, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    move-object v5, v6

    .line 764
    .local v5, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->linkDuplicated(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    goto :goto_2

    .line 750
    .end local v1           #entity:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #mainValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mEntity:Lcom/android/contacts/model/EntityDelta;

    iget-object v7, p0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    iget-object v8, v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 760
    .restart local v1       #entity:Lcom/android/contacts/model/EntityDelta;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #mainValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mSource:Lcom/android/contacts/model/ContactsSource;

    iget-object v7, v3, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    invoke-static {v1, v6, v7}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    move-object v5, v6

    goto :goto_3

    .line 767
    .end local v1           #entity:Lcom/android/contacts/model/EntityDelta;
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/ui/EditContactActivity;->mIsShowInputMethod:Z

    .line 768
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->rebindEditor()V

    goto/16 :goto_0

    .line 720
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07001c -> :sswitch_0
        0x7f07001d -> :sswitch_1
        0x7f07004c -> :sswitch_6
        0x7f07008e -> :sswitch_3
        0x7f070090 -> :sswitch_4
        0x7f070092 -> :sswitch_5
        0x7f070094 -> :sswitch_2
        0x7f0700ba -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 222
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, action:Ljava/lang/String;
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/EditContactActivity;->setContentView(I)V

    .line 227
    const v3, 0x7f07001a

    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mContent:Landroid/widget/LinearLayout;

    .line 229
    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    if-eqz p1, :cond_2

    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v4

    .line 235
    .local v1, hasIncomingState:Z
    :goto_0
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 236
    const v3, 0x7f0b0034

    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/EditContactActivity;->setTitle(I)V

    .line 237
    iput v5, p0, Lcom/android/contacts/ui/EditContactActivity;->mStatus:I

    .line 240
    new-instance v3, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;

    invoke-direct {v3, p0}, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    new-array v4, v4, [Landroid/content/Intent;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 258
    new-instance v3, Lcom/android/contacts/ui/ViewIdGenerator;

    invoke-direct {v3}, Lcom/android/contacts/ui/ViewIdGenerator;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/ui/EditContactActivity;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    .line 260
    :cond_1
    return-void

    .end local v1           #hasIncomingState:Z
    :cond_2
    move v1, v5

    .line 233
    goto :goto_0

    .line 241
    .restart local v1       #hasIncomingState:Z
    :cond_3
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 242
    const v3, 0x7f0b0035

    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/EditContactActivity;->setTitle(I)V

    .line 243
    iput v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mStatus:I

    .line 244
    iput-boolean v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mFocusFirstEditBox:Z

    .line 245
    iput-boolean v4, p0, Lcom/android/contacts/ui/EditContactActivity;->isInsert:Z

    .line 248
    iput-boolean v4, p0, Lcom/android/contacts/ui/EditContactActivity;->mIsShowInputMethod:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doAddAction()Z

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "bundle"

    .prologue
    const v5, 0x7f0b002d

    const v1, 0x1080027

    const v4, 0x104000a

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 398
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 435
    :goto_0
    return-object v0

    .line 400
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 409
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 418
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 427
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1015
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1017
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1018
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1020
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 391
    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mManagedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 392
    .local v0, dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->dismissDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 394
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1031
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1044
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1033
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->saveContact()V

    .line 1034
    const/4 v0, 0x1

    goto :goto_0

    .line 1036
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doRevertAction()Z

    move-result v0

    goto :goto_0

    .line 1038
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doDeleteAction()Z

    move-result v0

    goto :goto_0

    .line 1040
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doSplitContactAction()Z

    move-result v0

    goto :goto_0

    .line 1042
    :pswitch_4
    invoke-direct {p0}, Lcom/android/contacts/ui/EditContactActivity;->doJoinContactAction()Z

    move-result v0

    goto :goto_0

    .line 1031
    :pswitch_data_0
    .packed-switch 0x7f0700fc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1025
    const v0, 0x7f0700ff

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1026
    return v2

    .line 1025
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 374
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntitySet;

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    .line 375
    const-string v0, "photorequester"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J

    .line 377
    const-string v0, "viewidgenerator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/ViewIdGenerator;

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    .line 379
    const-string v0, "queryselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mQuerySelection:Ljava/lang/String;

    .line 380
    const-string v0, "contactidforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mContactIdForJoin:J

    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->bindEditors()V

    .line 384
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 385
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 363
    :cond_0
    const-string v0, "photorequester"

    iget-wide v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 364
    const-string v0, "viewidgenerator"

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 366
    const-string v0, "queryselection"

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mQuerySelection:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "contactidforjoin"

    iget-wide v1, p0, Lcom/android/contacts/ui/EditContactActivity;->mContactIdForJoin:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 368
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    return-void
.end method

.method public selectAccountAndCreateContact([Landroid/accounts/Account;)V
    .locals 5
    .parameter "accounts"

    .prologue
    .line 1798
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 1799
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/contacts/ui/EditContactActivity;->createContact(Landroid/accounts/Account;)V

    .line 1807
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ui/EditContactActivity;->bindEditors()V

    .line 1808
    return-void

    .line 1802
    :cond_2
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1803
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/android/contacts/ui/EditContactActivity;->createContact(Landroid/accounts/Account;)V

    .line 1802
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method showAndManageDialog(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity;->startManagingDialog(Landroid/app/Dialog;)V

    .line 452
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 453
    return-void
.end method

.method public showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 1344
    if-nez p1, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1348
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/ui/EditContactActivity;->mContactIdForJoin:J

    .line 1349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_AGGREGATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    const-string v1, "com.android.contacts.action.AGGREGATE_ID"

    iget-wide v2, p0, Lcom/android/contacts/ui/EditContactActivity;->mContactIdForJoin:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1351
    const/16 v1, 0xbce

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2010
    if-eqz p4, :cond_0

    .line 2011
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2015
    :goto_0
    return-void

    .line 2013
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
