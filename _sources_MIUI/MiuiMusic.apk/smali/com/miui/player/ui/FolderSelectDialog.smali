.class public Lcom/miui/player/ui/FolderSelectDialog;
.super Landroid/preference/DialogPreference;
.source "FolderSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/FolderSelectDialog$1;,
        Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;,
        Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;
    }
.end annotation


# instance fields
.field private mFolderCheckedChangeListener:Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;

.field private mOldSelectFolder:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectFolder:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderSelectDialog;->setDialogLayoutResource(I)V

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/FolderSelectDialog;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/FolderSelectDialog;)Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderCheckedChangeListener:Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;

    return-object v0
.end method

.method private initSelectFolder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, allFolderPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/player/helper/FolderPathProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderPathProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/helper/FolderPathProvider;->getPathList()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mOldSelectFolder:Ljava/util/HashSet;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mOldSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "filter_music_folder"

    invoke-static {p1, v0}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mOldSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mOldSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private isSelectFolderChange()Z
    .locals 5

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, ret:Z
    iget-object v3, p0, Lcom/miui/player/ui/FolderSelectDialog;->mOldSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 83
    iget-object v3, p0, Lcom/miui/player/ui/FolderSelectDialog;->mOldSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, path:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 92
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 90
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 54
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/miui/player/helper/FolderProvider;->setFolderFilter(Z)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v3

    .line 57
    .local v3, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v3}, Lcom/miui/player/helper/FolderProvider;->syncRefreshDir()V

    .line 58
    invoke-virtual {v3}, Lcom/miui/player/helper/FolderProvider;->getFoldersPath()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    .local v0, allFolderPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1, v0}, Lcom/miui/player/ui/FolderSelectDialog;->initSelectFolder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 61
    new-instance v5, Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;-><init>(Lcom/miui/player/ui/FolderSelectDialog;Lcom/miui/player/ui/FolderSelectDialog$1;)V

    iput-object v5, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderCheckedChangeListener:Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;

    .line 62
    new-instance v2, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;

    const v5, 0x7f030009

    invoke-direct {v2, p0, v1, v5, v0}, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;-><init>(Lcom/miui/player/ui/FolderSelectDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 63
    .local v2, folderPathAdapter:Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;
    const v5, 0x7f0c001d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 64
    .local v4, pathList:Landroid/widget/ListView;
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    invoke-static {v8}, Lcom/miui/player/helper/FolderProvider;->setFolderFilter(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderSelectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 168
    .local v2, dlg:Landroid/app/Dialog;
    const v5, 0x7f0c001d

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 169
    .local v3, pathList:Landroid/widget/ListView;
    const/4 v5, -0x1

    if-ne p2, v5, :cond_4

    .line 170
    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 176
    .local v1, context:Landroid/content/Context;
    const-string v5, "filter_music_folder"

    iget-object v6, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/miui/player/ui/PreferencesActivity;->setPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 178
    invoke-direct {p0}, Lcom/miui/player/ui/FolderSelectDialog;->isSelectFolderChange()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 184
    .local v4, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/provider/PlayerStore$MiuiAudioFolder;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 187
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    iget-object v6, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 189
    :cond_2
    iget-object v5, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    invoke-static {v1, v5}, Lcom/miui/player/MusicUtils;->addToMiuiAudioFolder(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 191
    :cond_3
    invoke-static {v1}, Lcom/miui/player/helper/FolderPathProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderPathProvider;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/miui/player/helper/FolderPathProvider;->refresh(Landroid/content/Context;)V

    .line 194
    invoke-static {v8}, Lcom/miui/player/helper/PlaylistRecovery;->setFolderChange(Z)V

    .line 196
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #res:Landroid/content/ContentResolver;
    :cond_4
    iput-object v7, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;

    .line 197
    iput-object v7, p0, Lcom/miui/player/ui/FolderSelectDialog;->mOldSelectFolder:Ljava/util/HashSet;

    .line 198
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/player/helper/FolderProvider;->setFolderFilter(Z)V

    .line 205
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 206
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 47
    const v0, 0x7f0800a7

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 48
    return-void
.end method
