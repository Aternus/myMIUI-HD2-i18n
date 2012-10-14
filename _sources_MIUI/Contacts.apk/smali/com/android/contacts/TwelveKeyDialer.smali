.class public Lcom/android/contacts/TwelveKeyDialer;
.super Landroid/app/Activity;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/EditableListView$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/TwelveKeyDialer$9;,
        Lcom/android/contacts/TwelveKeyDialer$QueryHandler;,
        Lcom/android/contacts/TwelveKeyDialer$FilterState;
    }
.end annotation


# static fields
.field public static IS_SLIDE_DOWN:Z


# instance fields
.field private blnActivityRuning:Z

.field private blnActivityWindowFocused:Z

.field private blnSoftKeyVisibility:Z

.field private mAdapter:Lcom/android/contacts/DialerListAdapter;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallPhone:Landroid/view/View;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDeleteButtonBar:Lcom/android/contacts/ui/CallRecordDeleteButtonBar;

.field private mDialHideContainer:Landroid/view/View;

.field private mDialpadBackground:Lcom/android/contacts/DialerButtons;

.field private mDialpadButtons:Landroid/view/View;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsLocation:Landroid/widget/TextView;

.field private mDirectDialNumber:Ljava/lang/String;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

.field private mIsAddCallMode:Z

.field private mList:Landroid/widget/EditableListView;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMenuFilter:Landroid/view/MenuItem;

.field private mMenuFirewall:Landroid/view/MenuItem;

.field private mMenuPaste:Landroid/view/MenuItem;

.field private mMenuSettings:Landroid/view/MenuItem;

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mQueryHandler:Lcom/android/contacts/TwelveKeyDialer$QueryHandler;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTipHideSoft:Landroid/view/View;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->None:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    .line 256
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/TwelveKeyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/TwelveKeyDialer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/DialerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/TwelveKeyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/ContactPhotoLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/TwelveKeyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/TwelveKeyDialer$FilterState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/TwelveKeyDialer;Lcom/android/contacts/TwelveKeyDialer$FilterState;)Lcom/android/contacts/TwelveKeyDialer$FilterState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    return-object p1
.end method

.method private goToDialtactsActivity()V
    .locals 2

    .prologue
    .line 1377
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    .line 1378
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 1379
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/DialtactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1380
    return-void
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1256
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1257
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1258
    return-void
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1525
    .line 1527
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1528
    if-eqz v0, :cond_1

    .line 1529
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1534
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 1529
    goto :goto_0

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    const-string v1, "TwelveKeyDialer"

    const-string v2, "phone.getActivePhoneType() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1510
    .line 1512
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_1

    .line 1514
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1518
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 1514
    goto :goto_0

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    const-string v1, "TwelveKeyDialer"

    const-string v2, "phone.isIdle() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 1541
    const/4 v0, 0x0

    .line 1543
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1544
    if-eqz v1, :cond_0

    .line 1545
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1549
    :cond_0
    :goto_0
    return v0

    .line 1546
    :catch_0
    move-exception v1

    .line 1547
    const-string v2, "TwelveKeyDialer"

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetNewCallsFlag()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v0, " AND new=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 366
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/TwelveKeyDialer$QueryHandler;

    const/16 v1, 0x36

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/TwelveKeyDialer$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private resolveIntent()Z
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 732
    const/4 v9, 0x0

    .line 736
    .local v9, ignoreState:Z
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 738
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "ignore-state"

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 745
    :goto_0
    iput-boolean v13, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 748
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 749
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 755
    const-string v0, "add_call_mode"

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 756
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 757
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 758
    const-string v0, "tel"

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 760
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 761
    .local v8, data:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/contacts/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;)V

    .line 782
    .end local v8           #data:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return v9

    .line 740
    .end local v6           #action:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .restart local v10       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 763
    .restart local v6       #action:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 764
    .local v11, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 770
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 771
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;)V

    .line 775
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 823
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 827
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 828
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 831
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 842
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 844
    return-void
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1614
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 1619
    .local v0, digitsNotEmpty:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1620
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1628
    :goto_1
    return-void

    .end local v0           #digitsNotEmpty:Z
    :cond_0
    move v0, v4

    .line 1614
    goto :goto_0

    .line 1626
    .restart local v0       #digitsNotEmpty:Z
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 14
    .parameter "input"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {p0, v10, v11}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 298
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->clear()V

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 303
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 304
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    invoke-virtual {v10, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 305
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    const v11, 0x7f0b01a9

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 308
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 309
    .local v1, digits:Ljava/lang/CharSequence;
    const/4 v8, 0x1

    .line 310
    .local v8, valid:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 311
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 312
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_1

    const/16 v10, 0x2c

    if-eq v0, v10, :cond_1

    if-nez v2, :cond_2

    const/16 v10, 0x23

    if-eq v0, v10, :cond_1

    const/16 v10, 0x2b

    if-ne v0, v10, :cond_2

    .line 310
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_2
    const/4 v8, 0x0

    .line 319
    .end local v0           #c:C
    :cond_3
    if-eqz v8, :cond_4

    .line 320
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 321
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v10, v12}, Landroid/widget/EditableListView;->setSelection(I)V

    .line 325
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, telocation:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v13

    :goto_1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    .end local v1           #digits:Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v7           #telocation:Ljava/lang/String;
    .end local v8           #valid:Z
    :goto_2
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 336
    .local v5, parentWidth:I
    if-nez v5, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v5, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 341
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int v10, v5, v10

    iget-object v11, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v4, v10, v11

    .line 343
    .local v4, maxWidth:I
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_9

    .line 344
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/lit8 v6, v10, 0x14

    .line 345
    .local v6, requestWidth:I
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 346
    .local v9, width:I
    sub-int v3, v4, v9

    .line 347
    .local v3, leftWidth:I
    const/16 v10, 0x3c

    if-ge v3, v10, :cond_8

    .line 348
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 349
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    .end local v3           #leftWidth:I
    .end local v6           #requestWidth:I
    .end local v9           #width:I
    :goto_3
    return-void

    .end local v4           #maxWidth:I
    .end local v5           #parentWidth:I
    .restart local v1       #digits:Ljava/lang/CharSequence;
    .restart local v2       #i:I
    .restart local v7       #telocation:Ljava/lang/String;
    .restart local v8       #valid:Z
    :cond_6
    move v11, v12

    .line 327
    goto :goto_1

    .line 329
    .end local v1           #digits:Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v7           #telocation:Ljava/lang/String;
    .end local v8           #valid:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 330
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 351
    .restart local v3       #leftWidth:I
    .restart local v4       #maxWidth:I
    .restart local v5       #parentWidth:I
    .restart local v6       #requestWidth:I
    .restart local v9       #width:I
    :cond_8
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setWidth(I)V

    .line 352
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_3

    .line 355
    .end local v3           #leftWidth:I
    .end local v6           #requestWidth:I
    .end local v9           #width:I
    :cond_9
    iget-object v10, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setWidth(I)V

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 287
    return-void
.end method

.method callVoicemail()V
    .locals 5

    .prologue
    .line 1415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1417
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1418
    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1419
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1420
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 1421
    return-void
.end method

.method dialButtonPressed()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "tel"

    .line 1424
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1425
    const/4 v1, 0x0

    .line 1426
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1427
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1428
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    const-string v0, "tel"

    const-string v0, ""

    invoke-static {v6, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1433
    const-string v0, "com.android.phone.extra.SEND_EMPTY_FLASH"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v4

    .line 1449
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1450
    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1451
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1463
    if-nez v0, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 1466
    :cond_0
    :goto_1
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1438
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1443
    :cond_2
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_1

    .line 1447
    :cond_3
    const-string v3, "tel"

    invoke-static {v6, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v0, v1

    goto :goto_0
.end method

.method doFilter(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 711
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 713
    sget-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    if-eqz v0, :cond_0

    .line 714
    const/high16 v0, 0x10a

    const v1, 0x10a0037

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/TwelveKeyDialer;->overridePendingTransition(II)V

    .line 715
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    .line 717
    :cond_0
    return-void
.end method

.method protected getContentViewResource()I
    .locals 1

    .prologue
    .line 728
    const v0, 0x7f030049

    return v0
.end method

.method getFilterText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method protected maybeAddNumberFormatting()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 721
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1677
    :goto_0
    return-void

    .line 1675
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 1692
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1374
    :goto_0
    return-void

    .line 1292
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1293
    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1297
    :sswitch_1
    invoke-direct {p0, v5}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1298
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1302
    :sswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1303
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1307
    :sswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1308
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1312
    :sswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1313
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1317
    :sswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1318
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1322
    :sswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1323
    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1327
    :sswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1328
    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1332
    :sswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1333
    invoke-virtual {p0, v5}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1337
    :sswitch_9
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1338
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1342
    :sswitch_a
    invoke-direct {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1343
    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1347
    :sswitch_b
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1348
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1353
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialButtonPressed()V

    goto :goto_0

    .line 1357
    :sswitch_d
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1361
    :sswitch_e
    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto :goto_0

    .line 1365
    :sswitch_f
    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto/16 :goto_0

    .line 1370
    :sswitch_10
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->goToDialtactsActivity()V

    goto/16 :goto_0

    .line 1290
    :sswitch_data_0
    .sparse-switch
        0x1020004 -> :sswitch_f
        0x7f070020 -> :sswitch_0
        0x7f070021 -> :sswitch_1
        0x7f070022 -> :sswitch_2
        0x7f070023 -> :sswitch_3
        0x7f070024 -> :sswitch_4
        0x7f070025 -> :sswitch_5
        0x7f070026 -> :sswitch_6
        0x7f070027 -> :sswitch_7
        0x7f070028 -> :sswitch_8
        0x7f070029 -> :sswitch_9
        0x7f07002a -> :sswitch_a
        0x7f07002b -> :sswitch_b
        0x7f07002d -> :sswitch_c
        0x7f07002e -> :sswitch_d
        0x7f0700f0 -> :sswitch_10
        0x7f0700f1 -> :sswitch_e
        0x7f0700f4 -> :sswitch_10
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter

    .prologue
    const v10, 0x1080027

    const/high16 v9, 0x104

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1101
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/contacts/DialerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1108
    if-nez v0, :cond_0

    move v0, v3

    .line 1190
    :goto_0
    return v0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    const-string v1, "TwelveKeyDialer"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 1104
    goto :goto_0

    .line 1113
    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1114
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1190
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1118
    :pswitch_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1119
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0056

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0b0058

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0b0171

    new-instance v6, Lcom/android/contacts/TwelveKeyDialer$5;

    invoke-direct {v6, p0, v0, v1}, Lcom/android/contacts/TwelveKeyDialer$5;-><init>(Lcom/android/contacts/TwelveKeyDialer;J)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v5

    .line 1134
    goto :goto_0

    .line 1136
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0056

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v6, 0x7f0b0059

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v6, 0x7f0b0171

    new-instance v7, Lcom/android/contacts/TwelveKeyDialer$6;

    invoke-direct {v7, p0, v4, v1, v2}, Lcom/android/contacts/TwelveKeyDialer$6;-><init>(Lcom/android/contacts/TwelveKeyDialer;Ljava/lang/String;J)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v5

    .line 1163
    goto/16 :goto_0

    .line 1165
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    invoke-virtual {p0, v5}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    move v0, v5

    .line 1167
    goto/16 :goto_0

    .line 1169
    :pswitch_3
    cmp-long v0, v1, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/DialerListAdapter;->getItemClickAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    invoke-static {p0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZ)Z

    :goto_1
    move v0, v5

    .line 1174
    goto/16 :goto_0

    .line 1172
    :cond_1
    invoke-static {p0, v4}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1176
    :pswitch_4
    cmp-long v0, v1, v7

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/DialerListAdapter;->getItemClickAction()I

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v4, v3

    .line 1177
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZZZ)Z

    :goto_2
    move v0, v5

    .line 1181
    goto/16 :goto_0

    .line 1179
    :cond_2
    invoke-static {p0, v4, v5}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1183
    :pswitch_5
    cmp-long v0, v1, v7

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/DialerListAdapter;->getItemClickAction()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    invoke-static {p0, v1, v2, v5}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZ)Z

    :goto_3
    move v0, v5

    .line 1188
    goto/16 :goto_0

    .line 1186
    :cond_3
    invoke-static {p0, v4}, Lcom/android/contacts/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "dialer_activity_displayed"

    .line 511
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 512
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->loadFontSizeConfiguration(Landroid/content/Context;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentViewResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->setContentView(I)V

    .line 516
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditableListView;

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    .line 517
    new-instance v1, Lcom/android/contacts/ContactPhotoLoader;

    const v2, 0x10803b6

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 518
    new-instance v1, Lcom/android/contacts/TwelveKeyDialer$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/contacts/TwelveKeyDialer$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/TwelveKeyDialer$QueryHandler;

    .line 519
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    .line 520
    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    .line 521
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 522
    new-instance v1, Lcom/android/contacts/DialerListAdapter;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/DialerListAdapter;-><init>(Lcom/android/contacts/TwelveKeyDialer;Landroid/widget/EditableListView;)V

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    .line 523
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 527
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1, p0}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 529
    const v1, 0x7f0700f3

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/DialerButtons;

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadBackground:Lcom/android/contacts/DialerButtons;

    .line 530
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadBackground:Lcom/android/contacts/DialerButtons;

    invoke-virtual {v1, p0}, Lcom/android/contacts/DialerButtons;->setTwelveKeyDialer(Lcom/android/contacts/TwelveKeyDialer;)V

    .line 531
    const v1, 0x7f0700f2

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    .line 532
    const v1, 0x7f0700ed

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    .line 533
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    .line 534
    const v1, 0x7f0700ee

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    .line 535
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 536
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 537
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 540
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dialer_activity_displayed"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dialer_activity_displayed"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/TwelveKeyDialer$1;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->maybeAddNumberFormatting()V

    .line 557
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 558
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->setupKeypad()V

    .line 562
    :cond_1
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    .line 563
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v1, 0x7f0700ef

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    .line 566
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDeleteButtonBar:Lcom/android/contacts/ui/CallRecordDeleteButtonBar;

    .line 567
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDeleteButtonBar:Lcom/android/contacts/ui/CallRecordDeleteButtonBar;

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/TwelveKeyDialer$2;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 638
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDeleteButtonBar:Lcom/android/contacts/ui/CallRecordDeleteButtonBar;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 640
    const v1, 0x7f0700f4

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    const v1, 0x7f0700f0

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    const v1, 0x7f0700f1

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mTipHideSoft:Landroid/view/View;

    .line 643
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mTipHideSoft:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialer_auto_dialpad"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 648
    iput-boolean v3, p0, Lcom/android/contacts/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    .line 653
    :goto_0
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    .line 654
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 657
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 660
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    .line 661
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 662
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 663
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 665
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 666
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/TwelveKeyDialer$3;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 688
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 689
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1, p0}, Landroid/widget/EditableListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 690
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1, v4}, Landroid/widget/EditableListView;->setDividerHeight(I)V

    .line 694
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/TwelveKeyDialer$4;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 707
    return-void

    .line 650
    :cond_3
    iput-boolean v4, p0, Lcom/android/contacts/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f0b0017

    const/16 v10, 0x65

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "android.intent.action.VIEW"

    .line 989
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/DialerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 996
    if-nez v0, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v0

    .line 991
    const-string v1, "TwelveKeyDialer"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1001
    :cond_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1002
    const-wide/16 v3, -0x6

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x7

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x8

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x9

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1010
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Lcom/android/contacts/DialerListAdapter;->getItemType(Landroid/database/Cursor;I)I

    move-result v3

    .line 1011
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1012
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v5

    .line 1015
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v5, v6, :cond_5

    .line 1016
    invoke-static {v5}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1023
    :goto_1
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v5, v4, :cond_b

    .line 1026
    if-lez v3, :cond_8

    .line 1028
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_7

    .line 1029
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1030
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v2

    .line 1043
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/DialerListAdapter;->getItemClickAction()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v8

    .line 1044
    :goto_3
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1046
    const-string v4, "extra.show.calllogs"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1047
    invoke-interface {p1, v7, v10, v7, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1051
    :cond_2
    if-eqz v2, :cond_a

    .line 1052
    const/16 v4, 0x66

    const v5, 0x7f0b0018

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/TwelveKeyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v4, v7, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1058
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "autoip_prefix"

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1063
    const/16 v4, 0x6a

    const v5, 0x7f0b012e

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/TwelveKeyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v4, v7, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1067
    :cond_3
    const/16 v0, 0x67

    const v4, 0x7f0b001e

    invoke-interface {p1, v7, v0, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1070
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 1071
    const-string v0, "extra.show.calllogs"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1072
    invoke-interface {p1, v7, v10, v7, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1076
    :cond_4
    const/16 v0, 0x69

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1087
    :goto_5
    if-lez v3, :cond_0

    .line 1089
    const/16 v0, 0x6b

    const v1, 0x7f0b013c

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1091
    const/16 v0, 0x68

    const v1, 0x7f0b013d

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1017
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1018
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1020
    :cond_6
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1033
    :cond_7
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1034
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1035
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string v1, "number"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v2

    .line 1037
    goto/16 :goto_2

    .line 1039
    :cond_8
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1040
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v2

    goto/16 :goto_2

    :cond_9
    move v2, v7

    .line 1043
    goto/16 :goto_3

    .line 1054
    :cond_a
    const/16 v0, 0x66

    const v4, 0x7f0b0018

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/TwelveKeyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7, v0, v7, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1080
    :cond_b
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1081
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1082
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v1, "number"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    invoke-interface {p1, v7, v10, v7, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 951
    const v0, 0x7f0b000a

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 953
    const v0, 0x7f0b0146

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuPaste:Landroid/view/MenuItem;

    .line 955
    const/4 v0, 0x2

    const v1, 0x7f0b0145

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuFilter:Landroid/view/MenuItem;

    .line 956
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuFilter:Landroid/view/MenuItem;

    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 957
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    invoke-virtual {v1}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->getDeleteMenuTextId()I

    move-result v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    .line 958
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 959
    const/4 v0, 0x4

    const v1, 0x10403dd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuFirewall:Landroid/view/MenuItem;

    .line 960
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuFirewall:Landroid/view/MenuItem;

    const v1, 0x108040a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 961
    const/4 v0, 0x5

    const v1, 0x7f0b0144

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuSettings:Landroid/view/MenuItem;

    .line 962
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuSettings:Landroid/view/MenuItem;

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 964
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 501
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoLoader;->stop()V

    .line 503
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/DialerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 504
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_0
    return-void
.end method

.method public onEnterEditMode()V
    .locals 2

    .prologue
    .line 1681
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 1682
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    return-void
.end method

.method public onExitEditMode()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1276
    :sswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto :goto_0

    .line 1281
    :sswitch_1
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    if-nez v0, :cond_0

    .line 1282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto :goto_0

    .line 1274
    nop

    :sswitch_data_0
    .sparse-switch
        0x102000a -> :sswitch_0
        0x7f07001f -> :sswitch_1
    .end sparse-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1269
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1263
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1264
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialButtonPressed()V

    .line 1265
    const/4 v0, 0x1

    goto :goto_0

    .line 1261
    :pswitch_data_0
    .packed-switch 0x7f07001f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1196
    packed-switch p1, :pswitch_data_0

    .line 1219
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1198
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1199
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1204
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    move v0, v4

    .line 1208
    goto :goto_0

    .line 1211
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1212
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1214
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->callVoicemail()V

    :cond_1
    move v0, v4

    .line 1216
    goto :goto_0

    .line 1205
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1196
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1224
    packed-switch p1, :pswitch_data_0

    .line 1252
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1229
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialButtonPressed()V

    .line 1249
    const/4 v0, 0x1

    goto :goto_0

    .line 1224
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1384
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1385
    .local v0, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1386
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    move v2, v4

    .line 1411
    :goto_0
    return v2

    .line 1388
    :sswitch_0
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1392
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    move v2, v3

    .line 1393
    goto :goto_0

    .line 1396
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->callVoicemail()V

    move v2, v3

    .line 1398
    goto :goto_0

    :cond_0
    move v2, v4

    .line 1400
    goto :goto_0

    .line 1403
    :sswitch_2
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v3

    .line 1404
    goto :goto_0

    .line 1407
    :sswitch_3
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v3

    .line 1408
    goto :goto_0

    .line 1386
    :sswitch_data_0
    .sparse-switch
        0x7f070020 -> :sswitch_1
        0x7f070029 -> :sswitch_3
        0x7f07002a -> :sswitch_2
        0x7f07002e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/contacts/TwelveKeyDialer;->setIntent(Landroid/content/Intent;)V

    .line 804
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    .line 805
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1558
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v5

    .line 1606
    :goto_0
    return v0

    .line 1560
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->goToDialtactsActivity()V

    move v0, v4

    .line 1561
    goto :goto_0

    .line 1563
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v0, v4

    .line 1566
    goto :goto_0

    .line 1568
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0136

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->getFilterMenuTextId()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    invoke-virtual {v2}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->getIndex()I

    move-result v2

    new-instance v3, Lcom/android/contacts/TwelveKeyDialer$7;

    invoke-direct {v3, p0}, Lcom/android/contacts/TwelveKeyDialer$7;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v4

    .line 1579
    goto :goto_0

    .line 1581
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0143

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    invoke-virtual {v3}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->getDeleteMenuTextId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/TwelveKeyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0171

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$8;

    invoke-direct {v2, p0}, Lcom/android/contacts/TwelveKeyDialer$8;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0172

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v4

    .line 1592
    goto/16 :goto_0

    .line 1594
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 1596
    goto/16 :goto_0

    .line 1599
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1600
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1602
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 1604
    goto/16 :goto_0

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 902
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->blnActivityRuning:Z

    .line 904
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 911
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 913
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    .line 916
    return-void

    .line 913
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 809
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 818
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 819
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 969
    .line 970
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 974
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuFilter:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 975
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 976
    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    invoke-virtual {v1}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->getDeleteMenuTextId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 980
    :cond_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 981
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuPaste:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 982
    return v3

    :cond_1
    move v0, v4

    .line 981
    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 848
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 850
    iput-boolean v4, p0, Lcom/android/contacts/TwelveKeyDialer;->blnActivityRuning:Z

    .line 852
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/DialerListAdapter;->checkPreferenceChange()V

    .line 854
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoLoader;->resume()V

    .line 857
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    sget-boolean v3, Landroid/os/Build;->IS_HTC_HD2:Z

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    .line 863
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 864
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 871
    :try_start_1
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 877
    :cond_0
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 888
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 889
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const v2, 0x7f0b0060

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 895
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 897
    iget-boolean v1, p0, Lcom/android/contacts/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 898
    return-void

    :cond_1
    move v3, v4

    .line 857
    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    .line 872
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 873
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v2, "TwelveKeyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    .line 877
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 892
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 293
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "TwelveKeyDialer"

    .line 920
    iput-boolean p1, p0, Lcom/android/contacts/TwelveKeyDialer;->blnActivityWindowFocused:Z

    .line 921
    if-eqz p1, :cond_0

    .line 928
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 929
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 932
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_1

    .line 935
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 945
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resetNewCallsFlag()V

    .line 947
    :cond_0
    return-void

    .line 937
    :cond_1
    :try_start_1
    const-string v0, "TwelveKeyDialer"

    const-string v1, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    const-string v0, "TwelveKeyDialer"

    const-string v0, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method playTone(I)V
    .locals 4
    .parameter

    .prologue
    .line 1478
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1488
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1489
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1495
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    .line 1496
    const-string v1, "TwelveKeyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    monitor-exit v0

    goto :goto_0

    .line 1502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1501
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1502
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected setFormattedDigits(Ljava/lang/String;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 787
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, dialString:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 791
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 796
    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->afterTextChanged(Landroid/text/Editable;)V

    .line 798
    .end local v1           #digits:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method public setSoftKeyVisibility(Z)V
    .locals 3
    .parameter "vis"

    .prologue
    const/4 v2, 0x0

    .line 1648
    if-eqz p1, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1667
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    .line 1668
    return-void

    .line 1658
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1659
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->requestFocus()Z

    goto :goto_0
.end method

.method startQuery()V
    .locals 11

    .prologue
    const-string v10, "TwelveKeyDialer"

    .line 378
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->blnActivityRuning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->blnActivityWindowFocused:Z

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v0, "TwelveKeyDialer"

    const-string v0, "Starting query"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 387
    .local v9, key:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    .line 388
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->getFilter()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, selection:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 391
    const/4 v5, 0x0

    .line 395
    :cond_2
    const/16 v0, 0x65

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->cancelAsyncTelocationQuery(I)V

    .line 396
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/TwelveKeyDialer$QueryHandler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/android/contacts/TwelveKeyDialer$QueryHandler;->cancelOperation(I)V

    .line 397
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/TwelveKeyDialer$QueryHandler;

    const/16 v1, 0x35

    const/4 v2, 0x0

    sget-object v4, Landroid/provider/ContactsContract$T9Query;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/TwelveKeyDialer$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 402
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v0, "TwelveKeyDialer"

    const-string v0, "Search suggestions query threw an exception."

    invoke-static {v10, v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1640
    if-eqz p4, :cond_0

    .line 1641
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1645
    :goto_0
    return-void

    .line 1643
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
