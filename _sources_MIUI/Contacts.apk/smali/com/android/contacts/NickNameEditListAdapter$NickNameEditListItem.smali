.class Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;
.super Landroid/widget/LinearLayout;
.source "NickNameEditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/NickNameEditListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NickNameEditListItem"
.end annotation


# instance fields
.field private mBindItem:Lcom/android/contacts/NickNameDataItem;

.field private mIndex:I

.field private mNameView:Landroid/widget/TextView;

.field private mNickNameView:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/android/contacts/NickNameEditListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/NickNameEditListAdapter;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->this$0:Lcom/android/contacts/NickNameEditListAdapter;

    .line 146
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mIndex:I

    .line 148
    const v0, 0x7f030032

    invoke-static {p2, v0, p0}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 149
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNameView:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    .line 151
    iget-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;-><init>(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;Lcom/android/contacts/NickNameEditListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/android/contacts/NickNameDataItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mBindItem:Lcom/android/contacts/NickNameDataItem;

    if-ne v1, p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mBindItem:Lcom/android/contacts/NickNameDataItem;

    .line 181
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/contacts/NickNameDataItem;->getDisplayname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p1}, Lcom/android/contacts/NickNameDataItem;->isContact()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 184
    invoke-virtual {p1}, Lcom/android/contacts/NickNameDataItem;->getEditingNickname()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, editingnick:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/android/contacts/NickNameDataItem;->getDisplayname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    .end local v0           #editingnick:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    const v2, 0x7f0b0167

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 193
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mIndex:I

    .line 174
    return-void
.end method
