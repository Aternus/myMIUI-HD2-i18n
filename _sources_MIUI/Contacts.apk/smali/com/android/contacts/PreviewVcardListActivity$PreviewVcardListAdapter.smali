.class Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreviewVcardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/PreviewVcardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewVcardListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/PreviewVcardListActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;Lcom/android/contacts/PreviewVcardListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;-><init>(Lcom/android/contacts/PreviewVcardListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$000(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$000(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 581
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-string v8, ","

    .line 586
    const/4 v4, 0x0

    .line 588
    .local v4, vh:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 589
    iget-object v5, p0, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$1500(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030035

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 590
    new-instance v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;

    .end local v4           #vh:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;
    invoke-direct {v4, p0}, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;-><init>(Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;)V

    .line 591
    .restart local v4       #vh:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 593
    const v5, 0x7f070046

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 594
    const v5, 0x7f0700bc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->mNumbers:Landroid/widget/TextView;

    .line 599
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/pim/vcard/VCardEntry;

    .line 601
    .local v2, entry:Landroid/pim/vcard/VCardEntry;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 603
    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 604
    .local v1, data:Landroid/pim/vcard/VCardEntry$PhoneData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 605
    const-string v5, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_0
    iget-object v5, v1, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 596
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #data:Landroid/pim/vcard/VCardEntry$PhoneData;
    .end local v2           #entry:Landroid/pim/vcard/VCardEntry;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vh:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;
    check-cast v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;

    .restart local v4       #vh:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;
    goto :goto_0

    .line 612
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #entry:Landroid/pim/vcard/VCardEntry;
    :cond_2
    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 613
    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 614
    .local v1, data:Landroid/pim/vcard/VCardEntry$EmailData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 615
    const-string v5, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_3
    iget-object v5, v1, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 622
    .end local v1           #data:Landroid/pim/vcard/VCardEntry$EmailData;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 623
    iget-object v5, v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v5, v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->mNumbers:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    :goto_3
    return-object p2

    .line 626
    :cond_5
    iget-object v5, v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v5, v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->mNumbers:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v5, v4, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->mNumbers:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
