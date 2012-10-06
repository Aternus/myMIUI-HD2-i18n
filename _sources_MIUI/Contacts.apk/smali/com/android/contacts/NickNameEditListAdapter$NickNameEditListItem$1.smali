.class Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;
.super Ljava/lang/Object;
.source "NickNameEditListAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;-><init>(Lcom/android/contacts/NickNameEditListAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

.field final synthetic val$this$0:Lcom/android/contacts/NickNameEditListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;Lcom/android/contacts/NickNameEditListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    iput-object p2, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->val$this$0:Lcom/android/contacts/NickNameEditListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    #getter for: Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mIndex:I
    invoke-static {v1}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->access$000(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    #getter for: Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mIndex:I
    invoke-static {v1}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->access$000(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    iget-object v2, v2, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->this$0:Lcom/android/contacts/NickNameEditListAdapter;

    #getter for: Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/NickNameEditListAdapter;->access$100(Lcom/android/contacts/NickNameEditListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    iget-object v1, v1, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->this$0:Lcom/android/contacts/NickNameEditListAdapter;

    #getter for: Lcom/android/contacts/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/NickNameEditListAdapter;->access$100(Lcom/android/contacts/NickNameEditListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    #getter for: Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mIndex:I
    invoke-static {v2}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->access$000(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/NickNameDataItem;

    .line 160
    .local v0, item:Lcom/android/contacts/NickNameDataItem;
    invoke-virtual {v0}, Lcom/android/contacts/NickNameDataItem;->isContact()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/contacts/NickNameDataItem;->setEditingNickname(Landroid/text/Editable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem$1;->this$1:Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;

    #getter for: Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->mNickNameView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;->access$200(Lcom/android/contacts/NickNameEditListAdapter$NickNameEditListItem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/contacts/NickNameDataItem;->getDisplayname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 164
    .end local v0           #item:Lcom/android/contacts/NickNameDataItem;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 168
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 154
    return-void
.end method
