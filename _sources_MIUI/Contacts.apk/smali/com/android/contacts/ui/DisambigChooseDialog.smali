.class public Lcom/android/contacts/ui/DisambigChooseDialog;
.super Ljava/lang/Object;
.source "DisambigChooseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    }
.end annotation


# instance fields
.field private final mAcitons:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

.field private mCallNumber:Z

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsPhoneNumber:Z

.field private mLastContactedNumber:Ljava/lang/String;

.field private mMakePrimary:Z

.field private mSendSms:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "phoneCursor"
    .parameter "sendSms"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/contacts/ui/DisambigChooseDialog;->buildActions(Landroid/content/Context;Landroid/database/Cursor;ZZ)[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ui/DisambigChooseDialog;-><init>(Landroid/content/Context;[Lcom/android/contacts/ui/DisambigChooseDialog$Action;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "phoneCursor"
    .parameter "sendSms"
    .parameter "addIpPrefix"

    .prologue
    .line 83
    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/ui/DisambigChooseDialog;->buildActions(Landroid/content/Context;Landroid/database/Cursor;ZZ)[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ui/DisambigChooseDialog;-><init>(Landroid/content/Context;[Lcom/android/contacts/ui/DisambigChooseDialog$Action;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/ui/QuickContactWindow$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, actions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/contacts/ui/QuickContactWindow$Action;>;"
    invoke-static {p2}, Lcom/android/contacts/ui/DisambigChooseDialog;->buildActions(Ljava/util/Collection;)[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ui/DisambigChooseDialog;-><init>(Landroid/content/Context;[Lcom/android/contacts/ui/DisambigChooseDialog$Action;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/contacts/ui/DisambigChooseDialog$Action;)V
    .locals 9
    .parameter "context"
    .parameter "actions"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v7, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mMakePrimary:Z

    .line 70
    iput-boolean v7, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mIsPhoneNumber:Z

    .line 71
    iput-boolean v7, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mSendSms:Z

    .line 72
    iput-boolean v7, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mCallNumber:Z

    .line 119
    iput-object p1, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mAcitons:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    .line 122
    iget-object v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mAcitons:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    array-length v5, v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 213
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mAcitons:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    aget-object v5, v5, v7

    invoke-interface {v5}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, intentScheme:Ljava/lang/String;
    const-string v5, "sms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    iput-boolean v8, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mSendSms:Z

    .line 128
    iput-boolean v8, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mIsPhoneNumber:Z

    .line 134
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 135
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/ui/DisambigChooseDialog$1;

    invoke-direct {v0, p0, p2, v2}, Lcom/android/contacts/ui/DisambigChooseDialog$1;-><init>(Lcom/android/contacts/ui/DisambigChooseDialog;[Lcom/android/contacts/ui/DisambigChooseDialog$Action;Landroid/view/LayoutInflater;)V

    .line 191
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-direct {p0}, Lcom/android/contacts/ui/DisambigChooseDialog;->queryLastcontactedNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mLastContactedNumber:Ljava/lang/String;

    .line 194
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    iget-boolean v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mCallNumber:Z

    if-eqz v5, :cond_5

    .line 198
    const v5, 0x7f0b017b

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 203
    :cond_2
    :goto_2
    iget-boolean v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mIsPhoneNumber:Z

    if-eqz v5, :cond_3

    .line 204
    const v5, 0x7f030046

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 205
    .local v4, setPrimaryView:Landroid/view/View;
    const v5, 0x7f0700e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 209
    .end local v4           #setPrimaryView:Landroid/view/View;
    :cond_3
    const/16 v5, 0x50

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 129
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v1           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const-string v5, "tel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    iput-boolean v8, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mCallNumber:Z

    .line 131
    iput-boolean v8, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mIsPhoneNumber:Z

    goto :goto_1

    .line 199
    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    .restart local v1       #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    :cond_5
    iget-boolean v5, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mSendSms:Z

    if-eqz v5, :cond_2

    .line 200
    const v5, 0x7f0b017c

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/DisambigChooseDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mLastContactedNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ui/DisambigChooseDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mIsPhoneNumber:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ui/DisambigChooseDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static buildActions(Landroid/content/Context;Landroid/database/Cursor;ZZ)[Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    .locals 9
    .parameter "context"
    .parameter "phoneCursor"
    .parameter "sendSms"
    .parameter "addIpPrefix"

    .prologue
    const/4 v8, 0x0

    .line 315
    const-string v3, ""

    .line 316
    .local v3, ipPrefix:Ljava/lang/String;
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autoip_prefix"

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;>;"
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 325
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 326
    new-instance v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, action:Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;
    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mPhoneNumber:Ljava/lang/String;

    .line 328
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mDataUri:Landroid/net/Uri;

    .line 330
    if-eqz p2, :cond_1

    .line 331
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    iget-object v7, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mIntent:Landroid/content/Intent;

    .line 338
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    if-eqz p3, :cond_2

    iget-object v7, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/android/contacts/ContactsUtils;->addIpPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mPhoneNumber:Ljava/lang/String;

    goto :goto_2

    .line 341
    .end local v0           #action:Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;
    :cond_3
    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 343
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;

    .line 344
    .local v2, actions:[Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 345
    return-object v2
.end method

.method private static buildActions(Ljava/util/Collection;)[Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/ui/QuickContactWindow$Action;",
            ">;)[",
            "Lcom/android/contacts/ui/DisambigChooseDialog$Action;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, actions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/contacts/ui/QuickContactWindow$Action;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;

    .line 378
    .local v3, ret:[Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;
    const/4 v2, 0x0

    .line 379
    .local v2, index:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .line 380
    .local v0, action:Lcom/android/contacts/ui/QuickContactWindow$Action;
    new-instance v4, Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;

    invoke-direct {v4, v0}, Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;-><init>(Lcom/android/contacts/ui/QuickContactWindow$Action;)V

    aput-object v4, v3, v2

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v0           #action:Lcom/android/contacts/ui/QuickContactWindow$Action;
    :cond_0
    return-object v3
.end method

.method private queryLastcontactedNumber()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v8, builder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mAcitons:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    .local v7, arr$:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v6, v7, v10

    .line 93
    .local v6, action:Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    const-string v0, " OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    invoke-interface {v6}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, number:Ljava/lang/String;
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v13

    .line 99
    .local v13, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v13, :cond_1

    invoke-virtual {v13, v2, v2}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normalized_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 102
    .end local v6           #action:Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v2, v5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 105
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 107
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 111
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 115
    :goto_1
    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v4

    .line 115
    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 258
    iput-boolean p2, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mMakePrimary:Z

    .line 259
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 237
    iget-object v3, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mAcitons:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    aget-object v0, v3, p2

    .line 239
    .local v0, action:Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    iget-boolean v3, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mMakePrimary:Z

    if-eqz v3, :cond_0

    .line 241
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 242
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    iget-object v3, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :goto_1
    return-void

    .line 244
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 245
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "DisambigChooseDialog"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 252
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00a2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 234
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/ui/DisambigChooseDialog;->mAcitons:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
