.class public Lcom/android/contacts/RecipientMultiNumberListItem;
.super Landroid/widget/LinearLayout;
.source "RecipientMultiNumberListItem.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLocationView:Landroid/widget/TextView;

.field private mNameView:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const v0, 0x7f030040

    invoke-static {p1, v0, p0}, Lcom/android/contacts/RecipientMultiNumberListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    const v0, 0x7f0700dd

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientMultiNumberListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mNameView:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientMultiNumberListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mNumberView:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientMultiNumberListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mLocationView:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientMultiNumberListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 23
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/contacts/RecipientsActivity$RecipientItem;IZ)V
    .locals 5
    .parameter "item"
    .parameter "position"
    .parameter "checked"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 31
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mNameView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-boolean v1, p1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->showHeader:Z

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mNumberView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, location:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    if-eqz p3, :cond_2

    const v1, 0x7f020092

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientMultiNumberListItem;->setBackgroundResource(I)V

    .line 49
    return-void

    .line 35
    .end local v0           #location:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 43
    .restart local v0       #location:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/RecipientMultiNumberListItem;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 46
    :cond_2
    const v1, 0x7f020093

    goto :goto_2
.end method
