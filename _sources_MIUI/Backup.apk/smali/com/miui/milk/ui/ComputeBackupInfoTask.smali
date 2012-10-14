.class Lcom/miui/milk/ui/ComputeBackupInfoTask;
.super Landroid/os/AsyncTask;
.source "ComputeBackupInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;,
        Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallBack:Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

.field protected mComputeProgressDialog:Landroid/app/ProgressDialog;

.field private mErrorStatusCode:I

.field private mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

.field private mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;)V
    .locals 2
    .parameter "activity"
    .parameter "refreshBackupInfo"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    .line 38
    new-instance v0, Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;-><init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;Lcom/miui/milk/ui/ComputeBackupInfoTask$1;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mCallBack:Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/control/cloud/MetadataCloudController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/milk/ui/ComputeBackupInfoTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    return p1
.end method

.method private getLocalSize(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 151
    const/4 v6, 0x0

    .line 152
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 154
    .local v7, size:I
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    if-eqz v6, :cond_0

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 166
    :cond_0
    if-eqz v6, :cond_1

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_1
    :goto_0
    return v7

    .line 163
    :catch_0
    move-exception v0

    .line 166
    if-eqz v6, :cond_1

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getLocalSizeBeyondDeleted(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "id"
    .parameter "deletedField"

    .prologue
    .line 174
    const/4 v6, 0x0

    .line 175
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 177
    .local v7, size:I
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    if-eqz v6, :cond_0

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 189
    :cond_0
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    :goto_0
    return v7

    .line 186
    :catch_0
    move-exception v0

    .line 189
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x0

    const-string v10, "_id"

    .line 79
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v12

    .line 119
    :goto_0
    return-object v6

    .line 82
    :cond_0
    iput v9, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    .line 83
    new-instance v6, Lcom/miui/milk/control/cloud/MetadataCloudController;

    iget-object v7, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/miui/milk/control/cloud/MetadataCloudController;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    .line 84
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    invoke-virtual {v6}, Lcom/miui/milk/control/cloud/MetadataCloudController;->getIMSI()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    .line 85
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    sput-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 88
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v4, requestTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MetadataProtos$ResourceType;>;"
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CONTACT:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CALLLOG:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->SMS:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->WIFI:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->NOTE:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    iget-object v7, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mCallBack:Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

    invoke-virtual {v6, v4, v7}, Lcom/miui/milk/control/cloud/MetadataCloudController;->read(Ljava/util/ArrayList;Lcom/miui/milk/control/callback/AsyncTaskCallback;)Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v6

    sput-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 97
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-eqz v6, :cond_3

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v3, numberIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v6}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 100
    .local v0, container:Lcom/miui/milk/model/MetadataProtos$Container;
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    .end local v0           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    :cond_2
    sput-object v3, Lcom/miui/milk/ui/CloudBackupInfo;->numberIds:Ljava/util/ArrayList;

    .line 109
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #numberIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #requestTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MetadataProtos$ResourceType;>;"
    :cond_3
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v8, "deleted"

    invoke-direct {p0, v7, v10, v8}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getLocalSizeBeyondDeleted(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v9

    .line 110
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v7, 0x1

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id"

    invoke-direct {p0, v8, v10}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getLocalSize(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 111
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id"

    invoke-direct {p0, v7, v10}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getLocalSize(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v11

    .line 113
    new-instance v5, Lcom/miui/milk/control/cloud/WifiCloudController;

    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/miui/milk/control/cloud/WifiCloudController;-><init>(Landroid/content/Context;)V

    .line 114
    .local v5, wcController:Lcom/miui/milk/control/cloud/WifiCloudController;
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v7, 0x3

    invoke-virtual {v5}, Lcom/miui/milk/control/cloud/WifiCloudController;->calculateSyncSize()I

    move-result v8

    aput v8, v6, v7

    .line 116
    new-instance v2, Lcom/miui/milk/source/note/NoteManager;

    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v6}, Lcom/miui/milk/source/note/NoteManager;-><init>(Landroid/content/Context;)V

    .line 117
    .local v2, noteManager:Lcom/miui/milk/source/note/NoteManager;
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v7, 0x4

    invoke-virtual {v2}, Lcom/miui/milk/source/note/NoteManager;->getLocalNoteCount()I

    move-result v8

    aput v8, v6, v7

    move-object v6, v12

    .line 119
    goto/16 :goto_0
.end method

.method public getErrorStatusCode()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    .line 139
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    invoke-interface {v0}, Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;->refreshBackupInfo()V

    .line 142
    :cond_1
    iget v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/milk/util/AccountUtil;->checkXiaomiAccountToken(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_2
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    const v3, 0x7f060040

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    .line 49
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;-><init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 66
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask$2;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/ComputeBackupInfoTask$2;-><init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method
