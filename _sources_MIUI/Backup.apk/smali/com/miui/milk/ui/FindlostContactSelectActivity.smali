.class public Lcom/miui/milk/ui/FindlostContactSelectActivity;
.super Landroid/app/ListActivity;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;,
        Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;
    }
.end annotation


# instance fields
.field private final STATE_SEARCHED:I

.field private final STATE_SEARCHING:I

.field callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;

.field private mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

.field private mCheckCount:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

.field private mContactInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentEmpty:Landroid/widget/TextView;

.field private mContentsList:Landroid/widget/ListView;

.field private mExceptionStatus:I

.field private mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

.field private mIsBound:Z

.field private mNetWorkErrorDialog:Landroid/app/Dialog;

.field private mRestoreButton:Landroid/widget/Button;

.field private mSelectAllButton:Landroid/widget/Button;

.field private mService:Lcom/miui/milk/service/CloudBackupService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    iput v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    .line 54
    iput v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->STATE_SEARCHING:I

    .line 173
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->STATE_SEARCHED:I

    .line 245
    new-instance v0, Lcom/miui/milk/ui/FindlostContactSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$4;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 321
    new-instance v0, Lcom/miui/milk/ui/FindlostContactSelectActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$5;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/milk/ui/FindlostContactSelectActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyState(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    return-object p1
.end method

.method private notifyButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    .local v0, size:I
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;

    if-lez v0, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;

    iget v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    if-ge v2, v0, :cond_1

    const v2, 0x7f060090

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mRestoreButton:Landroid/widget/Button;

    iget v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    if-lez v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    return-void

    :cond_0
    move v2, v3

    .line 166
    goto :goto_0

    .line 167
    :cond_1
    const v2, 0x7f060091

    goto :goto_1

    :cond_2
    move v2, v3

    .line 168
    goto :goto_2
.end method

.method private notifyState(I)V
    .locals 13
    .parameter "state"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iput v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    goto :goto_0

    .line 180
    :pswitch_1
    iget v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    if-lez v8, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    invoke-static {v8, v9}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, networkErrorString:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_2

    .line 183
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v2, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06008f

    new-instance v10, Lcom/miui/milk/ui/FindlostContactSelectActivity$3;

    invoke-direct {v10, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$3;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f060005

    invoke-virtual {v8, v9, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    .line 197
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 200
    .end local v2           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v8, :cond_0

    .line 201
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 202
    iput-object v12, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 206
    .end local v6           #networkErrorString:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactCount()I

    move-result v8

    if-nez v8, :cond_5

    .line 207
    :cond_4
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentEmpty:Landroid/widget/TextView;

    const v9, 0x7f06005d

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentEmpty:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v8, v11}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_5
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentEmpty:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 213
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 216
    .local v1, contactRes:Lcom/miui/milk/model/ContactProtos2$Contact;
    new-instance v0, Lcom/miui/milk/common/ContactInfo;

    invoke-direct {v0}, Lcom/miui/milk/common/ContactInfo;-><init>()V

    .line 217
    .local v0, contactInfo:Lcom/miui/milk/common/ContactInfo;
    iput-object v1, v0, Lcom/miui/milk/common/ContactInfo;->contact:Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 218
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNameList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/ContactProtos2$Name;

    .line 219
    .local v5, name:Lcom/miui/milk/model/ContactProtos2$Name;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Name;->getGivenName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    .line 220
    iget-object v8, v0, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 222
    .end local v5           #name:Lcom/miui/milk/model/ContactProtos2$Name;
    :cond_7
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhoneList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/ContactProtos2$Phone;

    .line 223
    .local v7, phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Phone;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    .line 224
    iget-object v8, v0, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 226
    .end local v7           #phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    :cond_9
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 229
    .end local v0           #contactInfo:Lcom/miui/milk/common/ContactInfo;
    .end local v1           #contactRes:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_a
    iget-object v8, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    invoke-virtual {v8}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->notifyDataSetChanged()V

    .line 230
    invoke-direct {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyButton()V

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-class v2, Lcom/miui/milk/service/CloudBackupService;

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mIsBound:Z

    .line 272
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mIsBound:Z

    .line 280
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentsList:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContentEmpty:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mRestoreButton:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;

    .line 68
    iput v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    .line 69
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mRestoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mRestoreButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->prepareAdapterItems()V

    .line 129
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->doUnbindService(Landroid/content/Context;)V

    .line 140
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 141
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 145
    check-cast p1, Landroid/widget/ListView;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 146
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/ContactInfo;

    .line 147
    .local v0, contactInfo:Lcom/miui/milk/common/ContactInfo;
    iget-boolean v1, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    .line 148
    iget-boolean v1, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 149
    iget v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    .line 154
    :goto_1
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    invoke-virtual {v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->notifyDataSetChanged()V

    .line 155
    invoke-direct {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyButton()V

    .line 156
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iget v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 134
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->doBindService(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method protected prepareAdapterItems()V
    .locals 6

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    const v3, 0x7f030006

    const v4, 0x1020016

    iget-object v5, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    .line 161
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    return-void
.end method
