.class public Lcom/android/phone/CustomLocationActivity;
.super Landroid/app/ListActivity;
.source "CustomLocationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CustomLocationActivity$QueryHandler;,
        Lcom/android/phone/CustomLocationActivity$LocationQuery;,
        Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;,
        Lcom/android/phone/CustomLocationActivity$ItemView;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/EditableListView;

.field private mListAdapter:Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;

.field private mQueryHandler:Lcom/android/phone/CustomLocationActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CustomLocationActivity;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CustomLocationActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CustomLocationActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/CustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 192
    new-instance v0, Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;-><init>(Lcom/android/phone/CustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/phone/CustomLocationActivity;->mListAdapter:Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;

    .line 193
    iget-object v0, p0, Lcom/android/phone/CustomLocationActivity;->mListAdapter:Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/CustomLocationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/phone/CustomLocationActivity;->mQueryHandler:Lcom/android/phone/CustomLocationActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/CustomLocationActivity$LocationQuery;->COLUMNS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/CustomLocationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/android/phone/CustomLocationActivity;->setContentView(I)V

    .line 49
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/phone/CustomLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/CustomLocationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Landroid/widget/EditableListView;

    iput-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;

    .line 51
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, headerView:Landroid/view/View;
    new-instance v2, Lcom/android/phone/CustomLocationActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CustomLocationActivity$1;-><init>(Lcom/android/phone/CustomLocationActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, v0}, Landroid/widget/EditableListView;->addHeaderView(Landroid/view/View;)V

    .line 63
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/android/phone/CustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CustomLocationDeleteButtonBar;

    .line 64
    .local v1, mDeleteButtonBar:Lcom/android/phone/CustomLocationDeleteButtonBar;
    new-instance v2, Lcom/android/phone/CustomLocationActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CustomLocationActivity$2;-><init>(Lcom/android/phone/CustomLocationActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomLocationDeleteButtonBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, v1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 114
    new-instance v2, Lcom/android/phone/CustomLocationActivity$QueryHandler;

    invoke-direct {v2, p0, p0}, Lcom/android/phone/CustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/CustomLocationActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/CustomLocationActivity;->mQueryHandler:Lcom/android/phone/CustomLocationActivity$QueryHandler;

    .line 115
    invoke-direct {p0}, Lcom/android/phone/CustomLocationActivity;->startQuery()V

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/phone/CustomLocationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 199
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v4, 0x1

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/EditCustomLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const-string v1, "action_edit_custom_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/phone/CustomLocationActivity;->mListAdapter:Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v1}, Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    sub-int v2, p3, v4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v2, "number"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v2, "location"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x7f0700cc
        :pswitch_0
    .end packed-switch
.end method
