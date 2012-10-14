.class public Lcom/miui/milk/adapter/calls/CalllogToCalllog2NoSync;
.super Ljava/lang/Object;
.source "CalllogToCalllog2NoSync.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromProtobuf(Ljava/io/File;)Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .locals 9
    .parameter "importFile"

    .prologue
    .line 17
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 18
    .local v6, input:Ljava/io/FileInputStream;
    invoke-static {v6}, Lcom/miui/milk/model/CalllogProtos$Calllog;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/CalllogProtos$Calllog;

    move-result-object v2

    .line 19
    .local v2, calllog:Lcom/miui/milk/model/CalllogProtos$Calllog;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 21
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v3

    .line 23
    .local v3, calllog2:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    invoke-virtual {v2}, Lcom/miui/milk/model/CalllogProtos$Calllog;->getCallList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/CalllogProtos$Call;

    .line 24
    .local v0, call:Lcom/miui/milk/model/CalllogProtos$Call;
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v1

    .line 25
    .local v1, call2:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getLuid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getLuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNumber(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDate(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 32
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getDuration()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDuration(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 33
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getType()Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->getNumber()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setType(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 34
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->getNew()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNew(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 36
    invoke-virtual {v3, v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->addCall(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v0           #call:Lcom/miui/milk/model/CalllogProtos$Call;
    .end local v1           #call2:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .end local v2           #calllog:Lcom/miui/milk/model/CalllogProtos$Calllog;
    .end local v3           #calllog2:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #input:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 41
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    const/4 v7, 0x0

    .end local v4           #e:Ljava/io/IOException;
    :goto_1
    return-object v7

    .line 39
    .restart local v2       #calllog:Lcom/miui/milk/model/CalllogProtos$Calllog;
    .restart local v3       #calllog2:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Calllog;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1
.end method
