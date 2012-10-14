.class Lcom/android/contacts/ui/QuickContactWindow$DataAction;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/contacts/ui/QuickContactWindow$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataAction"
.end annotation


# instance fields
.field private mAlternate:Z

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataUri:Landroid/net/Uri;

.field private mHeader:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$DataKind;JLandroid/database/Cursor;)V
    .locals 18
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "cursor"

    .prologue
    .line 855
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 856
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mContext:Landroid/content/Context;

    .line 857
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 858
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    .line 861
    const-string v15, "vnd.android.cursor.item/sms-address"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mAlternate:Z

    .line 862
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mAlternate:Z

    move v15, v0

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/contacts/model/ContactsSource$DataKind;->actionAltHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    if-eqz v15, :cond_5

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/contacts/model/ContactsSource$DataKind;->actionAltHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/ContactsSource$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    .line 868
    :cond_0
    :goto_0
    const-string v15, "is_super_primary"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$200(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_1

    .line 869
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIsPrimary:Z

    .line 872
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    if-eqz v15, :cond_2

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/ContactsSource$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    .line 876
    :cond_2
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v15

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    .line 879
    const-string v15, "vnd.android.cursor.item/phone_v2"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 880
    const-string v15, "data1"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 881
    .local v11, number:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 882
    const-string v15, "tel"

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 883
    .local v5, callUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.CALL_PRIVILEGED"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    .line 947
    .end local v5           #callUri:Landroid/net/Uri;
    .end local v11           #number:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    move-object v15, v0

    if-nez v15, :cond_4

    .line 949
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    .line 953
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    move-object v15, v0

    const/high16 v16, 0x1400

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 954
    return-void

    .line 864
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    if-eqz v15, :cond_0

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/ContactsSource$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 885
    :cond_6
    const-string v15, "vnd.android.cursor.item/sip_address"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 886
    const-string v15, "data1"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 887
    .local v3, address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 888
    const-string v15, "sip"

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 889
    .restart local v5       #callUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.CALL_PRIVILEGED"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 897
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #callUri:Landroid/net/Uri;
    :cond_7
    const-string v15, "vnd.android.cursor.item/sms-address"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 898
    const-string v15, "data1"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 899
    .restart local v11       #number:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 900
    const-string v15, "smsto"

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 901
    .local v13, smsUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SENDTO"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 904
    .end local v11           #number:Ljava/lang/String;
    .end local v13           #smsUri:Landroid/net/Uri;
    :cond_8
    const-string v15, "vnd.android.cursor.item/email_v2"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 905
    const-string v15, "data1"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 906
    .restart local v3       #address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 907
    const-string v15, "mailto"

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 908
    .local v10, mailUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SENDTO"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 911
    .end local v3           #address:Ljava/lang/String;
    .end local v10           #mailUri:Landroid/net/Uri;
    :cond_9
    const-string v15, "vnd.android.cursor.item/website"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 912
    const-string v15, "data1"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 913
    .local v14, url:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 914
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 917
    .end local v14           #url:Ljava/lang/String;
    :cond_a
    const-string v15, "vnd.android.cursor.item/im"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 918
    const-string v15, "vnd.android.cursor.item/email_v2"

    const-string v16, "mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 920
    .local v9, isEmail:Z
    if-nez v9, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->isProtocolValid(Landroid/database/Cursor;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 921
    :cond_b
    if-eqz v9, :cond_e

    const/4 v15, 0x5

    move v12, v15

    .line 924
    .local v12, protocol:I
    :goto_2
    if-eqz v9, :cond_c

    .line 927
    const v15, 0x7f0b00ed

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    .line 928
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    .line 931
    :cond_c
    const-string v15, "data6"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 932
    .local v7, host:Ljava/lang/String;
    if-eqz v9, :cond_f

    const-string v15, "data1"

    :goto_3
    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, data:Ljava/lang/String;
    const/4 v15, -0x1

    if-eq v12, v15, :cond_d

    .line 935
    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v7

    .line 938
    :cond_d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 939
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, authority:Ljava/lang/String;
    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    const-string v16, "imto"

    invoke-virtual/range {v15 .. v16}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 942
    .local v8, imUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SENDTO"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 921
    .end local v4           #authority:Ljava/lang/String;
    .end local v6           #data:Ljava/lang/String;
    .end local v7           #host:Ljava/lang/String;
    .end local v8           #imUri:Landroid/net/Uri;
    .end local v12           #protocol:I
    :cond_e
    const-string v15, "data5"

    move-object/from16 v0, p6

    move-object v1, v15

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/contacts/ui/QuickContactWindow;->access$200(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move v12, v15

    goto :goto_2

    .line 932
    .restart local v7       #host:Ljava/lang/String;
    .restart local v12       #protocol:I
    :cond_f
    const-string v15, "data1"

    goto :goto_3
.end method

.method private isProtocolValid(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 957
    const-string v2, "data5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 958
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 966
    :goto_0
    return v2

    .line 962
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    const/4 v2, 0x1

    goto :goto_0

    .line 963
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 964
    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    const/4 v0, 0x0

    .line 1020
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 838
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIsPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 8
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    .line 1025
    if-nez p1, :cond_0

    move v2, v7

    .line 1043
    :goto_0
    return v2

    .line 1028
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;

    if-nez v2, :cond_1

    .line 1029
    const-string v2, "QuickContactWindow"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 1030
    goto :goto_0

    .line 1032
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;

    move-object v1, v0

    .line 1034
    .local v1, other:Lcom/android/contacts/ui/QuickContactWindow$DataAction;
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v7

    .line 1036
    goto :goto_0

    .line 1038
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v7

    .line 1041
    goto :goto_0

    .line 1043
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 838
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$DataAction;->shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method
