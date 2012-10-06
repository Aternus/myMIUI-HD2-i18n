.class public Lcom/miui/milk/control/cloud/WifiCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "WifiCloudController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/control/cloud/WifiCloudController$1;,
        Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    }
.end annotation


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v2, "\""

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fulfillWifiPassword(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Ljava/util/List;
    .locals 37
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/control/callback/AsyncTaskCallback;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v33, Ljava/io/File;

    sget-object v34, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    const-string v35, "wpa_supplicant.conf.tmp"

    invoke-direct/range {v33 .. v35}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v33, wifiTmp:Ljava/io/File;
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    .line 118
    .local v9, cmd:[Ljava/lang/String;
    const/16 v34, 0x0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "cp /data/misc/wifi/wpa_supplicant.conf "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v9, v34

    .line 119
    const/16 v34, 0x1

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "chmod 777 \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\' "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v9, v34

    .line 120
    invoke-static {v9}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)V

    .line 123
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    const-wide/16 v34, 0x1f4

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 125
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    const/4 v11, 0x0

    .line 132
    .local v11, content:[B
    if-eqz v33, :cond_1

    .line 133
    const/16 v19, 0x0

    .line 134
    .local v19, input:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 136
    .local v6, bout:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 137
    .end local v19           #input:Ljava/io/FileInputStream;
    .local v20, input:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v34, 0x200

    move-object v0, v7

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 138
    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .local v7, bout:Ljava/io/ByteArrayOutputStream;
    const/16 v34, 0x200

    :try_start_4
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object v8, v0

    .line 139
    .local v8, buf:[B
    const/16 v24, 0x0

    .line 140
    .local v24, n:I
    :goto_1
    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v24

    if-ltz v24, :cond_4

    .line 141
    const/16 v34, 0x0

    move-object v0, v7

    move-object v1, v8

    move/from16 v2, v34

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_1

    .line 147
    .end local v8           #buf:[B
    .end local v24           #n:I
    :catch_0
    move-exception v34

    move-object/from16 v13, v34

    move-object v6, v7

    .end local v7           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v19, v20

    .line 148
    .end local v20           #input:Ljava/io/FileInputStream;
    .local v13, e:Ljava/io/FileNotFoundException;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v34, "WifiCloudController"

    const-string v35, "cannot access to wpa_supplicant.conf.tmp"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    const/4 v11, 0x0

    .line 154
    if-eqz v19, :cond_0

    .line 156
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 160
    :cond_0
    :goto_3
    if-eqz v6, :cond_1

    .line 162
    :try_start_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 171
    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v19           #input:Ljava/io/FileInputStream;
    :cond_1
    :goto_4
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_2

    .line 172
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    .line 175
    :cond_2
    if-eqz v11, :cond_3

    move-object v0, v11

    array-length v0, v0

    move/from16 v34, v0

    if-nez v34, :cond_9

    .line 176
    :cond_3
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "EXCEPTION"

    aput-object v36, v34, v35

    const/16 v35, 0x1

    const-string v36, "2102"

    aput-object v36, v34, v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    .line 177
    const/16 v34, 0x0

    .line 278
    :goto_5
    return-object v34

    .line 125
    .end local v11           #content:[B
    :catchall_0
    move-exception v34

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v34
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    .line 126
    :catch_1
    move-exception v34

    goto/16 :goto_0

    .line 143
    .restart local v7       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #buf:[B
    .restart local v11       #content:[B
    .restart local v20       #input:Ljava/io/FileInputStream;
    .restart local v24       #n:I
    :cond_4
    const/4 v8, 0x0

    .line 145
    :try_start_a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    move-result-object v11

    .line 154
    if-eqz v20, :cond_5

    .line 156
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 160
    :cond_5
    :goto_6
    if-eqz v7, :cond_1

    .line 162
    :try_start_c
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 163
    :catch_2
    move-exception v34

    goto :goto_4

    .line 150
    .end local v7           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v8           #buf:[B
    .end local v20           #input:Ljava/io/FileInputStream;
    .end local v24           #n:I
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :catch_3
    move-exception v34

    move-object/from16 v13, v34

    .line 151
    .local v13, e:Ljava/io/IOException;
    :goto_7
    :try_start_d
    const-string v34, "WifiCloudController"

    const-string v35, "cannot access to wpa_supplicant.conf.tmp"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 152
    const/4 v11, 0x0

    .line 154
    if-eqz v19, :cond_6

    .line 156
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 160
    :cond_6
    :goto_8
    if-eqz v6, :cond_1

    .line 162
    :try_start_f
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_4

    .line 163
    :catch_4
    move-exception v34

    goto :goto_4

    .line 154
    .end local v13           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v34

    :goto_9
    if-eqz v19, :cond_7

    .line 156
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 160
    :cond_7
    :goto_a
    if-eqz v6, :cond_8

    .line 162
    :try_start_11
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 165
    :cond_8
    :goto_b
    throw v34

    .line 180
    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v19           #input:Ljava/io/FileInputStream;
    :cond_9
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v29, pwHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;>;"
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 183
    .local v12, contentStr:Ljava/lang/String;
    const-string v34, "network="

    move-object v0, v12

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 184
    .local v28, parts:[Ljava/lang/String;
    move-object/from16 v4, v28

    .local v4, arr$:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v15, v14

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v22           #len$:I
    .local v15, i$:I
    :goto_c
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    aget-object v27, v4, v15

    .line 185
    .local v27, part:Ljava/lang/String;
    if-eqz v27, :cond_13

    .line 186
    const/16 v34, 0x7b

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 187
    .local v16, index1:I
    const/16 v34, 0x7d

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 188
    .local v17, index2:I
    const/16 v34, -0x1

    move/from16 v0, v16

    move/from16 v1, v34

    if-le v0, v1, :cond_13

    const/16 v34, -0x1

    move/from16 v0, v17

    move/from16 v1, v34

    if-le v0, v1, :cond_13

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    .line 190
    add-int/lit8 v34, v16, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 191
    .local v18, innerStr:Ljava/lang/String;
    const/16 v31, 0x0

    .line 192
    .local v31, ssid:Ljava/lang/String;
    const-string v21, ""

    .line 193
    .local v21, keyMgmt:Ljava/lang/String;
    new-instance v30, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;-><init>(Lcom/miui/milk/control/cloud/WifiCloudController;Lcom/miui/milk/control/cloud/WifiCloudController$1;)V

    .line 195
    .local v30, pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    const/16 v34, 0x9

    const/16 v35, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    .line 196
    const/16 v34, 0xd

    const/16 v35, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    .line 198
    const-string v34, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 199
    .local v26, pairs:[Ljava/lang/String;
    move-object/from16 v5, v26

    .local v5, arr$:[Ljava/lang/String;
    move-object v0, v5

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/4 v14, 0x0

    .end local v15           #i$:I
    .restart local v14       #i$:I
    :goto_d
    move v0, v14

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    aget-object v25, v5, v14

    .line 200
    .local v25, pair:Ljava/lang/String;
    if-nez v25, :cond_b

    .line 199
    :cond_a
    :goto_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 204
    :cond_b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 205
    const-string v34, "ssid"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 208
    const-string v34, "WifiCloudController"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ssid : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 210
    :cond_c
    const-string v34, "key_mgmt"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 213
    const-string v34, "WifiCloudController"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "key_mgmt : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 215
    :cond_d
    const-string v34, "psk"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    .line 218
    const-string v34, "WifiCloudController"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "psk : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 220
    :cond_e
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v35, 0x0

    aget-object v34, v34, v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    .line 223
    const-string v34, "WifiCloudController"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "wep_key0 : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 225
    :cond_f
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v35, 0x1

    aget-object v34, v34, v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    .line 228
    const-string v34, "WifiCloudController"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "wep_key1 : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 230
    :cond_10
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v35, 0x2

    aget-object v34, v34, v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    .line 233
    const-string v34, "WifiCloudController"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "wep_key2 : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 235
    :cond_11
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v35, 0x3

    aget-object v34, v34, v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    .line 238
    const-string v34, "WifiCloudController"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "wep_key3 : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 241
    .end local v25           #pair:Ljava/lang/String;
    :cond_12
    if-eqz v31, :cond_13

    .line 242
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #index1:I
    .end local v17           #index2:I
    .end local v18           #innerStr:Ljava/lang/String;
    .end local v21           #keyMgmt:Ljava/lang/String;
    .end local v23           #len$:I
    .end local v26           #pairs:[Ljava/lang/String;
    .end local v30           #pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    .end local v31           #ssid:Ljava/lang/String;
    :cond_13
    add-int/lit8 v14, v15, 0x1

    .restart local v14       #i$:I
    move v15, v14

    .end local v14           #i$:I
    .restart local v15       #i$:I
    goto/16 :goto_c

    .line 249
    .end local v27           #part:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->forceGetConfiguredNetworks()Ljava/util/List;

    move-result-object v32

    .line 250
    .local v32, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v32, :cond_15

    .line 251
    const/16 v34, 0x0

    goto/16 :goto_5

    .line 254
    :cond_15
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v15           #i$:I
    .local v14, i$:Ljava/util/Iterator;
    :cond_16
    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 255
    .local v10, config:Landroid/net/wifi/WifiConfiguration;
    move-object v0, v10

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 256
    .restart local v31       #ssid:Ljava/lang/String;
    move-object v0, v10

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 258
    .restart local v21       #keyMgmt:Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;

    .line 259
    .restart local v30       #pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    if-eqz v30, :cond_16

    .line 260
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_17

    .line 261
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object v1, v10

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 263
    :cond_17
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_18

    .line 264
    move-object v0, v10

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    .line 266
    :cond_18
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_19

    .line 267
    move-object v0, v10

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    .line 269
    :cond_19
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1a

    .line 270
    move-object v0, v10

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    .line 272
    :cond_1a
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_16

    .line 273
    move-object v0, v10

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    goto/16 :goto_f

    .end local v10           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v21           #keyMgmt:Ljava/lang/String;
    .end local v30           #pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    .end local v31           #ssid:Ljava/lang/String;
    :cond_1b
    move-object/from16 v34, v32

    .line 278
    goto/16 :goto_5

    .line 157
    .end local v12           #contentStr:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v28           #parts:[Ljava/lang/String;
    .end local v29           #pwHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;>;"
    .end local v32           #wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v7       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #buf:[B
    .restart local v20       #input:Ljava/io/FileInputStream;
    .restart local v24       #n:I
    :catch_5
    move-exception v34

    goto/16 :goto_6

    .end local v7           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v8           #buf:[B
    .end local v20           #input:Ljava/io/FileInputStream;
    .end local v24           #n:I
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    .local v13, e:Ljava/io/FileNotFoundException;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :catch_6
    move-exception v34

    goto/16 :goto_3

    .line 163
    :catch_7
    move-exception v34

    goto/16 :goto_4

    .line 157
    .local v13, e:Ljava/io/IOException;
    :catch_8
    move-exception v34

    goto/16 :goto_8

    .end local v13           #e:Ljava/io/IOException;
    :catch_9
    move-exception v35

    goto/16 :goto_a

    .line 163
    :catch_a
    move-exception v35

    goto/16 :goto_b

    .line 154
    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v20       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v34

    move-object/from16 v19, v20

    .end local v20           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v7       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #input:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v34

    move-object v6, v7

    .end local v7           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v19, v20

    .end local v20           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 150
    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v20       #input:Ljava/io/FileInputStream;
    :catch_b
    move-exception v34

    move-object/from16 v13, v34

    move-object/from16 v19, v20

    .end local v20           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v7       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #input:Ljava/io/FileInputStream;
    :catch_c
    move-exception v34

    move-object/from16 v13, v34

    move-object v6, v7

    .end local v7           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v19, v20

    .end local v20           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 147
    :catch_d
    move-exception v34

    move-object/from16 v13, v34

    goto/16 :goto_2

    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v20       #input:Ljava/io/FileInputStream;
    :catch_e
    move-exception v34

    move-object/from16 v13, v34

    move-object/from16 v19, v20

    .end local v20           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 966
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 967
    :cond_0
    const/4 v0, 0x1

    .line 969
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 944
    array-length v1, p1

    .line 946
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 948
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 949
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 952
    :goto_1
    return v2

    .line 948
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 925
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 929
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 931
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 932
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 936
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 937
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 940
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parsePairValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pair"

    .prologue
    .line 290
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, pairValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method private prepareWifiConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .locals 20
    .parameter "networkConf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->newBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v16

    .line 493
    .local v16, wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 494
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setSsid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 495
    const-string v17, "WifiCloudController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ssid : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getSsid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 498
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setBssid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 500
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 501
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPsk(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 502
    const-string v17, "WifiCloudController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "psk : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getPsk()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 505
    const/4 v11, 0x0

    .local v11, k:I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    if-eqz v17, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 508
    if-nez v11, :cond_3

    .line 509
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey0(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 510
    const-string v17, "WifiCloudController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "web_key0 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey0()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 513
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey1(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 514
    const-string v17, "WifiCloudController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "web_key1 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey1()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_4
    const/16 v17, 0x2

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 517
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 518
    const-string v17, "WifiCloudController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "web_key2 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey2()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_5
    const/16 v17, 0x3

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 521
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey3(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 522
    const-string v17, "WifiCloudController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "web_key3 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey3()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 529
    .end local v11           #k:I
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepTxKeyIndex(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 530
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPriority(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 531
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setScanSsid(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 532
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->adhocSSID:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    :goto_2
    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setMode(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 534
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_8

    .line 537
    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setKeyMgmt(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 538
    const-string v17, "WifiCloudController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KeyMgmt : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getKeyMgmt()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_9

    .line 543
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setProto(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 545
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_a

    .line 548
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setAuthAlg(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 550
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_b

    .line 553
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPairwise(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 555
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_c

    .line 558
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setGroup(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 562
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object v7, v0

    .local v7, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v12, :cond_18

    aget-object v9, v7, v10

    .line 563
    .local v9, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v15

    .line 564
    .local v15, varName:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v14

    .line 565
    .local v14, value:Ljava/lang/String;
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_e

    .line 566
    move-object v13, v14

    .line 567
    .local v13, oriValue:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 568
    invoke-static {v14}, Lcom/miui/milk/control/cloud/WifiCloudController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 571
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 572
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setEap(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 562
    .end local v13           #oriValue:Ljava/lang/String;
    :cond_e
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 531
    .end local v2           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .end local v3           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v4           #allowedKeyManagementString:Ljava/lang/String;
    .end local v5           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v6           #allowedProtocolsString:Ljava/lang/String;
    .end local v7           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v9           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #varName:Ljava/lang/String;
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 532
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 574
    .restart local v2       #allowedAuthAlgorithmsString:Ljava/lang/String;
    .restart local v3       #allowedGroupCiphersString:Ljava/lang/String;
    .restart local v4       #allowedKeyManagementString:Ljava/lang/String;
    .restart local v5       #allowedPairwiseCiphersString:Ljava/lang/String;
    .restart local v6       #allowedProtocolsString:Ljava/lang/String;
    .restart local v7       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v9       #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #oriValue:Ljava/lang/String;
    .restart local v14       #value:Ljava/lang/String;
    .restart local v15       #varName:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 575
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPhase2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_4

    .line 577
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 578
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_4

    .line 580
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 581
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setAnonymousIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_4

    .line 583
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 584
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPassword(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_4

    .line 586
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 587
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setClientCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 590
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->readLinuxFile(Ljava/lang/String;)[B

    move-result-object v8

    .line 591
    .local v8, content:[B
    if-eqz v8, :cond_e

    .line 592
    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setClientCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_4

    .line 596
    .end local v8           #content:[B
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 597
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPrivateKey(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 600
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->readLinuxFile(Ljava/lang/String;)[B

    move-result-object v8

    .line 601
    .restart local v8       #content:[B
    if-eqz v8, :cond_e

    .line 602
    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPrivateKeyFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto/16 :goto_4

    .line 606
    .end local v8           #content:[B
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 607
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setCaCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 610
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->readLinuxFile(Ljava/lang/String;)[B

    move-result-object v8

    .line 611
    .restart local v8       #content:[B
    if-eqz v8, :cond_e

    .line 612
    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setCaCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto/16 :goto_4

    .line 620
    .end local v8           #content:[B
    .end local v9           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v13           #oriValue:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #varName:Ljava/lang/String;
    :cond_18
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->build()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v17

    return-object v17
.end method

.method private readLinuxFile(Ljava/lang/String;)[B
    .locals 14
    .parameter "filepath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string v11, "cannot access to "

    const-string v11, "WifiCloudController"

    .line 624
    if-nez p1, :cond_0

    move-object v11, v12

    .line 698
    :goto_0
    return-object v11

    .line 627
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v12

    .line 629
    goto :goto_0

    .line 631
    :cond_1
    const/16 v11, 0x2f

    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 632
    .local v6, filename:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    move-object v11, v12

    .line 633
    goto :goto_0

    .line 636
    :cond_2
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-direct {v10, v11, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 639
    .local v10, tmpFile:Ljava/io/File;
    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/String;

    .line 640
    .local v3, cmd:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v13

    .line 641
    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 777 \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 642
    invoke-static {v3}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)V

    .line 645
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 646
    const-wide/16 v11, 0x1f4

    :try_start_1
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 647
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 653
    :goto_1
    const/4 v4, 0x0

    .line 654
    .local v4, content:[B
    if-eqz v10, :cond_7

    .line 655
    const/4 v7, 0x0

    .line 656
    .local v7, input:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 658
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 659
    .end local v7           #input:Ljava/io/FileInputStream;
    .local v8, input:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x200

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 660
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x200

    :try_start_4
    new-array v2, v11, [B

    .line 661
    .local v2, buf:[B
    const/4 v9, 0x0

    .line 662
    .local v9, n:I
    :goto_2
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_5

    .line 663
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_2

    .line 669
    .end local v2           #buf:[B
    .end local v9           #n:I
    :catch_0
    move-exception v11

    move-object v5, v11

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 670
    .end local v8           #input:Ljava/io/FileInputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v11, "WifiCloudController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    const/4 v4, 0x0

    .line 672
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 678
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v7, :cond_3

    .line 680
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 684
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    .line 686
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 689
    :cond_4
    :goto_6
    throw v11

    .line 647
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v4           #content:[B
    .end local v7           #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    .line 648
    :catch_1
    move-exception v11

    goto :goto_1

    .line 665
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v4       #content:[B
    .restart local v8       #input:Ljava/io/FileInputStream;
    .restart local v9       #n:I
    :cond_5
    const/4 v2, 0x0

    .line 667
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-result-object v4

    .line 678
    if-eqz v8, :cond_6

    .line 680
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 684
    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 686
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 694
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v8           #input:Ljava/io/FileInputStream;
    .end local v9           #n:I
    :cond_7
    :goto_8
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 695
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_8
    move-object v11, v4

    .line 698
    goto/16 :goto_0

    .line 673
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catch_2
    move-exception v11

    move-object v5, v11

    .line 674
    .local v5, e:Ljava/io/IOException;
    :goto_9
    :try_start_d
    const-string v11, "WifiCloudController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    const/4 v4, 0x0

    .line 676
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 681
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v8       #input:Ljava/io/FileInputStream;
    .restart local v9       #n:I
    :catch_3
    move-exception v11

    goto :goto_7

    .line 687
    :catch_4
    move-exception v11

    goto :goto_8

    .line 681
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v8           #input:Ljava/io/FileInputStream;
    .end local v9           #n:I
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v12

    goto :goto_5

    .line 687
    :catch_6
    move-exception v12

    goto :goto_6

    .line 678
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .line 673
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catch_7
    move-exception v11

    move-object v5, v11

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catch_8
    move-exception v11

    move-object v5, v11

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .line 669
    :catch_9
    move-exception v11

    move-object v5, v11

    goto/16 :goto_3

    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catch_a
    move-exception v11

    move-object v5, v11

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private readWifiConfiguration(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v6, " "

    const-string v8, "WifiCloudController"

    .line 766
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 767
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 768
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 770
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 773
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getBssid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 774
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPriority()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 777
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getScanSsid()I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v9

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 778
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getMode()I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v9

    :goto_1
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->adhocSSID:Z

    .line 780
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepTxKeyIndex()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 781
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 782
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey0()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 783
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wep_key0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 786
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey1()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 787
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wep_key1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 790
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey2()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 791
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wep_key2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 794
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey3()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 795
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wep_key3 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPsk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 798
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPsk()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 799
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getProto()Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 805
    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 806
    array-length v2, v1

    move v3, v7

    :goto_2
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 807
    sget-object v5, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 809
    if-ltz v4, :cond_7

    .line 810
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 806
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move v1, v7

    .line 777
    goto/16 :goto_0

    :cond_9
    move v1, v7

    .line 778
    goto/16 :goto_1

    .line 815
    :cond_a
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyMgmt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getKeyMgmt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getKeyMgmt()Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 818
    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 819
    array-length v2, v1

    move v3, v7

    :goto_3
    if-ge v3, v2, :cond_c

    aget-object v4, v1, v3

    .line 820
    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 822
    if-ltz v4, :cond_b

    .line 823
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 819
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 828
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAuthAlg()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 830
    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 831
    array-length v2, v1

    move v3, v7

    :goto_4
    if-ge v3, v2, :cond_e

    aget-object v4, v1, v3

    .line 832
    sget-object v5, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 834
    if-ltz v4, :cond_d

    .line 835
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 831
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 840
    :cond_e
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPairwise()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 842
    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 843
    array-length v2, v1

    move v3, v7

    :goto_5
    if-ge v3, v2, :cond_10

    aget-object v4, v1, v3

    .line 844
    sget-object v5, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 846
    if-ltz v4, :cond_f

    .line 847
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 843
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 852
    :cond_10
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 853
    invoke-static {v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 854
    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 855
    array-length v3, v2

    move v4, v7

    :goto_6
    if-ge v4, v3, :cond_12

    aget-object v5, v2, v4

    .line 856
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 858
    if-ltz v5, :cond_11

    .line 859
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    .line 855
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 865
    :cond_12
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v3, v2

    move-object v4, v1

    move v1, v7

    :goto_7
    if-ge v1, v3, :cond_1c

    aget-object v5, v2, v1

    .line 866
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_15

    .line 867
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getEap()Ljava/lang/String;

    move-result-object v4

    .line 891
    :cond_13
    :goto_8
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v5, v6, :cond_14

    .line 892
    invoke-static {v4}, Lcom/miui/milk/control/cloud/WifiCloudController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 894
    :cond_14
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 869
    :cond_15
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_16

    .line 870
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPhase2()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 872
    :cond_16
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_17

    .line 873
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 875
    :cond_17
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_18

    .line 876
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 878
    :cond_18
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_19

    .line 879
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 881
    :cond_19
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_1a

    .line 882
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCert()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 884
    :cond_1a
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_1b

    .line 885
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 887
    :cond_1b
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v5, v6, :cond_13

    .line 888
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCert()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 897
    :cond_1c
    iget-object v1, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 899
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    .line 900
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 901
    :cond_1f
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 902
    :cond_21
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->size()I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_1d

    move v2, v7

    move v3, v9

    .line 904
    :goto_9
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_23

    .line 905
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eq v4, v5, :cond_22

    move v3, v7

    .line 904
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 909
    :cond_23
    if-eqz v3, :cond_1d

    .line 910
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 918
    :cond_24
    const-string v1, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-object v0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 960
    if-nez p0, :cond_0

    move-object v0, v3

    .line 962
    :goto_0
    return-object v0

    .line 961
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 962
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveWifiPerBatch(Ljava/util/List;Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 20
    .parameter
    .parameter "callback"
    .parameter "start"
    .parameter "totalCount"
    .parameter "sharedPref"
    .parameter "batchCount"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Lcom/miui/milk/control/callback/AsyncTaskCallback;",
            "II",
            "Landroid/content/SharedPreferences;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    .local p1, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 300
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->newBuilder()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v13

    .line 301
    .local v13, wifi:Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    const/4 v15, 0x0

    .line 304
    .local v15, wifiCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 305
    move v0, v5

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    move/from16 v0, p3

    add-int/lit16 v0, v0, 0xfa

    move/from16 v16, v0

    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 306
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 307
    .local v6, networkConf:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->prepareWifiConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v14

    .line 308
    .local v14, wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    invoke-virtual {v14}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->toBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v16

    sget-object v17, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual/range {v16 .. v17}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->build()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v14

    .line 309
    invoke-virtual {v13, v14}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->addWifiConfig(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    .line 310
    add-int/lit8 v15, v15, 0x1

    .line 311
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int v19, p3, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    mul-int/lit8 v18, p6, 0xa

    add-int v18, v18, p3

    add-int v18, v18, v15

    mul-int/lit8 v18, v18, 0x64

    div-int v18, v18, p7

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "100"

    aput-object v18, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_1

    .line 316
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v6           #networkConf:Landroid/net/wifi/WifiConfiguration;
    .end local v14           #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    :cond_0
    :goto_1
    return-void

    .line 304
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 321
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 322
    .local v4, e:Ljava/lang/Exception;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "EXCEPTION"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "2102"

    aput-object v18, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto :goto_1

    .line 326
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deviceId : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IMSI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v13}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->getWifiConfigList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_3

    .line 330
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Export WifiConfig Counts : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 334
    :cond_3
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v10

    .line 335
    .local v10, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v10, v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setWifi(Lcom/miui/milk/model/WifiProtos$Wifi$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 338
    if-eqz v10, :cond_0

    .line 339
    const/4 v8, 0x0

    .line 341
    .local v8, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v7

    .line 343
    .local v7, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int v19, p3, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    mul-int/lit8 v18, p6, 0xa

    add-int v18, v18, p3

    add-int v18, v18, v15

    mul-int/lit8 v18, v18, 0x64

    div-int v18, v18, p7

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "100"

    aput-object v18, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

    .line 347
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 379
    .end local v7           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v16

    move-object/from16 v4, v16

    .line 380
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "WifiCloudController"

    const-string v17, "Cannot send wifi "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 382
    throw v4

    .line 351
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 352
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Export WifiConfig Counts : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 355
    if-eqz v8, :cond_6

    .line 357
    const-string v16, "M_WATERMARK"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 358
    .local v12, waterMarkHeader:Lorg/apache/http/Header;
    const/4 v11, 0x0

    .line 359
    .local v11, waterMark:Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 360
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 363
    :cond_5
    if-eqz v11, :cond_6

    .line 364
    invoke-interface/range {p5 .. p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 365
    .local v9, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v16, "watermark_wifi"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get waterMark : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v9           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #waterMark:Ljava/lang/String;
    .end local v12           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_6
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int v19, p3, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    mul-int/lit8 v18, p6, 0xa

    add-int v18, v18, p3

    add-int v18, v18, v15

    add-int/lit8 v18, v18, 0xa

    mul-int/lit8 v18, v18, 0x64

    div-int v18, v18, p7

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "100"

    aput-object v18, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_0

    .line 376
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method private waitWifiEnabled()V
    .locals 3

    .prologue
    .line 47
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 51
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 52
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 57
    :cond_0
    return-void
.end method

.method private writeLinuxFile(Ljava/lang/String;[B)V
    .locals 9
    .parameter "filepath"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v6, "cannot access to "

    const-string v6, "WifiCloudController"

    .line 702
    if-nez p1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 706
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 709
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 714
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    .local v5, tmpFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 716
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 719
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_1
    if-eqz p2, :cond_3

    .line 724
    const/4 v3, 0x0

    .line 726
    .local v3, output:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 727
    .end local v3           #output:Ljava/io/FileOutputStream;
    .local v4, output:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 728
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 736
    if-eqz v4, :cond_3

    .line 738
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 746
    .end local v4           #output:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    .line 747
    .local v0, cmd:[Ljava/lang/String;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 748
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)V

    .line 751
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 752
    const-wide/16 v6, 0x1f4

    :try_start_5
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 753
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 759
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 760
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 720
    .end local v0           #cmd:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 721
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 729
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 730
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v6, "WifiCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot access to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 736
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_4

    .line 738
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 740
    :cond_4
    :goto_6
    throw v6

    .line 732
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 733
    .local v1, e:Ljava/io/IOException;
    :goto_7
    :try_start_8
    const-string v6, "WifiCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot access to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 753
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v0       #cmd:[Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v6
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3

    .line 754
    :catch_3
    move-exception v6

    goto :goto_3

    .line 739
    .end local v0           #cmd:[Ljava/lang/String;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    goto/16 :goto_2

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    goto :goto_6

    .line 736
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 732
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 729
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->forceGetConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 66
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearPrepared()V
    .locals 0

    .prologue
    .line 975
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 25
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 389
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 391
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/WifiCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->waitWifiEnabled()V

    .line 398
    const-string v21, "WifiCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deviceId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v21, "WifiCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMSI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v10, 0x0

    .line 402
    .local v10, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v9

    .line 404
    .local v9, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v13

    .line 405
    .local v13, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->newBuilder()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->build()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v21

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setWifi(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 408
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 409
    if-eqz v10, :cond_2

    .line 411
    const-string v21, "M_WATERMARK"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 412
    .local v16, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v17, 0x0

    .line 413
    .local v17, waterMarkNew:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 414
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 417
    :cond_0
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 418
    .local v7, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v14

    .line 420
    .local v14, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v14}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getWifi()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v18

    .line 421
    .local v18, wifi:Lcom/miui/milk/model/WifiProtos$Wifi;
    if-eqz v18, :cond_a

    .line 422
    const/16 v20, 0x0

    .line 423
    .local v20, wifiCount:I
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$Wifi;->getWifiConfigCount()I

    move-result v15

    .line 424
    .local v15, totalCount:I
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$Wifi;->getWifiConfigList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/milk/model/WifiProtos$WifiConfig;

    .line 426
    .local v19, wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->readWifiConfiguration(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 427
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v11, -0x1

    .line 428
    .local v11, ret:I
    move-object v0, v4

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v21, v0

    if-gez v21, :cond_3

    .line 429
    const-string v21, "WifiCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "add network : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v4

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v11

    .line 436
    :goto_0
    const/16 v21, -0x1

    move v0, v11

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 438
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "WifiManager Error: addNetwork return -1"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #ret:I
    .end local v13           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v14           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v15           #totalCount:I
    .end local v16           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v17           #waterMarkNew:Ljava/lang/String;
    .end local v18           #wifi:Lcom/miui/milk/model/WifiProtos$Wifi;
    .end local v19           #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .end local v20           #wifiCount:I
    :catch_0
    move-exception v21

    move-object/from16 v5, v21

    .line 485
    .local v5, e:Ljava/lang/Exception;
    const-string v21, "WifiCloudController"

    const-string v22, "Cannot read wifi "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 488
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-void

    .line 392
    :catch_1
    move-exception v6

    .line 393
    .local v6, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 432
    .end local v6           #e1:Ljava/lang/Exception;
    .restart local v4       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #ret:I
    .restart local v13       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v14       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v15       #totalCount:I
    .restart local v16       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v17       #waterMarkNew:Ljava/lang/String;
    .restart local v18       #wifi:Lcom/miui/milk/model/WifiProtos$Wifi;
    .restart local v19       #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .restart local v20       #wifiCount:I
    :cond_3
    :try_start_2
    const-string v21, "WifiCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "update network : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v4

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v11

    goto :goto_0

    .line 441
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 442
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCert()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->writeLinuxFile(Ljava/lang/String;[B)V

    .line 445
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKeyFile()Lcom/google/protobuf/ByteString;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 446
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKeyFile()Lcom/google/protobuf/ByteString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->writeLinuxFile(Ljava/lang/String;[B)V

    .line 449
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 450
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCert()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->writeLinuxFile(Ljava/lang/String;[B)V

    .line 452
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move v1, v11

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 456
    add-int/lit8 v20, v20, 0x1

    .line 457
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, v20, 0x64

    div-int v23, v23, v15

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 461
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 465
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v11           #ret:I
    .end local v19           #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    :cond_8
    const-string v21, "WifiCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Import WifiConfig Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x64

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_9

    .line 467
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 470
    :cond_9
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "SUCCESS"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_a

    .line 471
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 476
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v15           #totalCount:I
    .end local v20           #wifiCount:I
    :cond_a
    if-eqz v17, :cond_2

    .line 477
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 478
    .local v12, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "restore_watermark_wifi"

    move-object v0, v12

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    const-string v21, "WifiCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "new waterMark : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 10
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/WifiCloudController;->fulfillWifiPassword(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_1

    .line 110
    .end local v1           #wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v1       #wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 81
    .local v4, totalCount:I
    div-int/lit16 v8, v4, 0xfa

    .line 82
    .local v8, batches:I
    mul-int/lit16 v0, v8, 0xfa

    if-le v4, v0, :cond_2

    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 86
    :cond_2
    mul-int/lit8 v0, v8, 0xa

    add-int v7, v4, v0

    .line 87
    .local v7, totalTime:I
    const/4 v6, 0x0

    .line 89
    .local v6, batchCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/control/cloud/WifiCloudController;->saveWifiPerBatch(Ljava/util/List;Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit16 v3, v3, 0xfa

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 94
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WifiCloudController"

    const-string v1, "Cannot save wifi batch "

    .end local v1           #wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v1       #wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v1           #wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    .end local v3           #i:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "100"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_0

    .line 105
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_0
.end method
