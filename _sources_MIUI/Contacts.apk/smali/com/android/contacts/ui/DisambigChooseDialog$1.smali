.class Lcom/android/contacts/ui/DisambigChooseDialog$1;
.super Landroid/widget/BaseAdapter;
.source "DisambigChooseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/DisambigChooseDialog;-><init>(Landroid/content/Context;[Lcom/android/contacts/ui/DisambigChooseDialog$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/DisambigChooseDialog;

.field final synthetic val$actions:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/DisambigChooseDialog;[Lcom/android/contacts/ui/DisambigChooseDialog$Action;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->this$0:Lcom/android/contacts/ui/DisambigChooseDialog;

    iput-object p2, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->val$actions:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    iput-object p3, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->val$inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->val$actions:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->val$actions:[Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 145
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 149
    if-nez p2, :cond_0

    .line 150
    iget-object v6, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->val$inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03003c

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/DisambigChooseDialog$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/DisambigChooseDialog$Action;

    .line 156
    .local v0, action:Lcom/android/contacts/ui/DisambigChooseDialog$Action;
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    .local v2, text1:Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, text2:Landroid/widget/TextView;
    const v6, 0x7f0700d7

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 159
    .local v4, text3:Landroid/widget/TextView;
    const v6, 0x7f0700d6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    .local v5, text4:Landroid/widget/TextView;
    invoke-interface {v0}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-interface {v0}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->this$0:Lcom/android/contacts/ui/DisambigChooseDialog;

    #getter for: Lcom/android/contacts/ui/DisambigChooseDialog;->mLastContactedNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/contacts/ui/DisambigChooseDialog;->access$000(Lcom/android/contacts/ui/DisambigChooseDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_0
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-interface {v0}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-interface {v0}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v6, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->this$0:Lcom/android/contacts/ui/DisambigChooseDialog;

    #getter for: Lcom/android/contacts/ui/DisambigChooseDialog;->mIsPhoneNumber:Z
    invoke-static {v6}, Lcom/android/contacts/ui/DisambigChooseDialog;->access$100(Lcom/android/contacts/ui/DisambigChooseDialog;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    iget-object v6, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1;->this$0:Lcom/android/contacts/ui/DisambigChooseDialog;

    #getter for: Lcom/android/contacts/ui/DisambigChooseDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/ui/DisambigChooseDialog;->access$200(Lcom/android/contacts/ui/DisambigChooseDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-interface {v0}, Lcom/android/contacts/ui/DisambigChooseDialog$Action;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 180
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v1           #location:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    return-object p2

    .line 166
    :cond_3
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
