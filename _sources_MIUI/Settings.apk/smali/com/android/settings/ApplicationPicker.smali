.class public Lcom/android/settings/ApplicationPicker;
.super Landroid/app/Activity;
.source "ApplicationPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApplicationPicker$AppProcess;,
        Lcom/android/settings/ApplicationPicker$ApplicationAdapter;
    }
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private completeButton:Landroid/widget/Button;

.field private mApplicationAdapter:Lcom/android/settings/ApplicationPicker$ApplicationAdapter;

.field private mChecked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNonSystemProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/ApplicationPicker$AppProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ApplicationPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/ApplicationPicker;->setCompelteButtonText()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ApplicationPicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->mNonSystemProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->mProcessMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private initChecked()V
    .locals 8

    .prologue
    .line 127
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/ApplicationPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "user_apps_kept_in_memory"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, checkedItems:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 133
    const-string v6, ";"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, checked:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 135
    .local v5, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApplicationPicker;->mProcessMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    iget-object v6, p0, Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #checked:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ApplicationPicker;->setCompelteButtonText()V

    .line 141
    return-void
.end method

.method private initProcess()V
    .locals 7

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/ApplicationPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/settings/ApplicationPicker;->mProcessMap:Ljava/util/HashMap;

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/ApplicationPicker;->mNonSystemProcesses:Ljava/util/ArrayList;

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 109
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 110
    .local v4, processName:Ljava/lang/String;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 111
    iget-object v5, p0, Lcom/android/settings/ApplicationPicker;->mProcessMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/android/settings/ApplicationPicker;->mNonSystemProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApplicationPicker;->mProcessMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ApplicationPicker$AppProcess;

    .line 116
    .local v3, process:Lcom/android/settings/ApplicationPicker$AppProcess;
    if-nez v3, :cond_2

    .line 117
    new-instance v3, Lcom/android/settings/ApplicationPicker$AppProcess;

    .end local v3           #process:Lcom/android/settings/ApplicationPicker$AppProcess;
    invoke-direct {v3, p0}, Lcom/android/settings/ApplicationPicker$AppProcess;-><init>(Lcom/android/settings/ApplicationPicker;)V

    .line 118
    .restart local v3       #process:Lcom/android/settings/ApplicationPicker$AppProcess;
    iput-object v4, v3, Lcom/android/settings/ApplicationPicker$AppProcess;->processName:Ljava/lang/String;

    .line 120
    :cond_2
    iget-object v5, v3, Lcom/android/settings/ApplicationPicker$AppProcess;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v5, p0, Lcom/android/settings/ApplicationPicker;->mProcessMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #process:Lcom/android/settings/ApplicationPicker$AppProcess;
    .end local v4           #processName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private setCompelteButtonText()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->completeButton:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->completeButton:Landroid/widget/Button;

    const v1, 0x7f0904fe

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ApplicationPicker;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c0001

    if-ne v1, v2, :cond_1

    .line 146
    const-string v0, ""

    .line 147
    .local v0, checked:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const-string v1, ";"

    iget-object v2, p0, Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApplicationPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_apps_kept_in_memory"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    .end local v0           #checked:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApplicationPicker;->finish()V

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationPicker;->setContentView(I)V

    .line 53
    const v0, 0x7f0904fd

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationPicker;->setTitle(I)V

    .line 55
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/ApplicationPicker;->mListView:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/ApplicationPicker$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ApplicationPicker$1;-><init>(Lcom/android/settings/ApplicationPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ApplicationPicker;->completeButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->completeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ApplicationPicker;->cancelButton:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/ApplicationPicker;->initProcess()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/ApplicationPicker;->initChecked()V

    .line 90
    new-instance v0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;-><init>(Lcom/android/settings/ApplicationPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApplicationPicker;->mApplicationAdapter:Lcom/android/settings/ApplicationPicker$ApplicationAdapter;

    .line 91
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/ApplicationPicker;->mApplicationAdapter:Lcom/android/settings/ApplicationPicker$ApplicationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method
