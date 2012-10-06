.class Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactMembershipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/ContactMembershipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MembershipAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/ContactMembershipEditor;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ui/ContactMembershipEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;->this$0:Lcom/android/contacts/ui/ContactMembershipEditor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/ContactMembershipEditor;Lcom/android/contacts/ui/ContactMembershipEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;-><init>(Lcom/android/contacts/ui/ContactMembershipEditor;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;->this$0:Lcom/android/contacts/ui/ContactMembershipEditor;

    #getter for: Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/ui/ContactMembershipEditor;->access$300(Lcom/android/contacts/ui/ContactMembershipEditor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;->this$0:Lcom/android/contacts/ui/ContactMembershipEditor;

    #getter for: Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/ui/ContactMembershipEditor;->access$300(Lcom/android/contacts/ui/ContactMembershipEditor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;->this$0:Lcom/android/contacts/ui/ContactMembershipEditor;

    #getter for: Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/ui/ContactMembershipEditor;->access$300(Lcom/android/contacts/ui/ContactMembershipEditor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;

    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    iget-wide v0, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, vh:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;->this$0:Lcom/android/contacts/ui/ContactMembershipEditor;

    #getter for: Lcom/android/contacts/ui/ContactMembershipEditor;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/contacts/ui/ContactMembershipEditor;->access$400(Lcom/android/contacts/ui/ContactMembershipEditor;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 387
    new-instance v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;

    .end local v1           #vh:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;-><init>(Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;)V

    .line 388
    .restart local v1       #vh:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    const v2, 0x7f070046

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;->zName:Landroid/widget/TextView;

    .line 391
    const v2, 0x7f070047

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;->zCheckBox:Landroid/widget/CheckBox;

    .line 397
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;

    .line 398
    .local v0, info:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    iget-object v2, v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;->zName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    iget-object v3, v3, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v2, v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;->zCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 400
    iget-boolean v2, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    if-eqz v2, :cond_1

    const v2, 0x7f020092

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 402
    return-object p2

    .line 393
    .end local v0           #info:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #vh:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    check-cast v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;

    .restart local v1       #vh:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    goto :goto_0

    .line 400
    .restart local v0       #info:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    :cond_1
    const v2, 0x7f020093

    goto :goto_1
.end method
