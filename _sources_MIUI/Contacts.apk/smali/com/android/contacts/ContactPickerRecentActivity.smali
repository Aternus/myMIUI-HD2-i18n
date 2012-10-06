.class public Lcom/android/contacts/ContactPickerRecentActivity;
.super Landroid/app/ListActivity;
.source "ContactPickerRecentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;,
        Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;

.field private mParentActivity:Lcom/android/contacts/ContactPickerActivity;

.field private mQueryHandler:Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactPickerRecentActivity;->RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactPickerRecentActivity;)Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mAdapter:Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPickerRecentActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerRecentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPickerActivity;

    iput-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    .line 50
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPickerRecentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    new-instance v0, Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;-><init>(Lcom/android/contacts/ContactPickerRecentActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mAdapter:Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;

    .line 53
    iget-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mAdapter:Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPickerRecentActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    new-instance v0, Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mQueryHandler:Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;

    .line 56
    iget-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mQueryHandler:Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_RECENT_CONTACTS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/ContactPickerRecentActivity;->RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 117
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mAdapter:Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 119
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, name:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, number:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v3, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v5, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v6, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v6}, Lcom/android/contacts/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 130
    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 131
    iget-object v6, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Lcom/android/contacts/ContactPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 132
    iget-object v6, p0, Lcom/android/contacts/ContactPickerRecentActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v6}, Lcom/android/contacts/ContactPickerActivity;->finish()V

    .line 133
    return-void
.end method
