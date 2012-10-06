.class public Lcom/android/contacts/ContactPickerActivity;
.super Landroid/app/TabActivity;
.source "ContactPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;,
        Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;
    }
.end annotation


# instance fields
.field private mBtnDone:Landroid/widget/Button;

.field private mColor:I

.field public mContactIdNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteContactPhoto:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mPickSingleContact:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mContactIdNameMap:Ljava/util/HashMap;

    .line 108
    iput-boolean v1, p0, Lcom/android/contacts/ContactPickerActivity;->mPickSingleContact:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/contacts/ContactPickerActivity;->mDeleteContactPhoto:Z

    .line 583
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactPickerActivity;Ljava/util/ArrayList;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactPickerActivity;->setContactPhoto(Ljava/util/ArrayList;[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/ContactPickerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/contacts/ContactPickerActivity;->mColor:I

    return v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 198
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 199
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 200
    return-void
.end method

.method private setContactPhoto(Ljava/util/ArrayList;[B)V
    .locals 13
    .parameter
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p1           #rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 723
    .local v10, rawContactId:J
    const/4 v9, -0x1

    .line 724
    .local v9, photoRow:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 730
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 731
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 733
    .local v8, idIdx:I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 737
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 740
    iget-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity;->mDeleteContactPhoto:Z

    if-nez v0, :cond_3

    .line 741
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "raw_contact_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 743
    const-string v0, "is_super_primary"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string v0, "data15"

    invoke-virtual {v12, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 745
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-lez v9, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    .end local v3           #where:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 737
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v3       #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 752
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 755
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_3
    if-lez v9, :cond_0

    .line 756
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 757
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v0, "data15"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    .end local v3           #where:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 764
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #idIdx:I
    .end local v9           #photoRow:I
    .end local v10           #rawContactId:J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_4
    return-void
.end method

.method private setupButtonPanel()V
    .locals 2

    .prologue
    .line 208
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, panel:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/ContactPickerActivity;->mBtnDone:Landroid/widget/Button;

    .line 211
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->updateDoneButton()V

    .line 214
    return-void
.end method

.method private setupContactsListTab()V
    .locals 4

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    const-class v1, Lcom/android/contacts/ContactPickerListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string v1, "action_default"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0049

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactPickerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 170
    return-void
.end method

.method private setupContactsRecentListTab()V
    .locals 4

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    const-class v1, Lcom/android/contacts/ContactPickerRecentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    const-string v1, "action_recent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "recent"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b004b

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactPickerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 162
    return-void
.end method

.method private setupGroupTab()V
    .locals 4

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    const-class v1, Lcom/android/contacts/ContactPickerGroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    const-string v1, "action_group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "group"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0106

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactPickerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 178
    return-void
.end method

.method private setupStarredTab()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    const-class v1, Lcom/android/contacts/ContactPickerListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    const-string v1, "action_starred"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "starred"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactPickerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 186
    return-void
.end method


# virtual methods
.method public bindView(Landroid/database/Cursor;Landroid/view/View;Lcom/android/contacts/ContactPhotoLoader;Ljava/lang/CharSequence;)V
    .locals 19
    .parameter "cursor"
    .parameter "itemView"
    .parameter "photoLoader"
    .parameter "unknownNameText"

    .prologue
    .line 462
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/contacts/ContactListItemView;

    move-object v15, v0

    .line 463
    .local v15, view:Lcom/android/contacts/ContactListItemView;
    invoke-virtual {v15}, Lcom/android/contacts/ContactListItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;

    .line 464
    .local v4, cache:Lcom/android/contacts/ContactsListActivity$ContactListItemCache;
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 466
    .local v14, starState:I
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 468
    .local v6, contactId:J
    const v17, 0x10800df

    const v18, 0x10800da

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ContactListItemView;->setToggleMarkResource(II)V

    .line 472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactPickerActivity;->mPickSingleContact:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 474
    invoke-virtual {v15}, Lcom/android/contacts/ContactListItemView;->showMark()V

    .line 481
    :cond_0
    :goto_0
    const/16 v17, 0x1

    move-object v0, v4

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 484
    invoke-virtual {v15}, Lcom/android/contacts/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v9

    .line 485
    .local v9, nameView:Landroid/widget/TextView;
    move-object v0, v4

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move v13, v0

    .line 486
    .local v13, size:I
    if-eqz v13, :cond_5

    .line 487
    move-object v0, v4

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 493
    :goto_1
    const-wide/16 v11, 0x0

    .line 494
    .local v11, photoId:J
    const/16 v17, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_1

    .line 495
    const/16 v17, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 498
    :cond_1
    invoke-virtual {v15}, Lcom/android/contacts/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v16

    .line 500
    .local v16, viewToUse:Landroid/widget/ImageView;
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-nez v17, :cond_6

    .line 501
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 502
    const v17, 0x1080181

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    :goto_2
    const/4 v8, 0x0

    .line 509
    .local v8, isLabelSet:Z
    const/16 v17, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, nickName:Ljava/lang/String;
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, company:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 514
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 515
    const/4 v8, 0x1

    .line 524
    :cond_2
    :goto_3
    if-nez v8, :cond_3

    .line 525
    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 527
    :cond_3
    return-void

    .line 476
    .end local v5           #company:Ljava/lang/String;
    .end local v8           #isLabelSet:Z
    .end local v9           #nameView:Landroid/widget/TextView;
    .end local v10           #nickName:Ljava/lang/String;
    .end local v11           #photoId:J
    .end local v13           #size:I
    .end local v16           #viewToUse:Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v15}, Lcom/android/contacts/ContactListItemView;->hideMark()V

    goto/16 :goto_0

    .line 489
    .restart local v9       #nameView:Landroid/widget/TextView;
    .restart local v13       #size:I
    :cond_5
    move-object v0, v9

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 504
    .restart local v11       #photoId:J
    .restart local v16       #viewToUse:Landroid/widget/ImageView;
    :cond_6
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoLoader;->loadPhoto(Landroid/widget/ImageView;J)V

    goto :goto_2

    .line 516
    .restart local v5       #company:Ljava/lang/String;
    .restart local v8       #isLabelSet:Z
    .restart local v10       #nickName:Ljava/lang/String;
    :cond_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 517
    invoke-virtual {v15, v10}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 518
    const/4 v8, 0x1

    goto :goto_3

    .line 519
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 520
    invoke-virtual {v15, v5}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 521
    const/4 v8, 0x1

    goto :goto_3
.end method

.method public getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method public isDeleteContactphoto()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity;->mDeleteContactPhoto:Z

    return v0
.end method

.method public isSingleContactPick()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity;->mPickSingleContact:Z

    return v0
.end method

.method public onChildClick(Lcom/android/contacts/ContactListItemView;J)Z
    .locals 2
    .parameter "view"
    .parameter "contactId"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p1}, Lcom/android/contacts/ContactListItemView;->hideMark()V

    .line 268
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->updateDoneButton()V

    .line 269
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p1}, Lcom/android/contacts/ContactListItemView;->showMark()V

    .line 273
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->updateDoneButton()V

    .line 274
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 228
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const v2, 0x7f0b01cb

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 235
    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 236
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0b0191

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 237
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 238
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 239
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 240
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 242
    iget-boolean v2, p0, Lcom/android/contacts/ContactPickerActivity;->mDeleteContactPhoto:Z

    if-eqz v2, :cond_1

    .line 243
    new-instance v1, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;-><init>(Lcom/android/contacts/ContactPickerActivity;Lcom/android/contacts/ContactPickerActivity$1;)V

    .line 244
    .local v1, thread:Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 245
    invoke-virtual {v1}, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->start()V

    goto :goto_0

    .line 247
    .end local v1           #thread:Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;
    :cond_1
    new-instance v1, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;-><init>(Lcom/android/contacts/ContactPickerActivity;)V

    .line 248
    .local v1, thread:Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;
    iget-object v2, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 249
    invoke-virtual {v1}, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->start()V

    goto :goto_0

    .line 253
    .end local v1           #thread:Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->finish()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPickerActivity;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    .line 122
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    new-instance v0, Lcom/android/contacts/ContactPhotoLoader;

    const v1, 0x10803b6

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 127
    const-string v0, "vnd.android.cursor.dir/contact_pick_single"

    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity;->mPickSingleContact:Z

    .line 136
    :goto_0
    iget-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity;->mPickSingleContact:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerActivity;->setupContactsRecentListTab()V

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerActivity;->setupContactsListTab()V

    .line 141
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerActivity;->setupGroupTab()V

    .line 142
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerActivity;->setupStarredTab()V

    .line 144
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 145
    return-void

    .line 130
    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/ContactPickerActivity;->mPickSingleContact:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_delete_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity;->mDeleteContactPhoto:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_color"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactPickerActivity;->mColor:I

    .line 133
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerActivity;->setupButtonPanel()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 154
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerActivity;->hideSoftKeyboard()V

    .line 205
    return-void
.end method

.method public setSingleContactResult(J)V
    .locals 39
    .parameter "contactId"

    .prologue
    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "contact_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 284
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_f

    .line 285
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v24, mEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-static {v13}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v21

    .line 289
    .local v21, iterator:Landroid/content/EntityIterator;
    :goto_0
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 291
    .local v15, entity:Landroid/content/Entity;
    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    .end local v15           #entity:Landroid/content/Entity;
    :catchall_0
    move-exception v4

    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V

    .line 295
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    .line 294
    :cond_0
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V

    .line 295
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 300
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v28, mOrganizationEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v27, mNicknameEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v30, mPhoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v23, mEmailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v26, mImEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v31, mPostalEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v29, mOtherEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v25, mEventEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v32, mSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    const/16 v34, 0x0

    .line 311
    .local v34, name:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 312
    .restart local v15       #entity:Landroid/content/Entity;
    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity$NamedContentValues;

    .line 313
    .local v35, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    .line 314
    .local v17, entryValues:Landroid/content/ContentValues;
    const-string v4, "mimetype"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 315
    .local v33, mimeType:Ljava/lang/String;
    const-string v4, "data1"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 316
    .local v14, data:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 319
    .local v18, hasData:Z
    :goto_2
    new-instance v16, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct/range {v16 .. v16}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 320
    .local v16, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 321
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mChecked:Z

    .line 322
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 323
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v18, :cond_5

    .line 326
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mChecked:Z

    .line 327
    const-string v4, "data2"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 328
    .local v36, type:I
    packed-switch v36, :pswitch_data_0

    .line 342
    const v4, 0x7f0200eb

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 346
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 348
    .local v22, location:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 349
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mExtra:Ljava/lang/String;

    .line 352
    :cond_3
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 316
    .end local v16           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v18           #hasData:Z
    .end local v22           #location:Ljava/lang/String;
    .end local v36           #type:I
    :cond_4
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_2

    .line 330
    .restart local v16       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .restart local v18       #hasData:Z
    .restart local v36       #type:I
    :pswitch_0
    const v4, 0x7f0200eb

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_3

    .line 333
    :pswitch_1
    const v4, 0x7f0200e5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_3

    .line 336
    :pswitch_2
    const v4, 0x7f0200f9

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_3

    .line 339
    :pswitch_3
    const v4, 0x7f0200e9

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_3

    .line 353
    .end local v36           #type:I
    :cond_5
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v18, :cond_6

    .line 355
    const v4, 0x7f0200e4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 356
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 357
    :cond_6
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v18, :cond_7

    .line 358
    const v4, 0x7f0200ea

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 359
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 360
    :cond_7
    const-string v4, "vnd.android.cursor.item/im"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v18, :cond_8

    .line 361
    const-string v4, "data5"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 362
    .restart local v36       #type:I
    packed-switch v36, :pswitch_data_1

    .line 373
    :pswitch_4
    const v4, 0x7f0200e1

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 376
    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 364
    :pswitch_5
    const v4, 0x7f0200f3

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_4

    .line 367
    :pswitch_6
    const v4, 0x7f0200ec

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_4

    .line 370
    :pswitch_7
    const v4, 0x7f0200e8

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_4

    .line 377
    .end local v36           #type:I
    :cond_8
    const-string v4, "vnd.android.cursor.item/organization"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v18, :cond_9

    .line 378
    const v4, 0x7f0200f9

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 379
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 380
    :cond_9
    const-string v4, "vnd.android.cursor.item/nickname"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v18, :cond_a

    .line 381
    const v4, 0x7f0200ed

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 382
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 383
    :cond_a
    const-string v4, "vnd.android.cursor.item/note"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v18, :cond_b

    .line 384
    const v4, 0x7f0200f0

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 385
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 386
    :cond_b
    const-string v4, "vnd.android.cursor.item/website"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v18, :cond_c

    .line 387
    const v4, 0x7f0200f8

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 388
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 389
    :cond_c
    const-string v4, "vnd.android.cursor.item/contact_event"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v18, :cond_d

    .line 390
    const v4, 0x7f0200e2

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 391
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 392
    :cond_d
    const-string v4, "vnd.android.cursor.item/name"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v18, :cond_2

    .line 393
    move-object/from16 v34, v14

    goto/16 :goto_1

    .line 398
    .end local v14           #data:Ljava/lang/String;
    .end local v15           #entity:Landroid/content/Entity;
    .end local v16           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v17           #entryValues:Landroid/content/ContentValues;
    .end local v18           #hasData:Z
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v33           #mimeType:Ljava/lang/String;
    .end local v35           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_e
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 399
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 400
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 407
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    .local v11, builder:Landroid/app/AlertDialog$Builder;
    new-instance v10, Lcom/android/contacts/ContactPreviewAdapter;

    const/4 v4, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactPreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 409
    .local v10, adapter:Lcom/android/contacts/ContactPreviewAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object v4, v0

    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v37

    .line 410
    .local v37, v:Landroid/view/View;
    const v4, 0x102000a

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ListView;

    .line 411
    .local v38, view:Landroid/widget/ListView;
    const v4, 0x7f070046

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    move-object/from16 v0, v38

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    new-instance v4, Lcom/android/contacts/ContactPickerActivity$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactPickerActivity$1;-><init>(Lcom/android/contacts/ContactPickerActivity;Ljava/util/ArrayList;Lcom/android/contacts/ContactPreviewAdapter;)V

    move-object/from16 v0, v38

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 422
    move-object/from16 v12, v34

    .line 424
    .local v12, contactName:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0171

    new-instance v6, Lcom/android/contacts/ContactPickerActivity$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactPickerActivity$2;-><init>(Lcom/android/contacts/ContactPickerActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0172

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 458
    .end local v10           #adapter:Lcom/android/contacts/ContactPreviewAdapter;
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    .end local v12           #contactName:Ljava/lang/String;
    .end local v21           #iterator:Landroid/content/EntityIterator;
    .end local v23           #mEmailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v24           #mEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v25           #mEventEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v26           #mImEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v27           #mNicknameEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v28           #mOrganizationEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v29           #mOtherEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v30           #mPhoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v31           #mPostalEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v32           #mSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    .end local v34           #name:Ljava/lang/String;
    .end local v37           #v:Landroid/view/View;
    .end local v38           #view:Landroid/widget/ListView;
    :cond_f
    return-void

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 362
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public updateDoneButton()V
    .locals 6

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mBtnDone:Landroid/widget/Button;

    const v1, 0x7f0b016b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b016e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
