.class public Lcom/android/bluetooth/opp/BluetoothOppManager;
.super Ljava/lang/Object;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

.field private static INSTANCE_LOCK:Ljava/lang/Object;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mInsertShareThreadNum:I

.field private mMimeTypeOfSendingFile:Ljava/lang/String;

.field private mMimeTypeOfSendingFiles:Ljava/lang/String;

.field public mMultipleFlag:Z

.field public mSendingFlag:Z

.field private mUriOfSendingFile:Ljava/lang/String;

.field private mUrisOfSendingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mfileNumInBatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    .line 315
    return-void
.end method

.method static synthetic access$008(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;-><init>()V

    sput-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 116
    :cond_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->init(Landroid/content/Context;)Z

    .line 118
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 140
    :goto_0
    return v0

    .line 128
    :cond_0
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->restoreApplicationData()V

    move v0, v1

    .line 140
    goto :goto_0
.end method

.method private restoreApplicationData()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v8, "OPPMGR"

    .line 147
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "OPPMGR"

    invoke-virtual {v4, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v4, "SENDINGFLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 151
    const-string v4, "MIMETYPE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 152
    const-string v4, "FILE_URI"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 153
    const-string v4, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 154
    const-string v4, "MULTIPLE_FLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 159
    const-string v4, "FILE_URIS"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, strUris:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 161
    if-eqz v3, :cond_0

    .line 162
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, splitUri:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0           #i:I
    .end local v2           #splitUri:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "OPPMGR"

    invoke-virtual {v4, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    return-void
.end method

.method private storeApplicationData()V
    .locals 13

    .prologue
    const-string v12, "MIMETYPE_MULTIPLE"

    const-string v11, "MIMETYPE"

    const-string v10, "FILE_URIS"

    const-string v9, "FILE_URI"

    .line 176
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v7, "OPPMGR"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "SENDINGFLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v6, "MULTIPLE_FLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v6, :cond_1

    .line 181
    const-string v6, "MIMETYPE_MULTIPLE"

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    invoke-interface {v1, v12, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 184
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 185
    .local v5, uriContent:Landroid/net/Uri;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v5           #uriContent:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, strUris:Ljava/lang/String;
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v6, "MIMETYPE"

    invoke-interface {v1, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v6, "FILE_URI"

    invoke-interface {v1, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #strUris:Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-void

    .line 194
    :cond_1
    const-string v6, "MIMETYPE"

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v6, "FILE_URI"

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v6, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public enableBluetooth()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 242
    :cond_0
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    monitor-exit p0

    return v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "device"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, deviceName:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_0
    if-nez v0, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_1
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 210
    monitor-exit p0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "mimeType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 215
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 216
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 218
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 219
    monitor-exit p0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startTransfer(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 286
    const-string v0, "BluetoothOppManager"

    const-string v1, "Too many shares user triggered concurrently!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f040038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f040042

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 295
    monitor-exit p0

    .line 305
    :goto_0
    return-void

    .line 297
    :cond_0
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;

    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    .line 302
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->start()V

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
