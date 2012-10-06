.class public Lcom/android/calendar/SelectCalendarsActivity;
.super Landroid/app/ExpandableListActivity;
.source "SelectCalendarsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACCOUNT_UNIQUE_KEY:Ljava/lang/String; = "ACCOUNT_KEY"

.field private static final EXPANDED_KEY:Ljava/lang/String; = "is_expanded"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ExpandableListView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_sync_account_type || _sync_account AS ACCOUNT_KEY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private doSaveAction()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/SelectCalendarsAdapter;->doSaveAction()V

    .line 159
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->finish()V

    .line 160
    return-void
.end method

.method private startCalendarMetafeedSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 133
    const v1, 0x7f0c0013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MultiStateButton;

    .line 134
    .local v0, button:Lcom/android/calendar/MultiStateButton;
    invoke-virtual {v0}, Lcom/android/calendar/MultiStateButton;->performClick()Z

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 146
    :pswitch_0
    invoke-direct {p0}, Lcom/android/calendar/SelectCalendarsActivity;->doSaveAction()V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->finish()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f0c0017
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v2, 0x5

    .line 52
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectCalendarsActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/calendar/SelectCalendarsActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 58
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/android/calendar/SelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 62
    .local v7, context:Landroid/content/Context;
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    const-string v3, "1) GROUP BY (ACCOUNT_KEY"

    const/4 v4, 0x0

    const-string v5, "_sync_account"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/SelectCalendarsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 66
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 67
    .local v6, accountsCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0, v6}, Lcom/android/calendar/SelectCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 68
    new-instance v0, Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-direct {v0, v7, v6, p0}, Lcom/android/calendar/SelectCalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/calendar/SelectCalendarsActivity;)V

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    .line 69
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 73
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/calendar/SelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/calendar/SelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lcom/android/calendar/SelectCalendarsActivity;->startCalendarMetafeedSync()V

    .line 78
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v8

    .line 79
    .local v8, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 79
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 138
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0c0013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MultiStateButton;

    .line 139
    .local v0, button:Lcom/android/calendar/MultiStateButton;
    invoke-virtual {v0}, Lcom/android/calendar/MultiStateButton;->performClick()Z

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/SelectCalendarsAdapter;->cancelRefreshStopDelay()V

    .line 94
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 118
    const-string v2, "is_expanded"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 119
    .local v1, isExpanded:[Z
    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 121
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 128
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/SelectCalendarsAdapter;->startRefreshStopDelay()V

    .line 88
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 101
    iget-object v3, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v0

    .line 103
    .local v0, count:I
    new-array v2, v0, [Z

    .line 104
    .local v2, isExpanded:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #isExpanded:[Z
    :cond_0
    const/4 v2, 0x0

    .line 110
    .restart local v2       #isExpanded:[Z
    :cond_1
    const-string v3, "is_expanded"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 112
    return-void
.end method
