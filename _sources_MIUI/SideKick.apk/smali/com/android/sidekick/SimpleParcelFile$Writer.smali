.class public Lcom/android/sidekick/SimpleParcelFile$Writer;
.super Ljava/lang/Object;
.source "SimpleParcelFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/SimpleParcelFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Writer"
.end annotation


# instance fields
.field mWriter:Ljava/io/BufferedWriter;

.field final synthetic this$0:Lcom/android/sidekick/SimpleParcelFile;


# direct methods
.method private constructor <init>(Lcom/android/sidekick/SimpleParcelFile;Ljava/io/BufferedWriter;)V
    .locals 0
    .parameter
    .parameter "writer"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->this$0:Lcom/android/sidekick/SimpleParcelFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sidekick/SimpleParcelFile;Ljava/io/BufferedWriter;Lcom/android/sidekick/SimpleParcelFile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/sidekick/SimpleParcelFile$Writer;-><init>(Lcom/android/sidekick/SimpleParcelFile;Ljava/io/BufferedWriter;)V

    return-void
.end method

.method private putNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 139
    return-void
.end method

.method private putSize(I)V
    .locals 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 134
    return-void
.end method

.method private putType(I)V
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 129
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 174
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 175
    return-void
.end method

.method public putInteger(I)V
    .locals 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putType(I)V

    .line 156
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 158
    return-void
.end method

.method public putLong(J)V
    .locals 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putType(I)V

    .line 162
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 164
    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putNull()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putType(I)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 147
    .local v0, size:I
    invoke-direct {p0, v0}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putSize(I)V

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/sidekick/SimpleParcelFile$Writer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
