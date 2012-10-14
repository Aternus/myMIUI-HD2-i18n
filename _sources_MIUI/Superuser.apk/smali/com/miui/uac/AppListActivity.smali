.class public Lcom/miui/uac/AppListActivity;
.super Landroid/app/Activity;
.source "AppListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/uac/AppListActivity$AppViewHolder;,
        Lcom/miui/uac/AppListActivity$AppPermissionInfo;,
        Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;

.field private mAppList:Landroid/widget/ListView;

.field private mAppPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/uac/AppListActivity$AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

.field private mEnableAuthority:Landroid/widget/SlidingButton;

.field private mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Lcom/miui/uac/AppListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/uac/AppListActivity$1;-><init>(Lcom/miui/uac/AppListActivity;)V

    iput-object v0, p0, Lcom/miui/uac/AppListActivity;->mAuthorityListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/uac/AppListActivity;->mAppPermissionInfos:Ljava/util/List;

    .line 405
    return-void
.end method

.method static synthetic access$000(Lcom/miui/uac/AppListActivity;)Lcom/android/internal/app/IPackageGuardian;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/uac/AppListActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/uac/AppListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/uac/AppListActivity;->mAppPermissionInfos:Ljava/util/List;

    return-object v0
.end method

.method private initPermissionApps()V
    .locals 27

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppListActivity;->mAppPermissionInfos:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/miui/uac/AppListActivity;->parsePackageByPermission()Ljava/util/HashMap;

    move-result-object v6

    .line 160
    .local v6, appPermissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/uac/AppListActivity$AppPermissionInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppListActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/app/IPackageGuardian;->getConfirmedBehaviors()Ljava/util/List;

    move-result-object v9

    .line 161
    .local v9, confirmedBehaviors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 162
    .local v7, behavior:Ljava/lang/String;
    const-string v23, ":"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, behaviorSegements:[Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v23, v8, v23

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 164
    const/16 v23, 0x1

    aget-object v23, v8, v23

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    move-object v0, v5

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v8, v24

    const/16 v25, 0x2

    aget-object v25, v8, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v23, "com.miui.uac.AppListActivity"

    const/16 v24, 0x1

    aget-object v24, v8, v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v7           #behavior:Ljava/lang/String;
    .end local v8           #behaviorSegements:[Ljava/lang/String;
    .end local v9           #confirmedBehaviors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v23

    move-object/from16 v12, v23

    .line 170
    .local v12, e:Landroid/os/RemoteException;
    const-string v23, "com.miui.uac.AppListActivity"

    const-string v24, "error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v11, Lcom/miui/uac/DBHelper;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/uac/DBHelper;-><init>(Landroid/content/Context;)V

    .line 175
    .local v11, dbHelper:Lcom/miui/uac/DBHelper;
    invoke-virtual {v11}, Lcom/miui/uac/DBHelper;->getAllApps()Landroid/database/Cursor;

    move-result-object v10

    .line 176
    .local v10, cursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 178
    .local v19, packageName:Ljava/lang/String;
    const-string v23, "package"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 179
    .local v20, packageNameColumnId:I
    const-string v23, "name"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 180
    .local v18, packageLabelColumnId:I
    const-string v23, "allow"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 181
    .local v5, allowColumnId:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v23

    if-nez v23, :cond_3

    .line 182
    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 183
    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 184
    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    move-object v0, v7

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const-string v24, "android.permission.superuser.ROOT"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 186
    :cond_2
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v22, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "android.permission.superuser.ROOT"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v23, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    move-object v0, v10

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/uac/AppListActivity$AppPermissionInfo;-><init>(Lcom/miui/uac/AppListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 192
    .end local v22           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v11}, Lcom/miui/uac/DBHelper;->close()V

    .line 193
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v23

    if-nez v23, :cond_4

    .line 194
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v17, infos:Ljava/util/List;,"Ljava/util/List<Lcom/miui/uac/AppListActivity$AppPermissionInfo;>;"
    const/4 v13, -0x1

    .line 199
    .local v13, flag:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v5           #allowColumnId:I
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    .line 200
    .local v16, info:Lcom/miui/uac/AppListActivity$AppPermissionInfo;
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 202
    .restart local v22       #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, -0x1

    .line 203
    sget-object v23, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 204
    .local v21, permission:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 205
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v23, 0x1

    move v0, v13

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 210
    .end local v21           #permission:Ljava/lang/String;
    :cond_6
    if-ltz v13, :cond_7

    .line 211
    const-string v23, "android.permission.superuser.read_phone_state"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_7
    const/4 v13, -0x1

    .line 215
    sget-object v23, Lcom/miui/uac/Util;->CALL_PHONE_BEHAVIORS:Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 216
    .restart local v21       #permission:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 217
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v23, 0x1

    move v0, v13

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 222
    .end local v21           #permission:Ljava/lang/String;
    :cond_9
    if-ltz v13, :cond_a

    .line 223
    const-string v23, "android.permission.superuser.call_phone"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_a
    const/4 v13, -0x1

    .line 227
    sget-object v23, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 228
    .restart local v21       #permission:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 229
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v23, 0x1

    move v0, v13

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 234
    .end local v21           #permission:Ljava/lang/String;
    :cond_c
    if-ltz v13, :cond_d

    .line 235
    const-string v23, "android.permission.superuser.monitor_calls"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_d
    const/4 v13, -0x1

    .line 239
    sget-object v23, Lcom/miui/uac/Util;->MESSAGE_BEHAVIORS:Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 240
    .restart local v21       #permission:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 241
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v23, 0x1

    move v0, v13

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 246
    .end local v21           #permission:Ljava/lang/String;
    :cond_f
    if-ltz v13, :cond_10

    .line 247
    const-string v23, "android.permission.superuser.message"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_10
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    const-string v24, "android.permission.superuser.ROOT"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 251
    const-string v23, "android.permission.superuser.ROOT"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "android.permission.superuser.ROOT"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppListActivity;->mAppPermissionInfos:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v24, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPackageLabel:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/uac/AppListActivity$AppPermissionInfo;-><init>(Lcom/miui/uac/AppListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 256
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #info:Lcom/miui/uac/AppListActivity$AppPermissionInfo;
    .end local v22           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_12
    return-void
.end method

.method private parsePackageByPermission()Ljava/util/HashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/uac/AppListActivity$AppPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/uac/AppListActivity$AppPermissionInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/miui/uac/AppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 261
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    const/16 v19, 0x1000

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    .line 262
    .local v13, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v9, importantBehaviors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppListActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/app/IPackageGuardian;->getImportantBehaviors()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 270
    :goto_0
    const/4 v14, 0x0

    .line 271
    .local v14, packageLabel:Ljava/lang/String;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v17, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 273
    .local v10, info:Landroid/content/pm/PackageInfo;
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x81

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 277
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 278
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 279
    .local v18, requestPermissions:[Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 282
    move-object/from16 v5, v18

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v16, v5, v8

    .line 283
    .local v16, permission:Ljava/lang/String;
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 284
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1
    const-string v19, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 287
    const-string v16, "android.permission.READ_CALL_STATE"

    .line 288
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 289
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 266
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #info:Landroid/content/pm/PackageInfo;
    .end local v11           #len$:I
    .end local v14           #packageLabel:Ljava/lang/String;
    .end local v16           #permission:Ljava/lang/String;
    .end local v17           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18           #requestPermissions:[Ljava/lang/String;
    :catch_0
    move-exception v19

    move-object/from16 v6, v19

    .line 267
    .local v6, e:Landroid/os/RemoteException;
    const-string v19, "com.miui.uac.AppListActivity"

    const-string v20, "error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 295
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #info:Landroid/content/pm/PackageInfo;
    .restart local v11       #len$:I
    .restart local v14       #packageLabel:Ljava/lang/String;
    .restart local v17       #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18       #requestPermissions:[Ljava/lang/String;
    :cond_3
    sget-object v19, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 296
    .restart local v16       #permission:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 297
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 302
    .end local v16           #permission:Ljava/lang/String;
    :cond_5
    sget-object v19, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 303
    .restart local v16       #permission:Ljava/lang/String;
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 306
    .end local v16           #permission:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 307
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/miui/uac/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 308
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object v3, v14

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/uac/AppListActivity$AppPermissionInfo;-><init>(Lcom/miui/uac/AppListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 312
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/content/pm/PackageInfo;
    .end local v11           #len$:I
    .end local v18           #requestPermissions:[Ljava/lang/String;
    :cond_7
    return-object v12
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 115
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 116
    .local v1, enable:Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/uac/AppListActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IPackageGuardian;->enable(Z)V

    .line 117
    iget-object v2, p0, Lcom/miui/uac/AppListActivity;->mEnableAuthority:Landroid/widget/SlidingButton;

    invoke-virtual {v2, v1}, Landroid/widget/SlidingButton;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    return-void

    .line 115
    .end local v1           #enable:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 118
    .restart local v1       #enable:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "com.miui.uac.AppListActivity"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/miui/uac/AppListActivity;->setContentView(I)V

    .line 56
    const-string v2, "guardian"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/uac/AppListActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    .line 57
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/miui/uac/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingButton;

    iput-object v2, p0, Lcom/miui/uac/AppListActivity;->mEnableAuthority:Landroid/widget/SlidingButton;

    .line 59
    const/4 v1, 0x1

    .line 61
    .local v1, isEnable:Z
    :try_start_0
    iget-object v2, p0, Lcom/miui/uac/AppListActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    invoke-interface {v2}, Lcom/android/internal/app/IPackageGuardian;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/miui/uac/AppListActivity;->mEnableAuthority:Landroid/widget/SlidingButton;

    invoke-virtual {v2, v1}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 66
    iget-object v2, p0, Lcom/miui/uac/AppListActivity;->mEnableAuthority:Landroid/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/uac/AppListActivity;->mAuthorityListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    invoke-virtual {v2, v3}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 68
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/miui/uac/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/miui/uac/AppListActivity;->mAppList:Landroid/widget/ListView;

    .line 69
    iget-object v2, p0, Lcom/miui/uac/AppListActivity;->mAppList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/miui/uac/AppListActivity;->mAppList:Landroid/widget/ListView;

    const v3, 0x7f09000d

    invoke-virtual {p0, v3}, Lcom/miui/uac/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 71
    return-void

    .line 62
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "com.miui.uac.AppListActivity"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/miui/uac/AppListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

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
    .line 133
    iget-object v0, p0, Lcom/miui/uac/AppListActivity;->mAdapter:Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    .line 134
    iget-object v1, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    .line 135
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 136
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    :cond_0
    const-string v1, "package"

    iget-object v0, v0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    const-class v1, Lcom/miui/uac/AppDetailsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/miui/uac/AppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 83
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-class v1, Lcom/miui/uac/SuperuserPreference;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/miui/uac/AppListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f090013
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/miui/uac/AppListActivity;->initPermissionApps()V

    .line 127
    new-instance v0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;

    invoke-direct {v0, p0, p0}, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;-><init>(Lcom/miui/uac/AppListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/uac/AppListActivity;->mAdapter:Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;

    .line 128
    iget-object v0, p0, Lcom/miui/uac/AppListActivity;->mAppList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/uac/AppListActivity;->mAdapter:Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    return-void
.end method
