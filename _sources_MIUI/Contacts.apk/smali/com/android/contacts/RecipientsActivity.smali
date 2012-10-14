.class public Lcom/android/contacts/RecipientsActivity;
.super Landroid/app/TabActivity;
.source "RecipientsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/RecipientsActivity$RecipientItem;,
        Lcom/android/contacts/RecipientsActivity$ViewHolder;
    }
.end annotation


# static fields
.field public static final PHONES_PROJECTION:[Ljava/lang/String;

.field public static final RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBtnDone:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedRecipients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "_id"

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v2, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/RecipientsActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v2, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v2, v0, v6

    sput-object v0, Lcom/android/contacts/RecipientsActivity;->RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    .line 442
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/RecipientsActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/RecipientsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->returnResult()V

    return-void
.end method

.method public static bindChildView(Ljava/util/Map;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "itemView"
    .parameter "position"
    .parameter "phoneNumber"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, checkedItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    move-object v0, v3

    check-cast v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    move-object v2, v0

    .line 282
    .local v2, view:Lcom/android/contacts/RecipientsActivity$ViewHolder;
    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 283
    .local v1, selected:Z
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    if-eqz v1, :cond_0

    const v3, 0x7f020092

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 290
    invoke-static {p4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :goto_1
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void

    .line 286
    :cond_0
    const v3, 0x7f020093

    goto :goto_0

    .line 294
    :cond_1
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static bindChildView(Ljava/util/Map;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;ZILandroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "itemView"
    .parameter "position"
    .parameter "phoneNumber"
    .parameter "name"
    .parameter "isShowName"
    .parameter "tabIndex"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, checkedItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    move-object v0, v5

    check-cast v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    move-object v4, v0

    .line 247
    .local v4, view:Lcom/android/contacts/RecipientsActivity$ViewHolder;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/contacts/RecipientsActivity;->bindChildView(Ljava/util/Map;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    invoke-static {p7, p3}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 253
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    :goto_0
    if-eqz p5, :cond_2

    .line 260
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 266
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p5, :cond_3

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_2
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 268
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mContactInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 271
    .local v3, params2:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v5, 0x2

    if-ne p6, v5, :cond_4

    .line 272
    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 277
    :cond_0
    :goto_3
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mContactInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    return-void

    .line 256
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v5, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 266
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 273
    .restart local v3       #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    const/4 v5, 0x3

    if-eq p6, v5, :cond_5

    if-nez p6, :cond_0

    .line 275
    :cond_5
    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method public static getContactId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 241
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "number"

    .prologue
    .line 232
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    move-object v0, p1

    .line 237
    :cond_0
    return-object v0
.end method

.method public static getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 227
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method private static getPhoneNumber(Lcom/android/contacts/RecipientsActivity$ViewHolder;)Ljava/lang/String;
    .locals 2
    .parameter "vh"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    return-object v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 108
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    return-void
.end method

.method public static newChildView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "inflator"
    .parameter "parent"

    .prologue
    .line 214
    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 215
    .local v1, view:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    invoke-direct {v0}, Lcom/android/contacts/RecipientsActivity$ViewHolder;-><init>()V

    .line 216
    .local v0, holder:Lcom/android/contacts/RecipientsActivity$ViewHolder;
    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 217
    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    .line 218
    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 219
    const v2, 0x7f0700b7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox2:Landroid/widget/CheckBox;

    .line 220
    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mLocation:Landroid/widget/TextView;

    .line 221
    const v2, 0x7f0700b5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, v0, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mContactInfo:Landroid/widget/LinearLayout;

    .line 222
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 223
    return-object v1
.end method

.method public static refreshChildrenCheckedStatus(Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 5
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, checkedItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 303
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    if-nez v4, :cond_1

    .line 302
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    .line 309
    .local v3, vh:Lcom/android/contacts/RecipientsActivity$ViewHolder;
    invoke-static {v3}, Lcom/android/contacts/RecipientsActivity;->getPhoneNumber(Lcom/android/contacts/RecipientsActivity$ViewHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 310
    .local v2, selected:Z
    iget-object v4, v3, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    iget-object v4, v3, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    if-eqz v2, :cond_2

    const v4, 0x7f020092

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v4, 0x7f020093

    goto :goto_2

    .line 315
    .end local v0           #child:Landroid/view/View;
    .end local v2           #selected:Z
    .end local v3           #vh:Lcom/android/contacts/RecipientsActivity$ViewHolder;
    :cond_3
    return-void
.end method

.method private returnResult()V
    .locals 8

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 355
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 356
    .local v4, phoneNumbers:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 358
    .local v3, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 359
    .local v0, i:I
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 360
    .local v5, recipient:Ljava/lang/String;
    aput-object v5, v4, v0

    .line 361
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v5           #recipient:Ljava/lang/String;
    :cond_0
    const-string v6, "numbers"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v6, "names"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v6, "data1"

    array-length v7, v4

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Lcom/android/contacts/RecipientsActivity;->setResult(ILandroid/content/Intent;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->finish()V

    .line 372
    return-void

    .line 369
    :cond_1
    const/4 v7, 0x0

    aget-object v7, v4, v7

    goto :goto_1
.end method

.method private setupButtonPanel()V
    .locals 2

    .prologue
    .line 114
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, panel:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/RecipientsActivity;->mBtnDone:Landroid/widget/Button;

    .line 117
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->updateDoneButton()V

    .line 120
    return-void
.end method

.method private setupRecipientsFavoriteTab()V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    const-class v1, Lcom/android/contacts/RecipientsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    const-string v1, "list_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "favorite"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 149
    return-void
.end method

.method private setupRecipientsGroupTab()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-class v1, Lcom/android/contacts/RecipientsGroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "group"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0106

    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 142
    return-void
.end method

.method private setupRecipientsListTab()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    const-class v1, Lcom/android/contacts/RecipientsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    const-string v1, "list_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "list"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0049

    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 136
    return-void
.end method

.method private setupRecipientsRecentTab()V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    const-class v1, Lcom/android/contacts/RecipientsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const-string v1, "list_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "recent"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b004b

    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 156
    return-void
.end method

.method private showRecipientMutilNumberDialog(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/RecipientsActivity$RecipientItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/RecipientsActivity$RecipientItem;>;"
    const/4 v8, 0x1

    .line 376
    new-instance v5, Lcom/android/contacts/RecipientsActivity$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/RecipientsActivity$1;-><init>(Lcom/android/contacts/RecipientsActivity;)V

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    new-instance v3, Lcom/android/contacts/RecipientMultiNumberListAdapter;

    invoke-direct {v3, p0}, Lcom/android/contacts/RecipientMultiNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 385
    .local v3, recipientMultiNumberListAdapter:Lcom/android/contacts/RecipientMultiNumberListAdapter;
    iget-object v5, p0, Lcom/android/contacts/RecipientsActivity;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03003f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 386
    .local v4, view:Landroid/widget/ListView;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0170

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 392
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 395
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    .line 396
    .local v2, item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    if-lez v1, :cond_0

    .line 397
    iget-object v6, v2, Lcom/android/contacts/RecipientsActivity$RecipientItem;->name:Ljava/lang/String;

    sub-int v5, v1, v8

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    iget-object v5, v5, Lcom/android/contacts/RecipientsActivity$RecipientItem;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v8

    :goto_1
    iput-boolean v5, v2, Lcom/android/contacts/RecipientsActivity$RecipientItem;->showHeader:Z

    .line 399
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->addItem(Lcom/android/contacts/RecipientsActivity$RecipientItem;)V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 402
    .end local v2           #item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    :cond_2
    const v5, 0x7f0b0171

    new-instance v6, Lcom/android/contacts/RecipientsActivity$2;

    invoke-direct {v6, p0, v3}, Lcom/android/contacts/RecipientsActivity$2;-><init>(Lcom/android/contacts/RecipientsActivity;Lcom/android/contacts/RecipientMultiNumberListAdapter;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    const v5, 0x7f0b0172

    new-instance v6, Lcom/android/contacts/RecipientsActivity$3;

    invoke-direct {v6, p0}, Lcom/android/contacts/RecipientsActivity$3;-><init>(Lcom/android/contacts/RecipientsActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    new-instance v5, Lcom/android/contacts/RecipientsActivity$4;

    invoke-direct {v5, p0, v3}, Lcom/android/contacts/RecipientsActivity$4;-><init>(Lcom/android/contacts/RecipientsActivity;Lcom/android/contacts/RecipientMultiNumberListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 435
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 436
    return-void
.end method


# virtual methods
.method public getSelectedRecipients()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    return-object v0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onChildClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;

    .line 195
    .local v2, vh:Lcom/android/contacts/RecipientsActivity$ViewHolder;
    invoke-static {v2}, Lcom/android/contacts/RecipientsActivity;->getPhoneNumber(Lcom/android/contacts/RecipientsActivity$ViewHolder;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsActivity;->isSelected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {p0, v1, v0, v4}, Lcom/android/contacts/RecipientsActivity;->onRecipientChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    const v3, 0x7f020093

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 210
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    return v3

    .line 204
    :cond_0
    invoke-virtual {p0, v1, v0, v5}, Lcom/android/contacts/RecipientsActivity;->onRecipientChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v3, v2, Lcom/android/contacts/RecipientsActivity$ViewHolder;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    const v3, 0x7f020092

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f07001c

    if-ne v6, v7, :cond_6

    .line 320
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v3, mNameFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 322
    .local v5, recipient:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #recipient:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v2, mDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/RecipientsActivity$RecipientItem;>;"
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 332
    .restart local v5       #recipient:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 333
    .restart local v4       #name:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 334
    new-instance v1, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/RecipientsActivity$RecipientItem;-><init>(Lcom/android/contacts/RecipientsActivity;)V

    .line 335
    .local v1, item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    iput-object v4, v1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->name:Ljava/lang/String;

    .line 336
    iput-object v5, v1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->number:Ljava/lang/String;

    .line 337
    iput-boolean v8, v1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->showHeader:Z

    .line 338
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 342
    .end local v1           #item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #recipient:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.PACKAGES"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.mms"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 344
    invoke-direct {p0, v2}, Lcom/android/contacts/RecipientsActivity;->showRecipientMutilNumberDialog(Ljava/util/ArrayList;)V

    .line 351
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #mDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/RecipientsActivity$RecipientItem;>;"
    .end local v3           #mNameFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    return-void

    .line 346
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #mDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/RecipientsActivity$RecipientItem;>;"
    .restart local v3       #mNameFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->returnResult()V

    goto :goto_2

    .line 348
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #mDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/RecipientsActivity$RecipientItem;>;"
    .end local v3           #mNameFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f07001d

    if-ne v6, v7, :cond_4

    .line 349
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->finish()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v6, 0x7f030042

    invoke-virtual {p0, v6}, Lcom/android/contacts/RecipientsActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 73
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "numbers"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, numbers:[Ljava/lang/String;
    const-string v6, "names"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, names:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 81
    aget-object v4, v5, v0

    .line 82
    .local v4, number:Ljava/lang/String;
    if-nez v3, :cond_0

    const/4 v6, 0x0

    move-object v2, v6

    .line 83
    .local v2, name:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    aget-object v6, v3, v0

    move-object v2, v6

    goto :goto_1

    .line 87
    .end local v0           #i:I
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->setupRecipientsRecentTab()V

    .line 88
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->setupRecipientsListTab()V

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->setupRecipientsGroupTab()V

    .line 90
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->setupRecipientsFavoriteTab()V

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->setupButtonPanel()V

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.PACKAGES"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.mms"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    iget-object v6, p0, Lcom/android/contacts/RecipientsActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 97
    :cond_2
    return-void
.end method

.method public onRecipientChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "recipient"
    .parameter "name"
    .parameter "selected"

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/RecipientsActivity;->select(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->updateDoneButton()V

    .line 170
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/contacts/RecipientsActivity;->hideSoftKeyboard()V

    .line 104
    return-void
.end method

.method public select(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "recipient"
    .parameter "name"
    .parameter "selected"

    .prologue
    .line 159
    if-eqz p3, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateDoneButton()V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mBtnDone:Landroid/widget/Button;

    const v1, 0x7f0b016b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/RecipientsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b016e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
