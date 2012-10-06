.class public Lcom/android/contacts/ContactPickerGroupActivity;
.super Landroid/app/ExpandableListActivity;
.source "ContactPickerGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPickerGroupActivity$1;,
        Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;,
        Lcom/android/contacts/ContactPickerGroupActivity$QueryHandler;,
        Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;
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

.field private mListAdapter:Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

.field private mParentActivity:Lcom/android/contacts/ContactPickerActivity;

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mQueryHandler:Lcom/android/contacts/ContactPickerGroupActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 34
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

    iput-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mCheckedGroups:Ljava/util/Set;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactPickerGroupActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactPickerGroupActivity;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactPickerGroupActivity;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mCheckedGroups:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPickerActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPhotoLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "groupCursor"

    .prologue
    .line 126
    new-instance v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;-><init>(Lcom/android/contacts/ContactPickerGroupActivity;Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mListAdapter:Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

    .line 127
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mListAdapter:Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPickerGroupActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 128
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mQueryHandler:Lcom/android/contacts/ContactPickerGroupActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/ContactPickerGroupActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string v5, "deleted=0 AND (system_id IS NULL OR system_id<>\'Contacts\') AND title<> \'Starred in Android\'"

    const-string v7, "group_order ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPickerGroupActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 133
    iget-object v3, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mListAdapter:Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->getChildId(II)J

    move-result-wide v1

    .line 135
    .local v1, contactId:J
    iget-object v3, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPickerActivity;->isSingleContactPick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v3, v1, v2}, Lcom/android/contacts/ContactPickerActivity;->setSingleContactResult(J)V

    .line 143
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p6}, Landroid/app/ExpandableListActivity;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v3

    return v3

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    move-object v0, p2

    check-cast v0, Lcom/android/contacts/ContactListItemView;

    move-object v3, v0

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/contacts/ContactPickerActivity;->onChildClick(Lcom/android/contacts/ContactListItemView;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mCheckedGroups:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v3, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mListAdapter:Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPickerGroupActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerGroupActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerGroupActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPickerActivity;

    iput-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerGroupActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/ContactPickerActivity;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerGroupActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPickerActivity;->getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 63
    :goto_0
    new-instance v0, Lcom/android/contacts/ContactPickerGroupActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactPickerGroupActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mQueryHandler:Lcom/android/contacts/ContactPickerGroupActivity$QueryHandler;

    .line 64
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerGroupActivity;->startQuery()V

    .line 65
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/android/contacts/ContactPhotoLoader;

    const v1, 0x10803b6

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->stop()V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->resume()V

    .line 78
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mListAdapter:Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity;->mListAdapter:Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->notifyDataSetChanged()V

    .line 81
    :cond_0
    return-void
.end method
