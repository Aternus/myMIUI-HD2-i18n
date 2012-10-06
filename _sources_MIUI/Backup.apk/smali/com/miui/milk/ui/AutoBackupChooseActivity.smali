.class public Lcom/miui/milk/ui/AutoBackupChooseActivity;
.super Landroid/app/ListActivity;
.source "AutoBackupChooseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;
    }
.end annotation


# instance fields
.field protected mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCancelButton:Landroid/widget/Button;

.field protected mCloudDataLabel:[Ljava/lang/CharSequence;

.field protected mContentsList:Landroid/widget/ListView;

.field private mDefaultSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mCloudDataLabel:[Ljava/lang/CharSequence;

    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    .line 44
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mContentsList:Landroid/widget/ListView;

    .line 45
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mCancelButton:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/milk/ui/AutoBackupChooseActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity$1;-><init>(Lcom/miui/milk/ui/AutoBackupChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 59
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Landroid/widget/ListView;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 60
    iget-object v2, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/AppInfo;

    .line 61
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 63
    iget-object v2, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 64
    .local v1, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ADDRESSBOOK"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const-string v2, "auto_backup_choose_addressbook"

    iget-boolean v3, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    iget-object v2, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->notifyDataSetChanged()V

    .line 78
    return-void

    .line 61
    .end local v1           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .restart local p0
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 66
    .restart local v1       #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "CALLLOG"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    const-string v2, "auto_backup_choose_calllog"

    iget-boolean v3, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 68
    :cond_3
    const-string v2, "SMS"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    const-string v2, "auto_backup_choose_sms"

    iget-boolean v3, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 70
    :cond_4
    const-string v2, "WIFI"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    const-string v2, "auto_backup_choose_wifi"

    iget-boolean v3, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 72
    :cond_5
    const-string v2, "NOTE"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "auto_backup_choose_note"

    iget-boolean v3, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->prepareAdapterItems()V

    .line 84
    return-void
.end method

.method protected prepareAdapterItems()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppInfos:Ljava/util/ArrayList;

    .line 89
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v1, Lcom/miui/milk/common/Constants;->SYSTEM_DATA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v7, v1, :cond_5

    .line 90
    new-instance v6, Lcom/miui/milk/common/AppInfo;

    invoke-direct {v6}, Lcom/miui/milk/common/AppInfo;-><init>()V

    .line 91
    .local v6, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 92
    const/4 v1, 0x2

    iput v1, v6, Lcom/miui/milk/common/AppInfo;->type:I

    .line 93
    sget-object v1, Lcom/miui/milk/common/Constants;->SYSTEM_DATA:[Ljava/lang/String;

    aget-object v1, v1, v7

    iput-object v1, v6, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 95
    const-string v1, "ADDRESSBOOK"

    iget-object v2, v6, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_addressbook"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 107
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const-string v1, "CALLLOG"

    iget-object v2, v6, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_calllog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 99
    :cond_2
    const-string v1, "SMS"

    iget-object v2, v6, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_sms"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 101
    :cond_3
    const-string v1, "WIFI"

    iget-object v2, v6, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 103
    :cond_4
    const-string v1, "NOTE"

    iget-object v2, v6, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_note"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 110
    .end local v6           #appInfo:Lcom/miui/milk/common/AppInfo;
    :cond_5
    new-instance v0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;

    const/high16 v3, 0x7f03

    const v4, 0x1020016

    iget-object v5, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppInfos:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;-><init>(Lcom/miui/milk/ui/AutoBackupChooseActivity;Landroid/content/Context;IILjava/util/List;)V

    .line 112
    .local v0, appsAdapter:Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method
