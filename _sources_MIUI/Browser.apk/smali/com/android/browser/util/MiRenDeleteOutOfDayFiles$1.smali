.class final Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;
.super Landroid/os/AsyncTask;
.source "MiRenDeleteOutOfDayFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/util/MiRenDeleteOutOfDayFiles;->deleteOutOfDayFiles(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.field final synthetic val$dirPath:Ljava/lang/String;

.field final synthetic val$timeInterval:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;->val$timeInterval:I

    iput-object p2, p0, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;->val$dirPath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget v9, p0, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;->val$timeInterval:I

    mul-int/lit8 v9, v9, 0x18

    mul-int/lit16 v9, v9, 0xe10

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    sub-long v5, v7, v9

    .line 23
    .local v5, time:J
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;->val$dirPath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, fileNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_1

    .line 27
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;->val$dirPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v4, readfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_0

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #fileNames:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #readfile:Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 33
    .local v1, e:Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_1
    const/4 v7, 0x0

    return-object v7
.end method
