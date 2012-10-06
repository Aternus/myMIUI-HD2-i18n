.class public Lcom/android/contacts/DialerListAdapter;
.super Landroid/widget/CursorAdapter;
.source "DialerListAdapter.java"

# interfaces
.implements Landroid/telephony/PhoneNumberUtils$TelocationQueryListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/EditableListView$EditableListIdMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;,
        Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;,
        Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/contacts/TwelveKeyDialer;

.field private mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemClickAction:I

.field private final mListView:Landroid/widget/EditableListView;

.field private final mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mShowQuickContactBadge:Z


# direct methods
.method public constructor <init>(Lcom/android/contacts/TwelveKeyDialer;Landroid/widget/EditableListView;)V
    .locals 8
    .parameter "activity"
    .parameter "listView"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 639
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 61
    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 63
    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z

    .line 66
    iput v1, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    .line 641
    iput-object p1, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    .line 642
    iput-object p2, p0, Lcom/android/contacts/DialerListAdapter;->mListView:Landroid/widget/EditableListView;

    .line 643
    invoke-virtual {p1}, Lcom/android/contacts/TwelveKeyDialer;->getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 645
    invoke-virtual {p0}, Lcom/android/contacts/DialerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/DialerListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/DialerListAdapter$1;-><init>(Lcom/android/contacts/DialerListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 657
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 659
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    const v1, 0x10300b2

    invoke-direct {v6, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 660
    .local v6, span1:Landroid/text/style/TextAppearanceSpan;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    const v1, 0x10300b3

    invoke-direct {v7, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 661
    .local v7, span2:Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 663
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/DialerListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/DialerListAdapter;Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/contacts/DialerListAdapter;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/DialerListAdapter;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/DialerListAdapter;Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/DialerListAdapter;->setIcon(Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/DialerListAdapter;->highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/DialerListAdapter;->highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/DialerListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/contacts/DialerListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/DialerListAdapter;->handleDialerClick(Ljava/lang/String;JZ)V

    return-void
.end method

.method private bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;

    .line 737
    .local v0, main:Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;
    invoke-virtual {v0, p2, p3}, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;->draw(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 738
    return-void
.end method

.method private bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "c"
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 929
    if-nez p1, :cond_0

    .line 942
    :goto_0
    return-void

    .line 933
    :cond_0
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 935
    .local v0, cId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 936
    invoke-virtual {p1, p3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 941
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/DialerListAdapter;->setIcon(Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private getHighLightTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;
    .locals 6

    .prologue
    .line 677
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v2}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v4}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private handleDialerClick(Ljava/lang/String;JZ)V
    .locals 10
    .parameter "number"
    .parameter "contactId"
    .parameter "isCallRecord"

    .prologue
    .line 782
    const-string v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 784
    .local v9, telUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialer_click_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 785
    .local v6, action:I
    if-eqz v6, :cond_1

    const/4 v0, 0x2

    if-eq v6, v0, :cond_1

    .line 786
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .end local v6           #action:I
    const v7, 0x104000a

    new-instance v0, Lcom/android/contacts/DialerListAdapter$2;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/DialerListAdapter$2;-><init>(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;JZ)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 805
    .restart local v6       #action:I
    :cond_1
    iget v0, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 807
    :pswitch_1
    const-string v0, "-3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 815
    :pswitch_2
    const/4 v8, 0x0

    .line 816
    .local v8, intent:Landroid/content/Intent;
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 817
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 818
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v0, "number"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :goto_1
    const-string v0, "extra.show.calllogs"

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 825
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 821
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 822
    .local v7, contactUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .parameter "name"
    .parameter "matchDetail"

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 834
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v7

    .line 870
    :goto_0
    return-object v5

    .line 836
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_2

    move-object v5, v7

    goto :goto_0

    .line 838
    :cond_2
    const/4 v1, 0x0

    .line 839
    .local v1, isMatch:Z
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 841
    .local v2, matches:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .line 842
    .local v3, start:I
    const/4 v4, 0x0

    .line 843
    .local v4, started:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 844
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_4

    .line 845
    const/4 v1, 0x1

    .line 846
    if-nez v4, :cond_3

    .line 847
    move v3, v0

    .line 848
    const/4 v4, 0x1

    .line 843
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 851
    :cond_4
    if-eqz v4, :cond_3

    .line 852
    invoke-direct {p0}, Lcom/android/contacts/DialerListAdapter;->getHighLightTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 856
    const/4 v4, 0x0

    goto :goto_2

    .line 860
    :cond_5
    if-eqz v4, :cond_6

    .line 861
    iget-object v5, p0, Lcom/android/contacts/DialerListAdapter;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v3, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 867
    :cond_6
    if-eqz v1, :cond_7

    move-object v5, v2

    .line 868
    goto :goto_0

    :cond_7
    move-object v5, v7

    .line 870
    goto :goto_0
.end method

.method private highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 13
    .parameter "number"
    .parameter "keywords"

    .prologue
    const/4 v12, 0x0

    .line 875
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v10, v12

    .line 924
    :goto_0
    return-object v10

    .line 877
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 878
    .local v8, searchKey:Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 879
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 882
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 883
    .local v4, found:I
    const/4 v1, 0x0

    .line 884
    .local v1, end:I
    if-ltz v4, :cond_4

    .line 885
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int v1, v4, v10

    .line 916
    :cond_3
    :goto_1
    if-ltz v4, :cond_9

    if-le v1, v4, :cond_9

    .line 917
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 918
    .local v7, matches:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0}, Lcom/android/contacts/DialerListAdapter;->getHighLightTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v10

    const/16 v11, 0x21

    invoke-virtual {v7, v10, v4, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v10, v7

    .line 922
    goto :goto_0

    .line 888
    .end local v7           #matches:Landroid/text/SpannableStringBuilder;
    :cond_4
    const/4 v9, 0x0

    .line 889
    .local v9, start:I
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 890
    .local v2, firstChar:I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_3

    .line 892
    invoke-virtual {p1, v2, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 893
    .local v3, firstCharPos:I
    if-ltz v3, :cond_3

    .line 896
    const/4 v6, 0x1

    .line 897
    .local v6, matchedLength:I
    add-int/lit8 v5, v3, 0x1

    .line 898
    .local v5, index:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 899
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 900
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 901
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_6

    .line 908
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v6, v10, :cond_8

    .line 909
    move v4, v3

    .line 910
    move v1, v5

    .line 911
    goto :goto_1

    .line 904
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 906
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 907
    goto :goto_3

    .line 913
    .end local v0           #c:C
    :cond_8
    add-int/lit8 v9, v3, 0x1

    .line 914
    goto :goto_2

    .end local v2           #firstChar:I
    .end local v3           #firstCharPos:I
    .end local v5           #index:I
    .end local v6           #matchedLength:I
    .end local v9           #start:I
    :cond_9
    move-object v10, v12

    .line 924
    goto/16 :goto_0
.end method

.method private setIcon(Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 8
    .parameter "view"
    .parameter "cursor"
    .parameter "number"

    .prologue
    const/4 v7, 0x4

    .line 946
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 948
    .local v0, contactId:J
    invoke-static {p3}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v5

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v5, v6, :cond_0

    .line 949
    invoke-static {p1, v0, v1}, Landroid/widget/QuickContactBadge;->setDefaultPhoto(Landroid/widget/ImageView;J)V

    .line 950
    iget-object v5, p0, Lcom/android/contacts/DialerListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v5, p1}, Lcom/android/contacts/ContactPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 974
    :goto_0
    return-void

    .line 954
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_4

    .line 956
    const-wide/16 v5, -0x6

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    .line 957
    const v4, 0x7f020063

    .line 965
    .local v4, resId:I
    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 966
    iget-object v5, p0, Lcom/android/contacts/DialerListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v5, p1}, Lcom/android/contacts/ContactPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 958
    .end local v4           #resId:I
    :cond_1
    const-wide/16 v5, -0x7

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 959
    const v4, 0x7f0200b3

    .restart local v4       #resId:I
    goto :goto_1

    .line 960
    .end local v4           #resId:I
    :cond_2
    const-wide/16 v5, -0x9

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    .line 961
    const v4, 0x7f0200dd

    .restart local v4       #resId:I
    goto :goto_1

    .line 963
    .end local v4           #resId:I
    :cond_3
    const v4, 0x10803bc

    .restart local v4       #resId:I
    goto :goto_1

    .line 967
    .end local v4           #resId:I
    :cond_4
    invoke-interface {p2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 968
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 969
    .local v2, photoId:J
    iget-object v5, p0, Lcom/android/contacts/DialerListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v5, p1, v2, v3}, Lcom/android/contacts/ContactPhotoLoader;->loadPhoto(Landroid/widget/ImageView;J)V

    goto :goto_0

    .line 971
    .end local v2           #photoId:J
    :cond_5
    invoke-static {p1, v0, v1}, Landroid/widget/QuickContactBadge;->setDefaultPhoto(Landroid/widget/ImageView;J)V

    .line 972
    iget-object v5, p0, Lcom/android/contacts/DialerListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v5, p1}, Lcom/android/contacts/ContactPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private static setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 11
    .parameter "v"
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 998
    sget-object v8, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 999
    .local v6, style:Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 1000
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1004
    :cond_0
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1005
    .local v1, colors:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 1006
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1009
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 1010
    .local v7, ts:I
    if-eqz v7, :cond_2

    .line 1011
    int-to-float v8, v7

    invoke-virtual {p0, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1014
    :cond_2
    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1015
    if-eqz v1, :cond_3

    .line 1016
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1019
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1020
    if-eqz v1, :cond_4

    .line 1021
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1026
    :cond_4
    const/16 v8, 0x24

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1027
    .local v2, shadowColor:I
    const/16 v8, 0x25

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1028
    .local v3, shadowDx:F
    const/16 v8, 0x26

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1029
    .local v4, shadowDy:F
    const/16 v8, 0x27

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 1030
    .local v5, shadowRadius:F
    invoke-virtual {p0, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1032
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1033
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 732
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/DialerListAdapter;->bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 733
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 993
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 994
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/DialerListAdapter;->mRowIDColumn:I

    .line 995
    return-void
.end method

.method public checkPreferenceChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 666
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialer_show_quick_contact_badge"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/DialerListAdapter;->mShowQuickContactBadge:Z

    .line 668
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialer_click_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    .line 670
    return-void

    :cond_0
    move v0, v3

    .line 666
    goto :goto_0
.end method

.method public getItemClickAction()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    return v0
.end method

.method public getItemType(Landroid/database/Cursor;I)I
    .locals 1
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 981
    const/4 v0, 0x0

    .line 983
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 691
    iget-boolean v1, p0, Lcom/android/contacts/DialerListAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 692
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_1
    iget v1, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 699
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;

    if-nez v1, :cond_3

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;-><init>(Lcom/android/contacts/DialerListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 713
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/DialerListAdapter;->bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 714
    return-object v0

    .line 703
    .end local v0           #v:Landroid/view/View;
    :cond_3
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0

    .line 706
    .end local v0           #v:Landroid/view/View;
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;

    if-nez v1, :cond_6

    .line 707
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 708
    .restart local v0       #v:Landroid/view/View;
    new-instance v1, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;-><init>(Lcom/android/contacts/DialerListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 710
    .end local v0           #v:Landroid/view/View;
    :cond_6
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public mapPositionToId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1049
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 720
    iget v1, p0, Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 721
    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 722
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/DialerListAdapter$DialerListViewsCall;-><init>(Lcom/android/contacts/DialerListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 727
    :goto_0
    return-object v0

    .line 724
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 725
    .restart local v0       #v:Landroid/view/View;
    new-instance v1, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/DialerListAdapter$DialerListViewsContact;-><init>(Lcom/android/contacts/DialerListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "location"

    .prologue
    .line 1040
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 1041
    .local v1, v:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 1043
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 687
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 741
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 743
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    check-cast p1, Landroid/widget/ListView;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v8, p3, v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, phoneNumber:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 749
    .local v0, contactId:J
    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 752
    .local v6, telUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v7

    sget v8, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v7, v8, :cond_3

    .line 753
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/DialerListAdapter;->getItemType(Landroid/database/Cursor;I)I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v4, v0, v1, v7}, Lcom/android/contacts/DialerListAdapter;->handleDialerClick(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 757
    :cond_3
    const-wide/16 v7, -0x7

    cmp-long v7, v0, v7

    if-nez v7, :cond_4

    .line 758
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 759
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v3, mCreateExtras:Landroid/os/Bundle;
    const-string v7, "phone"

    invoke-virtual {v3, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 762
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v7, v2}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 763
    .end local v3           #mCreateExtras:Landroid/os/Bundle;
    :cond_4
    const-wide/16 v7, -0x6

    cmp-long v7, v0, v7

    if-nez v7, :cond_5

    .line 764
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 765
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 767
    .restart local v3       #mCreateExtras:Landroid/os/Bundle;
    const-string v7, "phone"

    invoke-virtual {v3, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 769
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v7, v2}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 770
    .end local v3           #mCreateExtras:Landroid/os/Bundle;
    :cond_5
    const-wide/16 v7, -0x8

    cmp-long v7, v0, v7

    if-eqz v7, :cond_0

    .line 772
    const-wide/16 v7, -0x9

    cmp-long v7, v0, v7

    if-nez v7, :cond_6

    .line 773
    const-string v7, "smsto"

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 774
    .local v5, smsUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v2, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 775
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v7, v2}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 777
    .end local v5           #smsUri:Landroid/net/Uri;
    :cond_6
    iget-object v7, p0, Lcom/android/contacts/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/DialerListAdapter;->getItemType(Landroid/database/Cursor;I)I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    :goto_2
    invoke-direct {p0, v4, v0, v1, v7}, Lcom/android/contacts/DialerListAdapter;->handleDialerClick(Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/contacts/TwelveKeyDialer;->doFilter(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
