.class public Lcom/android/contacts/RecipientsGroupActivity;
.super Landroid/app/ExpandableListActivity;
.source "RecipientsGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/RecipientsGroupActivity$1;,
        Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;,
        Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;,
        Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;
    }
.end annotation


# instance fields
.field private final GROUPS_PROJECTION:[Ljava/lang/String;

.field private mCheckedGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;

.field private mParentActivity:Lcom/android/contacts/RecipientsActivity;

.field private mQueryHandler:Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mCheckedGroups:Ljava/util/Set;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/RecipientsGroupActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mCheckedItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/RecipientsGroupActivity;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mCheckedGroups:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/RecipientsGroupActivity;)Lcom/android/contacts/RecipientsActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/RecipientsGroupActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/contacts/RecipientsGroupActivity;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "groupCursor"

    .prologue
    .line 195
    new-instance v0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;-><init>(Lcom/android/contacts/RecipientsGroupActivity;Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mListAdapter:Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;

    .line 196
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mListAdapter:Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientsGroupActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 197
    return-void
.end method

.method private refreshGroupsCheckedStatus()V
    .locals 7

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsGroupActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    .line 86
    .local v2, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 87
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;

    if-nez v5, :cond_1

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;

    .line 93
    .local v4, vh:Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;
    iget-object v5, v4, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 94
    .local v3, position:Ljava/lang/Integer;
    iget-object v5, v4, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/contacts/RecipientsGroupActivity;->mCheckedGroups:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 96
    .end local v0           #child:Landroid/view/View;
    .end local v3           #position:Ljava/lang/Integer;
    .end local v4           #vh:Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;
    :cond_2
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mQueryHandler:Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/RecipientsGroupActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string v5, "deleted=0 AND (system_id IS NULL OR system_id<>\'Contacts\') AND title<> \'Starred in Android\'"

    const-string v7, "group_order ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected getTabParent()Lcom/android/contacts/RecipientsActivity;
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsGroupActivity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/RecipientsActivity;

    return-object p0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    invoke-virtual {v0, p2}, Lcom/android/contacts/RecipientsActivity;->onChildClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mCheckedGroups:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/contacts/RecipientsGroupActivity;->refreshGroupsCheckedStatus()V

    .line 71
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientsGroupActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsGroupActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsGroupActivity;->getTabParent()Lcom/android/contacts/RecipientsActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    .line 54
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/RecipientsActivity;->getSelectedRecipients()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mCheckedItems:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity;->mQueryHandler:Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;

    .line 56
    invoke-direct {p0}, Lcom/android/contacts/RecipientsGroupActivity;->startQuery()V

    .line 57
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPostResume()V

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsGroupActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/RecipientsGroupActivity;->mCheckedItems:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/android/contacts/RecipientsActivity;->refreshChildrenCheckedStatus(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 63
    return-void
.end method
