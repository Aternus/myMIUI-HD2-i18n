.class public Lcom/android/contacts/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# static fields
.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method public static addIpPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"
    .parameter "ipPrefix"

    .prologue
    const/4 v3, 0x1

    const-string v5, "00"

    const-string v4, "+"

    .line 492
    move-object v0, p0

    .line 493
    .local v0, number:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 495
    .local v1, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .end local v1           #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    return-object v0

    .line 499
    .restart local v1       #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    invoke-virtual {v1, v3, v3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 500
    const-string v2, "+"

    const-string v2, "00"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_2
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 504
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_3
    const-string v2, "0086"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 506
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_4
    const-string v2, "+"

    const-string v2, "00"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 618
    if-ne p0, p1, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    .line 621
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static buildImIntent(Landroid/content/ContentValues;)Landroid/content/Intent;
    .locals 10
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    const-string v9, "data1"

    .line 276
    const-string v6, "vnd.android.cursor.item/email_v2"

    const-string v7, "mimetype"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 278
    .local v4, isEmail:Z
    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isProtocolValid(Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v8

    .line 297
    :goto_0
    return-object v6

    .line 282
    :cond_0
    if-eqz v4, :cond_2

    const/4 v6, 0x5

    move v5, v6

    .line 284
    .local v5, protocol:I
    :goto_1
    const-string v6, "data6"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, host:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v6, "data1"

    move-object v6, v9

    :goto_2
    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, data:Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 288
    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, authority:Ljava/lang/String;
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "imto"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 295
    .local v3, imUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v6, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 282
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #imUri:Landroid/net/Uri;
    .end local v5           #protocol:I
    :cond_2
    const-string v6, "data5"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v5, v6

    goto :goto_1

    .line 285
    .restart local v2       #host:Ljava/lang/String;
    .restart local v5       #protocol:I
    :cond_3
    const-string v6, "data1"

    move-object v6, v9

    goto :goto_2

    .restart local v1       #data:Ljava/lang/String;
    :cond_4
    move-object v6, v8

    .line 297
    goto :goto_0
.end method

.method public static callOrSendSms(Landroid/content/Context;JZ)Z
    .locals 1
    .parameter "context"
    .parameter "contactId"
    .parameter "sendSms"

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZZ)Z

    move-result v0

    return v0
.end method

.method public static callOrSendSms(Landroid/content/Context;JZZ)Z
    .locals 6
    .parameter "context"
    .parameter "contactId"
    .parameter "sendSms"
    .parameter "ignorePrimary"

    .prologue
    .line 648
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZZZ)Z

    move-result v0

    return v0
.end method

.method public static callOrSendSms(Landroid/content/Context;JZZZ)Z
    .locals 7
    .parameter "context"
    .parameter "contactId"
    .parameter "sendSms"
    .parameter "ignorePrimary"
    .parameter "addIpPrefix"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "data1"

    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, phone:Ljava/lang/String;
    const/4 v2, 0x0

    .line 662
    .local v2, phonesCursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/contacts/ContactsUtils;->queryPhoneNumbers(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v2

    .line 663
    if-nez v2, :cond_0

    move v3, v4

    .line 698
    :goto_0
    return v3

    .line 665
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 666
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v3, v4

    .line 667
    goto :goto_0

    .line 668
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 670
    const-string v3, "data1"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 684
    new-instance v1, Lcom/android/contacts/ui/DisambigChooseDialog;

    invoke-direct {v1, p0, v2, p3, p5}, Lcom/android/contacts/ui/DisambigChooseDialog;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V

    .line 685
    .local v1, phoneDialog:Lcom/android/contacts/ui/DisambigChooseDialog;
    invoke-virtual {v1}, Lcom/android/contacts/ui/DisambigChooseDialog;->show()V

    .line 695
    .end local v1           #phoneDialog:Lcom/android/contacts/ui/DisambigChooseDialog;
    :goto_2
    if-eqz v2, :cond_3

    .line 696
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move v3, v5

    .line 698
    goto :goto_0

    .line 671
    :cond_4
    if-nez p4, :cond_2

    .line 672
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 673
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 674
    const-string v3, "is_super_primary"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 676
    const-string v3, "data1"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    goto :goto_1

    .line 687
    :cond_6
    if-eqz p3, :cond_7

    .line 688
    invoke-static {p0, v0}, Lcom/android/contacts/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 690
    :cond_7
    invoke-static {p0, v0, p5}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method

.method public static doIpCallContacts(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "menu"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 864
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoip_prefix"

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, ipPrefix:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 869
    const v2, 0x7f0b012e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v5, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 870
    .local v1, item:Landroid/view/MenuItem;
    invoke-static {p2, v0}, Lcom/android/contacts/ContactsUtils;->addIpPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 871
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 873
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 854
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static findFirstEditText(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "v"

    .prologue
    .line 702
    instance-of v4, p0, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 716
    :goto_0
    return-object v4

    .line 706
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 707
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 708
    .local v2, g:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 709
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->findFirstEditText(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 710
    .local v1, e:Landroid/view/View;
    if-eqz v1, :cond_1

    move-object v4, v1

    .line 711
    goto :goto_0

    .line 708
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 716
    .end local v1           #e:Landroid/view/View;
    .end local v2           #g:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "elapsedSeconds"
    .parameter "type"

    .prologue
    .line 727
    const-wide/16 v0, 0x0

    .line 728
    .local v0, minutes:J
    move-wide v3, p1

    .line 729
    .local v3, seconds:J
    const/4 v2, 0x0

    .line 731
    .local v2, ret:Ljava/lang/String;
    const-wide/16 v5, 0x3c

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    .line 732
    const-wide/16 v0, 0x3c

    div-long v0, v3, v0

    .line 733
    const-wide/16 v5, 0x3c

    mul-long/2addr v5, v0

    sub-long/2addr v3, v5

    .line 736
    :cond_0
    const/4 v5, 0x3

    if-ne p3, v5, :cond_1

    .line 737
    invoke-static {p0, p1, p2}, Lcom/android/contacts/ContactsUtils;->formatRingDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 763
    .end local v0           #minutes:J
    .end local v2           #ret:Ljava/lang/String;
    .end local p1
    .end local p3
    .local p0, ret:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 738
    .restart local v0       #minutes:J
    .restart local v2       #ret:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p3
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long p1, p1, v5

    if-nez p1, :cond_3

    .line 739
    .end local p1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    const p1, 0x7f0b0148

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local v2           #ret:Ljava/lang/String;
    .local p0, ret:Ljava/lang/String;
    goto :goto_0

    .restart local v2       #ret:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_2
    const p1, 0x7f0b0147

    goto :goto_1

    .line 742
    :cond_3
    const/4 p1, 0x1

    if-ne p3, p1, :cond_6

    .line 743
    const p1, 0x7f0b014a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 744
    .end local v2           #ret:Ljava/lang/String;
    .local p1, ret:Ljava/lang/String;
    const-wide/16 p2, 0x0

    cmp-long p2, v0, p2

    if-nez p2, :cond_4

    .line 745
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ret:Ljava/lang/String;
    const p2, 0x7f0b014c

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local v0           #minutes:J
    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, ret:Ljava/lang/String;
    goto :goto_0

    .line 746
    .restart local v0       #minutes:J
    .local p0, context:Landroid/content/Context;
    .restart local p1       #ret:Ljava/lang/String;
    .restart local p3
    :cond_4
    const-wide/16 p2, 0x0

    cmp-long p2, v3, p2

    if-nez p2, :cond_5

    .line 747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ret:Ljava/lang/String;
    const p2, 0x7f0b014d

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #minutes:J
    aput-object v0, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, ret:Ljava/lang/String;
    goto :goto_0

    .line 749
    .restart local v0       #minutes:J
    .local p0, context:Landroid/content/Context;
    .restart local p1       #ret:Ljava/lang/String;
    .restart local p3
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ret:Ljava/lang/String;
    const p2, 0x7f0b014e

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #minutes:J
    aput-object v0, p3, v2

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, ret:Ljava/lang/String;
    goto/16 :goto_0

    .line 751
    .restart local v0       #minutes:J
    .restart local v2       #ret:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p3
    :cond_6
    const/4 p1, 0x2

    if-ne p3, p1, :cond_9

    .line 752
    const p1, 0x7f0b014b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 753
    .end local v2           #ret:Ljava/lang/String;
    .restart local p1       #ret:Ljava/lang/String;
    const-wide/16 p2, 0x0

    cmp-long p2, v0, p2

    if-nez p2, :cond_7

    .line 754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ret:Ljava/lang/String;
    const p2, 0x7f0b014c

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local v0           #minutes:J
    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, ret:Ljava/lang/String;
    goto/16 :goto_0

    .line 755
    .restart local v0       #minutes:J
    .local p0, context:Landroid/content/Context;
    .restart local p1       #ret:Ljava/lang/String;
    .restart local p3
    :cond_7
    const-wide/16 p2, 0x0

    cmp-long p2, v3, p2

    if-nez p2, :cond_8

    .line 756
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ret:Ljava/lang/String;
    const p2, 0x7f0b014d

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #minutes:J
    aput-object v0, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, ret:Ljava/lang/String;
    goto/16 :goto_0

    .line 758
    .restart local v0       #minutes:J
    .local p0, context:Landroid/content/Context;
    .restart local p1       #ret:Ljava/lang/String;
    .restart local p3
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ret:Ljava/lang/String;
    const p2, 0x7f0b014e

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #minutes:J
    aput-object v0, p3, v2

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, ret:Ljava/lang/String;
    goto/16 :goto_0

    .line 760
    .restart local v0       #minutes:J
    .restart local v2       #ret:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p3
    :cond_9
    const/16 p1, 0xa

    if-ne p3, p1, :cond_a

    .line 761
    const p1, 0x7f0b0149

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local v2           #ret:Ljava/lang/String;
    .local p0, ret:Ljava/lang/String;
    goto/16 :goto_0

    .restart local v2       #ret:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_a
    move-object p0, v2

    .end local v2           #ret:Ljava/lang/String;
    .local p0, ret:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static formatRingDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "elapsedSeconds"

    .prologue
    .line 773
    const-wide/16 v2, 0x5

    div-long v2, p1, v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 774
    .local v0, ringCount:J
    const v2, 0x10403db

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 13
    .parameter "context"

    .prologue
    .line 879
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 880
    .local v3, am:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 881
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v10

    .line 882
    .local v10, syncs:[Landroid/content/SyncAdapterType;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v5, contactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v10

    .local v4, arr$:[Landroid/content/SyncAdapterType;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v9, v4, v7

    .line 885
    .local v9, sync:Landroid/content/SyncAdapterType;
    const-string v11, "com.android.contacts"

    iget-object v12, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 886
    iget-object v11, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 890
    .end local v9           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v6, defaultAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v4, v1

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v8, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v0, v4, v7

    .line 892
    .local v0, account:Landroid/accounts/Account;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->isAccountDefault(Landroid/accounts/Account;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 893
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 897
    .end local v0           #account:Landroid/accounts/Account;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v2, v11, [Landroid/accounts/Account;

    .line 898
    .local v2, accs:[Landroid/accounts/Account;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method public static getGroupID(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/Long;
    .locals 9
    .parameter "cr"
    .parameter "groupName"
    .parameter "account"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 461
    const/4 v8, 0x0

    .line 463
    .local v8, result:Ljava/lang/Long;
    const-string v6, ""

    .line 464
    .local v6, accountClause:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 465
    const-string v0, "%s=\'%s\' AND %s=\'%s\' AND "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "account_name"

    aput-object v2, v1, v5

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "account_type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 473
    :goto_0
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "deleted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 481
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 485
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_1
    return-object v8

    .line 470
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v6, "account_name IS NULL AND "

    goto :goto_0

    .line 485
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getGroupNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 824
    .local v11, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 825
    .local v8, group_id:J
    const/4 v6, 0x0

    .line 827
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "system_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 829
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 831
    .local v13, title:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 832
    .local v12, system_id:Ljava/lang/String;
    const-string v0, "Starred in Android"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Contacts"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    .end local v12           #system_id:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    .line 842
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 836
    .restart local v12       #system_id:Ljava/lang/String;
    .restart local v13       #title:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p0, v12, v13}, Lcom/android/contacts/model/GroupList;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, friendlyTitle:Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 841
    .end local v7           #friendlyTitle:Ljava/lang/String;
    .end local v12           #system_id:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 842
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 846
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #group_id:J
    :cond_4
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 849
    :goto_2
    return-object v0

    :cond_5
    const-string v0, ","

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static getMiliaoInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 994
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 995
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "miao_installed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 997
    .local v2, miliaoInstalled:Z
    if-eqz v2, :cond_1

    .line 998
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 999
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v4, "com.miui.auth"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1002
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v4, v1

    if-nez v4, :cond_0

    move v4, v5

    .line 1010
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #accounts:[Landroid/accounts/Account;
    :goto_0
    return v4

    .line 1006
    .restart local v0       #accountManager:Landroid/accounts/AccountManager;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    :cond_0
    const-string v4, "persist.sys.mitalk.enable"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #accounts:[Landroid/accounts/Account;
    :cond_1
    move v4, v5

    .line 1010
    goto :goto_0
.end method

.method public static getPhotoList(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "file"
    .parameter "path"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ui/ContactPhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 971
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ui/ContactPhotoItem;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 974
    .local v0, entries:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 975
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 977
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 980
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "normal/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 981
    new-instance v3, Lcom/android/contacts/ui/ContactPhotoItem;

    sget-object v4, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->FROM_ZIP:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/android/contacts/ui/ContactPhotoItem;-><init>(Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 983
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "word/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 984
    new-instance v3, Lcom/android/contacts/ui/ContactPhotoItem;

    sget-object v4, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->FROM_NAME:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/android/contacts/ui/ContactPhotoItem;-><init>(Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 989
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :cond_2
    return-object v2
.end method

.method public static initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 524
    return-void
.end method

.method public static initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 8
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "addIpPrefix"

    .prologue
    const/4 v5, 0x0

    const-string v7, "tel"

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    .line 528
    if-eqz p2, :cond_0

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoip_prefix"

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, ipPrefix:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/contacts/ContactsUtils;->addIpPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 539
    .end local v1           #ipPrefix:Ljava/lang/String;
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 540
    return-void

    .line 536
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 551
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 552
    return-void
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 559
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isProtocolValid(Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string v2, "data5"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, protocolString:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, v3

    .line 311
    :goto_0
    return v2

    .line 307
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v2, 0x1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 309
    goto :goto_0
.end method

.method public static loadFontSizeConfiguration(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 902
    const/4 v0, -0x1

    .line 904
    .local v0, themeID:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontSize:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 920
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 921
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeResource()Landroid/app/ThemeResource;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ThemeResource;->mergeThemeValues(I)V

    .line 923
    :cond_0
    return-void

    .line 906
    :pswitch_0
    const v0, 0x7f050003

    .line 907
    goto :goto_0

    .line 909
    :pswitch_1
    const v0, 0x7f050002

    .line 910
    goto :goto_0

    .line 912
    :pswitch_2
    const v0, 0x7f050001

    .line 913
    goto :goto_0

    .line 915
    :pswitch_3
    const/high16 v0, 0x7f05

    goto :goto_0

    .line 918
    :catch_0
    move-exception v1

    goto :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "protocol"

    .prologue
    .line 250
    packed-switch p0, :pswitch_data_0

    .line 268
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 254
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 256
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 258
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 260
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 262
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 264
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 266
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 8
    .parameter "cr"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    const/4 v6, 0x0

    .line 442
    .local v6, rawContactIdCursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v7, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 447
    if-eqz v6, :cond_1

    .line 448
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 453
    :cond_1
    if-eqz v6, :cond_2

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_2
    return-object v7
.end method

.method public static queryForContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "rawContactId"

    .prologue
    .line 315
    const/4 v8, 0x0

    .line 316
    .local v8, contactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 318
    .local v6, contactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 325
    :cond_0
    if-eqz v8, :cond_1

    .line 326
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_1
    return-wide v6

    .line 325
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 326
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryForRawContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "contactId"

    .prologue
    .line 357
    const/4 v8, 0x0

    .line 358
    .local v8, rawContactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 360
    .local v6, rawContactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 363
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 368
    :cond_0
    if-eqz v8, :cond_1

    .line 369
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_1
    return-wide v6

    .line 368
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 369
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryForRawContactInfoList(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 13
    .parameter "cr"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    const/4 v9, 0x0

    .line 415
    .local v9, rawContactIdCursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v11, rawContactInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithId;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "account_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "account_type"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 423
    if-eqz v9, :cond_1

    .line 424
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 426
    .local v6, id:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 428
    .local v12, type:Ljava/lang/String;
    new-instance v10, Lcom/android/contacts/model/AccountWithId;

    invoke-direct {v10, v8, v12, v6, v7}, Lcom/android/contacts/model/AccountWithId;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 429
    .local v10, rawContactInfo:Lcom/android/contacts/model/AccountWithId;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 433
    .end local v6           #id:J
    .end local v8           #name:Ljava/lang/String;
    .end local v10           #rawContactInfo:Lcom/android/contacts/model/AccountWithId;
    .end local v12           #type:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 434
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 433
    :cond_1
    if-eqz v9, :cond_2

    .line 434
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_2
    return-object v11
.end method

.method public static queryPhoneNumbers(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 9
    .parameter "cr"
    .parameter "contactId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 628
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 629
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 631
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "data1"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, "is_super_primary"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "account_type"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "data2"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "data3"

    aput-object v3, v2, v0

    const-string v3, "mimetype=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 637
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 640
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method public static queryPrimaryPhoneNumber(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "contactId"

    .prologue
    .line 778
    const/4 v6, 0x0

    .line 781
    .local v6, phone:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 782
    .local p1, baseUri:Landroid/net/Uri;
    const-string p2, "data"

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 784
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x2

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    const-string p1, "data1"

    .end local p1           #baseUri:Landroid/net/Uri;
    aput-object p1, v2, p0

    const/4 p0, 0x1

    const-string p1, "is_super_primary"

    aput-object p1, v2, p0

    const-string p0, "%s=\'%s\' AND %s=\'%d\'"

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v3, "mimetype"

    aput-object v3, p1, p2

    const/4 p2, 0x1

    const-string v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, p1, p2

    const/4 p2, 0x2

    const-string v3, "data2"

    aput-object v3, p1, p2

    const/4 p2, 0x3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 791
    .local p1, phonesCursor:Landroid/database/Cursor;
    if-nez p1, :cond_0

    move-object p0, v6

    .end local v6           #phone:Ljava/lang/String;
    .local p0, phone:Ljava/lang/String;
    move-object p1, v6

    .line 812
    .end local p0           #phone:Ljava/lang/String;
    .local p1, phone:Ljava/lang/String;
    :goto_0
    return-object p1

    .line 796
    .restart local v6       #phone:Ljava/lang/String;
    .local p1, phonesCursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_3

    .line 798
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 799
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 802
    .end local v6           #phone:Ljava/lang/String;
    .restart local p0       #phone:Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 803
    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_1

    .line 805
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local p0           #phone:Ljava/lang/String;
    move-result-object p0

    .line 810
    .restart local p0       #phone:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, p0

    .line 812
    .end local p0           #phone:Ljava/lang/String;
    .local p1, phone:Ljava/lang/String;
    goto :goto_0

    .restart local v6       #phone:Ljava/lang/String;
    .local p1, phonesCursor:Landroid/database/Cursor;
    :cond_3
    move-object p0, v6

    .end local v6           #phone:Ljava/lang/String;
    .restart local p0       #phone:Ljava/lang/String;
    goto :goto_1
.end method

.method public static final shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 8
    .parameter "context"
    .parameter "mimetype1"
    .parameter "data1"
    .parameter "mimetype2"
    .parameter "data2"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "vnd.android.cursor.item/sms-address"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    .line 576
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "vnd.android.cursor.item/sms-address"

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "vnd.android.cursor.item/sms-address"

    invoke-static {v7, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 581
    :cond_1
    if-ne p2, p4, :cond_2

    move v3, v5

    .line 610
    :goto_0
    return v3

    .line 584
    :cond_2
    if-eqz p2, :cond_3

    if-nez p4, :cond_4

    :cond_3
    move v3, v6

    .line 585
    goto :goto_0

    .line 592
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, dataParts1:[Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, dataParts2:[Ljava/lang/String;
    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_5

    move v3, v6

    .line 595
    goto :goto_0

    .line 597
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 600
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-static {v3, v4, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v6

    .line 601
    goto :goto_0

    .line 597
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v3, v5

    .line 605
    goto :goto_0

    .line 607
    .end local v0           #dataParts1:[Ljava/lang/String;
    .end local v1           #dataParts2:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_8
    if-ne p1, p3, :cond_9

    if-ne p2, p4, :cond_9

    move v3, v5

    .line 608
    goto :goto_0

    .line 610
    :cond_9
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_0

    :cond_a
    move v3, v6

    goto :goto_0
.end method

.method public static updateDeleteContactCallLogs(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "contactId"

    .prologue
    .line 925
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/contacts/ContactsUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/contacts/ContactsUtils$1;-><init>(Landroid/content/Context;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
