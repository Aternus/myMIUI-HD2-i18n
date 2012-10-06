.class public Lcom/android/contacts/PreviewVcardListActivity;
.super Landroid/app/ListActivity;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;,
        Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;,
        Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;,
        Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;
    }
.end annotation


# static fields
.field public static PREVIEW_VCARD:Ljava/lang/String;


# instance fields
.field private fileName:Ljava/lang/String;

.field private isImport:Z

.field private mAccounts:[Landroid/accounts/Account;

.field private mAdapter:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

.field private mContactEntryPreviewViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field private mEntry:Landroid/pim/vcard/VCardEntry;

.field private mEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/pim/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field private mNeedReview:Z

.field private mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

.field private mSlideLeftInAnimation:Landroid/view/animation/Animation;

.field private mSlideLeftOutAnimation:Landroid/view/animation/Animation;

.field private mSlideRightInAnimation:Landroid/view/animation/Animation;

.field private mSlideRightOutAnimation:Landroid/view/animation/Animation;

.field private mUri:Landroid/net/Uri;

.field private mVCardReadThread:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "preview_vcard"

    sput-object v0, Lcom/android/contacts/PreviewVcardListActivity;->PREVIEW_VCARD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;

    .line 112
    iput-boolean v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->fileName:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mNeedReview:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    .line 561
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/PreviewVcardListActivity;Landroid/pim/vcard/VCardEntry;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/PreviewVcardListActivity;->goToVcardSingleItem(Landroid/pim/vcard/VCardEntry;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/PreviewVcardListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/contacts/PreviewVcardListActivity;->showImportSuccessToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/PreviewVcardListActivity;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/PreviewVcardListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mNeedReview:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/PreviewVcardListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mNeedReview:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/PreviewVcardListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/PreviewVcardListActivity;)Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mAdapter:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/PreviewVcardListActivity;Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;)Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mAdapter:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindVcarItem(Landroid/pim/vcard/VCardEntry;)V
    .locals 31
    .parameter "entry"

    .prologue
    .line 692
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/PreviewVcardListActivity;->mEntry:Landroid/pim/vcard/VCardEntry;

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v19

    .line 697
    .local v19, photo:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$PhotoData;>;"
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_5

    .line 698
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardEntry$PhotoData;

    move-object v0, v3

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardEntry$PhotoData;

    move-object v0, v3

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 700
    .local v5, bitmap:Landroid/graphics/Bitmap;
    const v26, 0x7f0700c0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 707
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 708
    const v26, 0x7f0700c1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v16

    .line 713
    .local v16, organizationList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$OrganizationData;>;"
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_2

    .line 714
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move-object v0, v3

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 715
    const v26, 0x7f0700c2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move-object v0, v4

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const v26, 0x7f0700c2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :cond_1
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move-object v0, v3

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 720
    const v26, 0x7f0700c3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move-object v0, v4

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    const v26, 0x7f0700c3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 728
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v14

    .line 729
    .local v14, nickname:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_3

    .line 730
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 731
    .local v7, entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    const v26, 0x7f0200ed

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 732
    const/16 v26, 0x0

    move-object v0, v14

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 733
    const-string v26, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v18

    .line 739
    .local v18, phoneList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$PhoneData;>;"
    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_6

    .line 740
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 741
    .local v17, phoneEntry:Landroid/pim/vcard/VCardEntry$PhoneData;
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 742
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 756
    const v26, 0x7f0200eb

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 760
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 762
    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.intent.action.CALL_PRIVILEGED"

    const-string v28, "tel"

    move-object v0, v7

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    .line 764
    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.intent.action.SENDTO"

    const-string v28, "smsto"

    move-object v0, v7

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mSecondaryIntent:Landroid/content/Intent;

    .line 767
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 769
    .local v11, location:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 770
    iput-object v11, v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mExtra:Ljava/lang/String;

    .line 773
    :cond_4
    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 702
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #location:Ljava/lang/String;
    .end local v14           #nickname:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #organizationList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$OrganizationData;>;"
    .end local v17           #phoneEntry:Landroid/pim/vcard/VCardEntry$PhoneData;
    .end local v18           #phoneList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$PhoneData;>;"
    :cond_5
    const v26, 0x7f0700c0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v26, 0x10803b8

    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 744
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v14       #nickname:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #organizationList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$OrganizationData;>;"
    .restart local v17       #phoneEntry:Landroid/pim/vcard/VCardEntry$PhoneData;
    .restart local v18       #phoneList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$PhoneData;>;"
    :pswitch_0
    const v26, 0x7f0200eb

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto/16 :goto_2

    .line 747
    :pswitch_1
    const v26, 0x7f0200e5

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto/16 :goto_2

    .line 750
    :pswitch_2
    const v26, 0x7f0200f9

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto/16 :goto_2

    .line 753
    :pswitch_3
    const v26, 0x7f0200e9

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto/16 :goto_2

    .line 779
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v17           #phoneEntry:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v13

    .line 780
    .local v13, mailList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$EmailData;>;"
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_7

    .line 781
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 782
    .local v12, mail:Landroid/pim/vcard/VCardEntry$EmailData;
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 783
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    const v26, 0x7f0200e4

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 784
    move-object v0, v12

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 785
    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.intent.action.SENDTO"

    const-string v28, "mailto"

    move-object v0, v7

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    .line 787
    const-string v26, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 793
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #mail:Landroid/pim/vcard/VCardEntry$EmailData;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v10

    .line 794
    .local v10, imList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$ImData;>;"
    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_8

    .line 795
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardEntry$ImData;

    .line 796
    .local v9, im:Landroid/pim/vcard/VCardEntry$ImData;
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 797
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    move-object v0, v9

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1

    .line 808
    :pswitch_4
    const v26, 0x7f0200e1

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 812
    :goto_5
    move-object v0, v9

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 813
    const-string v26, "vnd.android.cursor.item/im"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 799
    :pswitch_5
    const v26, 0x7f0200f3

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_5

    .line 802
    :pswitch_6
    const v26, 0x7f0200ec

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_5

    .line 805
    :pswitch_7
    const v26, 0x7f0200e8

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_5

    .line 819
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #im:Landroid/pim/vcard/VCardEntry$ImData;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, birthday:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 821
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 822
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    const v26, 0x7f0200e2

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 823
    iput-object v4, v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 824
    const-string v26, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v21

    .line 830
    .local v21, postalList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardEntry$PostalData;>;"
    if-eqz v21, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_a

    .line 831
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/pim/vcard/VCardEntry$PostalData;

    .line 832
    .local v20, postal:Landroid/pim/vcard/VCardEntry$PostalData;
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 833
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    const v26, 0x7f0200ea

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 834
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 835
    const-string v26, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 841
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v20           #postal:Landroid/pim/vcard/VCardEntry$PostalData;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v15

    .line 842
    .local v15, noteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_b

    .line 843
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 844
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    const v26, 0x7f0200f0

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 845
    const/16 v26, 0x0

    move-object v0, v15

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 846
    const-string v26, "vnd.android.cursor.item/note"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v25

    .line 852
    .local v25, webs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v25, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_c

    .line 853
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 854
    .local v23, web:Ljava/lang/String;
    new-instance v7, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v7}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 855
    .restart local v7       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    const v26, 0x7f0200f8

    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 856
    move-object/from16 v0, v23

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 859
    :try_start_0
    new-instance v24, Landroid/net/WebAddress;

    move-object v0, v7

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 860
    .local v24, webAddress:Landroid/net/WebAddress;
    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.intent.action.VIEW"

    invoke-virtual/range {v24 .. v24}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v24           #webAddress:Landroid/net/WebAddress;
    :goto_8
    const-string v26, "vnd.android.cursor.item/website"

    move-object/from16 v0, v26

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 862
    :catch_0
    move-exception v26

    move-object/from16 v6, v26

    .line 863
    .local v6, e:Landroid/net/ParseException;
    const-string v26, "PreviewVcardListActivity"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Couldn\'t parse website: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object v0, v7

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 871
    .end local v6           #e:Landroid/net/ParseException;
    .end local v7           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v23           #web:Ljava/lang/String;
    :cond_c
    const v26, 0x7f07008c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ListView;

    .line 872
    .local v22, rootView:Landroid/widget/ListView;
    new-instance v3, Lcom/android/contacts/ContactPreviewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactPreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 873
    .local v3, adapter:Lcom/android/contacts/ContactPreviewAdapter;
    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 874
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 875
    new-instance v26, Lcom/android/contacts/PreviewVcardListActivity$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity$3;-><init>(Lcom/android/contacts/PreviewVcardListActivity;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 893
    return-void

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 797
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private goToVcardItemList()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideRightInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideRightOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 201
    return-void
.end method

.method private goToVcardSingleItem(Landroid/pim/vcard/VCardEntry;Z)V
    .locals 2
    .parameter "entry"
    .parameter "needAnimation"

    .prologue
    const/4 v1, 0x0

    .line 185
    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideLeftInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideLeftOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/contacts/PreviewVcardListActivity;->bindVcarItem(Landroid/pim/vcard/VCardEntry;)V

    .line 195
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 190
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "PreviewVcardListActivity"

    const-string v1, "Handler object is null. No dialog is shown."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private showImportSuccessToast()V
    .locals 2

    .prologue
    .line 687
    const v0, 0x7f0b0124

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 689
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 638
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/android/contacts/PreviewVcardListActivity;->goToVcardItemList()V

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 649
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/contacts/PreviewVcardListActivity;->startActivity(Landroid/content/Intent;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    goto :goto_0

    .line 655
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    goto :goto_0

    .line 658
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 659
    invoke-direct {p0}, Lcom/android/contacts/PreviewVcardListActivity;->goToVcardItemList()V

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    goto :goto_0

    .line 665
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mEntry:Landroid/pim/vcard/VCardEntry;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity;->mEntry:Landroid/pim/vcard/VCardEntry;

    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry;->pushIntoContentResolver(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    .line 667
    invoke-direct {p0}, Lcom/android/contacts/PreviewVcardListActivity;->showImportSuccessToast()V

    .line 670
    if-eqz v0, :cond_0

    .line 672
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 673
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 676
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 677
    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->startActivity(Landroid/content/Intent;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    goto :goto_0

    .line 647
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07001c -> :sswitch_0
        0x7f07001d -> :sswitch_1
        0x7f07004e -> :sswitch_2
        0x7f0700c5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f07001c

    const/4 v3, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->setContentView(I)V

    .line 140
    const v1, 0x7f040008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideLeftInAnimation:Landroid/view/animation/Animation;

    .line 141
    const v1, 0x7f040009

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideLeftOutAnimation:Landroid/view/animation/Animation;

    .line 142
    const v1, 0x7f04000a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideRightInAnimation:Landroid/view/animation/Animation;

    .line 143
    const v1, 0x7f04000b

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mSlideRightOutAnimation:Landroid/view/animation/Animation;

    .line 145
    const v1, 0x7f0700bd

    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 146
    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 149
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mAccounts:[Landroid/accounts/Account;

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mList:Landroid/widget/ListView;

    .line 153
    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/contacts/PreviewVcardListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/PreviewVcardListActivity$1;-><init>(Lcom/android/contacts/PreviewVcardListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    const v1, 0x7f0700a5

    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b01af

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f0700c5

    invoke-virtual {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 170
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mUri:Landroid/net/Uri;

    .line 172
    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity;->fileName:Ljava/lang/String;

    .line 174
    iput-boolean v3, p0, Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z

    .line 175
    new-instance v1, Lcom/android/contacts/PreviewVcardListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/PreviewVcardListActivity$2;-><init>(Lcom/android/contacts/PreviewVcardListActivity;)V

    invoke-direct {p0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    const-string v7, "bad menuInfo"

    const-string v5, "PreviewVcardListActivity"

    .line 899
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 907
    const-string v4, "PreviewVcardListActivity"

    const-string v4, "bad menuInfo"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v1

    .line 901
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "PreviewVcardListActivity"

    const-string v4, "bad menuInfo"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 911
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 913
    .local v2, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    if-eqz v2, :cond_0

    .line 917
    const v4, 0x7f0b002c

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 919
    iget-object v4, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 920
    const v4, 0x7f0b001d

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 921
    const v4, 0x7f0b001e

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mSecondaryIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 922
    :cond_2
    iget-object v4, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 923
    const v4, 0x7f0b001f

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 222
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 208
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 209
    const v2, 0x7f0b008c

    invoke-virtual {p0, v2}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0b008d

    invoke-virtual {p0, v2}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, message:Ljava/lang/String;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    .line 212
    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 215
    new-instance v2, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v3, p0, Lcom/android/contacts/PreviewVcardListActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mVCardReadThread:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    .line 216
    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/contacts/PreviewVcardListActivity;->mVCardReadThread:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 217
    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mVCardReadThread:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    invoke-virtual {v2}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->start()V

    .line 219
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f070016
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
