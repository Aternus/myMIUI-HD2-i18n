.class public Lcom/android/settings/deviceinfo/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdAvail:Landroid/preference/Preference;

.field private mSdExtAvail:Landroid/preference/Preference;

.field private mSdExtSize:Landroid/preference/Preference;

.field private mSdFormat:Landroid/preference/Preference;

.field private mSdMountToggle:Landroid/preference/Preference;

.field private mSdSize:Landroid/preference/Preference;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 78
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 112
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 169
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Z)V

    return-void
.end method

.method private doUnmount(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v4, 0x0

    .line 203
    const v3, 0x7f0901e5

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 205
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0901e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0901e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    invoke-interface {v2, v1, p1}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 343
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 139
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 140
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 141
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 146
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 143
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 224
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, extStoragePath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 226
    .local v3, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v3, v1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 227
    .local v4, stUsers:[I
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    move v5, v6

    .line 235
    :goto_0
    return v5

    .line 230
    :cond_0
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 231
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v2

    .line 232
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v6

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 258
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v1, "Memory"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 221
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Memory"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private updateMemoryStatus()V
    .locals 21

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, status:Ljava/lang/String;
    const-string v11, ""

    .line 270
    .local v11, readOnly:Ljava/lang/String;
    const-string v17, "mounted_ro"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 271
    const-string v14, "mounted"

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0901e0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 275
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    const-string v17, "mounted"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 279
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 280
    .local v9, path:Ljava/io/File;
    new-instance v13, Landroid/os/StatFs;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 281
    .local v13, stat:Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v6, v0

    .line 282
    .local v6, blockSize:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v15, v0

    .line 283
    .local v15, totalBlocks:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v4, v0

    .line 285
    .local v4, availableBlocks:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v17, v0

    mul-long v18, v15, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v19, v4, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901d9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901da

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v4           #availableBlocks:J
    .end local v6           #blockSize:J
    .end local v9           #path:Ljava/io/File;
    .end local v13           #stat:Landroid/os/StatFs;
    .end local v15           #totalBlocks:J
    :goto_0
    new-instance v12, Ljava/io/File;

    const-string v17, "/sd-ext"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v12, sdExtDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v17, "/system/bin/a2sd"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, a2sdPath:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 328
    new-instance v13, Landroid/os/StatFs;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 329
    .restart local v13       #stat:Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v6, v0

    .line 330
    .restart local v6       #blockSize:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v15, v0

    .line 331
    .restart local v15       #totalBlocks:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v4, v0

    .line 332
    .restart local v4       #availableBlocks:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdExtSize:Landroid/preference/Preference;

    move-object/from16 v17, v0

    mul-long v18, v15, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdExtAvail:Landroid/preference/Preference;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v19, v4, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    .end local v4           #availableBlocks:J
    .end local v6           #blockSize:J
    .end local v13           #stat:Landroid/os/StatFs;
    .end local v15           #totalBlocks:J
    :cond_1
    :goto_1
    return-void

    .line 292
    .end local v3           #a2sdPath:Ljava/io/File;
    .end local v12           #sdExtDir:Ljava/io/File;
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 295
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v14, "removed"

    .line 296
    goto/16 :goto_0

    .line 298
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const-string v17, "shared"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f09042d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f09042d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901dc

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901dd

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 307
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901df

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901df

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    const-string v17, "unmounted"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "nofs"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "unmountable"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 313
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901dc

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901dd

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 318
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901dc

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0901db

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 335
    .restart local v3       #a2sdPath:Ljava/io/File;
    .restart local v12       #sdExtDir:Ljava/io/File;
    :cond_6
    const-string v17, "sd_ext_memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 336
    .local v10, preference:Landroid/preference/Preference;
    if-eqz v10, :cond_1

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->finish()V

    .line 348
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 89
    :cond_0
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 92
    const-string v0, "memory_sd_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    .line 93
    const-string v0, "memory_sd_avail"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    .line 94
    const-string v0, "memory_sd_ext_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdExtSize:Landroid/preference/Preference;

    .line 95
    const-string v0, "memory_sd_ext_avail"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdExtAvail:Landroid/preference/Preference;

    .line 96
    const-string v0, "memory_sd_mount_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    .line 97
    const-string v0, "memory_sd_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    .line 98
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const v3, 0x7f090290

    const/4 v2, 0x0

    .line 178
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 198
    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->unmount()V

    :goto_0
    move v0, v2

    .line 166
    :goto_1
    return v0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-class v1, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 163
    goto :goto_1

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    .line 110
    return-void
.end method
