.class LW;
.super Ljava/lang/Object;


# instance fields
.field final a:LB;

.field private b:Ljava/io/DataInputStream;

.field private c:LG;

.field private d:Ljava/lang/Exception;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Vector;

.field private i:Ljava/util/Vector;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private synthetic u:LaJ;


# direct methods
.method public constructor <init>(LaJ;LB;)V
    .locals 2

    iput-object p1, p0, LW;->u:LaJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LW;->e:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LW;->h:Ljava/util/Vector;

    const/4 v0, 0x1

    iput v0, p0, LW;->k:I

    iput-object p2, p0, LW;->a:LB;

    :try_start_0
    invoke-virtual {p2}, LB;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LW;->f:Ljava/lang/String;

    iget-object v0, p0, LW;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, LaJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LW;->g:Ljava/lang/String;

    invoke-virtual {p2}, LB;->g()I

    move-result v0

    iput v0, p0, LW;->j:I

    invoke-virtual {p2}, LB;->f()I

    move-result v0

    iput v0, p0, LW;->n:I

    invoke-virtual {p2}, LB;->b_()I

    move-result v0

    iput v0, p0, LW;->m:I

    invoke-virtual {p2}, LB;->h()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, LB;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, LW;->m:I

    invoke-static {p1}, LaJ;->a(LaJ;)LaS;

    move-result-object v1

    invoke-virtual {v1}, LaS;->b_()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LW;->m:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, LW;->d:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v0, p0, LW;->d:Ljava/lang/Exception;

    goto :goto_0
.end method

.method private a(Lao;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v5, ")"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.processResponse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lao;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowResumeService.Control.processResponse(): exception != null"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lao;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.processResponse(): statusCode == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LaJ;->c(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "WindowResumeService.Control.processResponse(): default"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.processResponse(): statusCode == OK ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LaJ;->c(Ljava/lang/String;)V

    iget-object v1, p0, LW;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "WindowResumeService.Control.processResponse(): serverTicket == null"

    invoke-static {v1}, LaJ;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lao;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LW;->g:Ljava/lang/String;

    iget-object v1, p0, LW;->u:LaJ;

    iget-object v2, p0, LW;->f:Ljava/lang/String;

    iget-object v3, p0, LW;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LaJ;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lao;->f()I

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount == 0"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lao;->i()Ljava/io/DataInputStream;

    move-result-object v0

    new-instance v1, LD;

    invoke-direct {v1, v0}, LD;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v1}, LD;->b()LG;

    move-result-object v0

    iput-object v0, p0, LW;->c:LG;

    const/4 v0, 0x1

    iput-boolean v0, p0, LW;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, LW;->d:Ljava/lang/Exception;

    goto :goto_1

    :cond_3
    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount > 0"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->i:Ljava/util/Vector;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LW;->i:Ljava/util/Vector;

    invoke-virtual {p1}, Lao;->g()[I

    move-result-object v0

    invoke-virtual {p1}, Lao;->h()[I

    move-result-object v2

    move v3, v4

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, LW;->i:Ljava/util/Vector;

    new-instance v5, Lay;

    iget-object v6, p0, LW;->u:LaJ;

    aget v7, v0, v3

    aget v8, v2, v3

    invoke-direct {v5, v6, v7, v8}, Lay;-><init>(LaJ;II)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_2
    const-string v0, "WindowResumeServiceControl.processResponse(): statusCode == CONTINUE (2)"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iput-boolean v9, p0, LW;->e:Z

    move v0, v9

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == BAD TICKET (-4)"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->u:LaJ;

    iget-object v1, p0, LW;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, LaJ;->b(Ljava/lang/String;)V

    iput-object v3, p0, LW;->g:Ljava/lang/String;

    iput-object v3, p0, LW;->i:Ljava/util/Vector;

    move v0, v9

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == CANNOT_EXTEND (-5)"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(II)[B
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.getRequestPayload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget v0, p0, LW;->l:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LW;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, LW;->b:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, LW;->b:Ljava/io/DataInputStream;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, LW;->l:I

    iget-object v0, p0, LW;->a:LB;

    invoke-virtual {v0}, LB;->h()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LW;->a:LB;

    invoke-virtual {v0}, LB;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Lav;

    iget-object v2, p0, LW;->u:LaJ;

    invoke-static {v2}, LaJ;->a(LaJ;)LaS;

    move-result-object v2

    invoke-virtual {v2}, LaS;->c_()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, LW;->a:LB;

    invoke-virtual {v3}, LB;->c_()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lav;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, LW;->b:Ljava/io/DataInputStream;

    :cond_2
    :goto_0
    iget v0, p0, LW;->l:I

    if-le p1, v0, :cond_4

    iget v0, p0, LW;->l:I

    iget-object v1, p0, LW;->b:Ljava/io/DataInputStream;

    iget v2, p0, LW;->l:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LW;->l:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, LW;->a:LB;

    invoke-virtual {v1}, LB;->c_()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, LW;->b:Ljava/io/DataInputStream;

    goto :goto_0

    :cond_4
    new-array v0, p2, [B

    iget-object v1, p0, LW;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget v1, p0, LW;->l:I

    add-int/2addr v1, p2

    iput v1, p0, LW;->l:I

    return-object v0
.end method

.method private a(I)[LZ;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string v4, "Length"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.createRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "WindowResumeService.Control.createRequest(): serverTicket == null"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, LW;->m:I

    iget-object v1, p0, LW;->u:LaJ;

    invoke-static {v1}, LaJ;->b(LaJ;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, LW;->b()LZ;

    move-result-object v1

    const-string v2, "Length"

    iget v2, p0, LW;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, LZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, LW;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v6, v0}, LZ;->a(I[B)V

    iget-object v0, p0, LW;->a:LB;

    invoke-virtual {v0}, LB;->h()I

    move-result v0

    invoke-virtual {v1, v0}, LZ;->c(I)V

    new-array v0, v3, [LZ;

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LW;->i:Ljava/util/Vector;

    if-nez v0, :cond_1

    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector == null"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, LW;->b()LZ;

    move-result-object v0

    iget-object v1, p0, LW;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, LZ;->a(Ljava/lang/String;)V

    const-string v1, "Length"

    iget v1, p0, LW;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, LZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v2}, LZ;->a(I[B)V

    iget-object v1, p0, LW;->a:LB;

    invoke-virtual {v1}, LB;->h()I

    move-result v1

    invoke-virtual {v0, v1}, LZ;->c(I)V

    new-array v1, v3, [LZ;

    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector != null"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    new-array v1, p1, [LZ;

    move v2, v6

    :goto_1
    if-ge v2, p1, :cond_3

    iget-object v0, p0, LW;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, LW;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay;

    iget v3, v0, Lay;->a:I

    iget v4, v0, Lay;->b:I

    iget-object v5, p0, LW;->u:LaJ;

    invoke-static {v5}, LaJ;->b(LaJ;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lay;->b:I

    if-le v5, v4, :cond_2

    iget v5, v0, Lay;->a:I

    add-int/2addr v5, v4

    iput v5, v0, Lay;->a:I

    iget v5, v0, Lay;->b:I

    sub-int/2addr v5, v4

    iput v5, v0, Lay;->b:I

    :goto_2
    invoke-direct {p0}, LW;->b()LZ;

    move-result-object v0

    iget-object v5, p0, LW;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, LZ;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, LW;->a(II)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LZ;->a(I[B)V

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, LW;->i:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private b()LZ;
    .locals 3

    new-instance v0, LZ;

    invoke-direct {v0}, LZ;-><init>()V

    new-instance v1, Lai;

    iget-object v2, p0, LW;->u:LaJ;

    invoke-direct {v1, v2}, Lai;-><init>(LaJ;)V

    invoke-virtual {v0, v1}, LZ;->a(Lar;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LZ;->d(I)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "WindowResumeService.Control.run()"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.run(): requestVector.size() == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.run(): i == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ;

    invoke-virtual {v0}, LZ;->d()Lao;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, LW;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LW;->p:I

    invoke-direct {p0, v2}, LW;->a(Lao;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p0, LW;->k:I

    iget v3, p0, LW;->j:I

    if-ge v0, v3, :cond_0

    iget v0, p0, LW;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LW;->k:I

    const/4 v0, 0x0

    iput v0, p0, LW;->o:I

    :cond_0
    iget-object v0, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    invoke-virtual {v2}, Lao;->a()V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, p0, LW;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LW;->o:I

    iget v3, p0, LW;->o:I

    iget v4, p0, LW;->n:I

    if-ge v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LZ;->a(Lao;)V

    iget-object v3, p0, LW;->u:LaJ;

    invoke-static {v3}, LaJ;->c(LaJ;)Ln;

    move-result-object v3

    invoke-virtual {v3, v0}, Ln;->a(LaE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lao;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lao;->c()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, LW;->d:Ljava/lang/Exception;

    :goto_2
    iget-object v0, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Lba;

    invoke-virtual {v2}, Lao;->d()I

    move-result v3

    invoke-direct {v0, v3}, Lba;-><init>(I)V

    iput-object v0, p0, LW;->d:Ljava/lang/Exception;

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "WindowResumeService.Control.updateProgress()"

    invoke-static {v2}, LaJ;->c(Ljava/lang/String;)V

    iget-wide v2, p0, LW;->q:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget-wide v3, p0, LW;->q:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_6

    iput-wide v0, p0, LW;->q:J

    move v2, v8

    :cond_6
    const/16 v3, 0x64

    if-lt v2, v3, :cond_9

    iget v3, p0, LW;->p:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_9

    iget v3, p0, LW;->l:I

    iget v4, p0, LW;->s:I

    if-le v3, v4, :cond_8

    iget v3, p0, LW;->l:I

    iget v4, p0, LW;->s:I

    sub-int/2addr v3, v4

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    mul-int/lit16 v3, v3, 0x3e8

    div-int v2, v3, v2

    iget v3, p0, LW;->t:I

    iget v4, p0, LW;->t:I

    sub-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): bandwidthEstimate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LaJ;->c(Ljava/lang/String;)V

    iput v2, p0, LW;->t:I

    iget v2, p0, LW;->t:I

    int-to-long v2, v2

    iget v4, p0, LW;->m:I

    iget v5, p0, LW;->l:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v6, v2, v6

    if-nez v6, :cond_c

    const-wide/16 v2, -0x1

    :goto_3
    iput-wide v2, p0, LW;->r:J

    :cond_8
    iget v2, p0, LW;->l:I

    iput v2, p0, LW;->s:I

    iput-wide v0, p0, LW;->q:J

    :cond_9
    iget v0, p0, LW;->p:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_a

    new-instance v6, Lac;

    iget-object v0, p0, LW;->u:LaJ;

    invoke-static {v0}, LaJ;->f(LaJ;)Lbg;

    move-result-object v7

    new-instance v0, LaY;

    iget-object v1, p0, LW;->a:LB;

    iget v2, p0, LW;->l:I

    int-to-long v2, v2

    iget-wide v4, p0, LW;->r:J

    invoke-direct/range {v0 .. v5}, LaY;-><init>(LB;JJ)V

    invoke-direct {v6, v7, v0}, Lac;-><init>(Lbg;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Lac;->d()V

    :cond_a
    iget-object v0, p0, LW;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_d

    const-string v0, "WindowResumeService.Control.run(): exception != null"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->u:LaJ;

    invoke-static {v0}, LaJ;->d(LaJ;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, LW;->u:LaJ;

    invoke-static {v1}, LaJ;->e(LaJ;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Lac;

    iget-object v1, p0, LW;->u:LaJ;

    invoke-static {v1}, LaJ;->f(LaJ;)Lbg;

    move-result-object v1

    new-instance v2, LaY;

    iget-object v3, p0, LW;->a:LB;

    iget-object v4, p0, LW;->d:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, LaY;-><init>(LB;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v2}, Lac;-><init>(Lbg;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lac;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_4
    monitor-exit p0

    return-void

    :cond_c
    :try_start_4
    div-long v2, v4, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :cond_d
    iget-boolean v0, p0, LW;->e:Z

    if-eqz v0, :cond_e

    const-string v0, "WindowResumeService.Control.run(): done == true"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->u:LaJ;

    invoke-static {v0}, LaJ;->d(LaJ;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v1, p0, LW;->u:LaJ;

    invoke-static {v1}, LaJ;->e(LaJ;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-instance v0, Lac;

    iget-object v1, p0, LW;->u:LaJ;

    invoke-static {v1}, LaJ;->f(LaJ;)Lbg;

    move-result-object v1

    new-instance v2, LaY;

    iget-object v3, p0, LW;->a:LB;

    iget-object v4, p0, LW;->c:LG;

    invoke-direct {v2, v3, v4}, LaY;-><init>(LB;LG;)V

    invoke-direct {v0, v1, v2}, Lac;-><init>(Lbg;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lac;->d()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :cond_e
    const-string v0, "WindowResumeService.Control.run(): queuing requests"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, LW;->i:Ljava/util/Vector;

    if-eqz v0, :cond_f

    iget-object v0, p0, LW;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "WindowResumeService.Control.run(): resetting chunkVector"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, LW;->i:Ljava/util/Vector;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_f
    :try_start_b
    iget v0, p0, LW;->k:I

    iget-object v1, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, LW;->a(I)[LZ;

    move-result-object v0

    if-eqz v0, :cond_b

    move v1, v8

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_b

    aget-object v2, v0, v1

    if-eqz v2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LaJ;->c(Ljava/lang/String;)V

    iget-object v3, p0, LW;->h:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, LW;->u:LaJ;

    invoke-static {v3}, LaJ;->c(LaJ;)Ln;

    move-result-object v3

    invoke-virtual {v3, v2}, Ln;->a(LaE;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_c
    iput-object v0, p0, LW;->d:Ljava/lang/Exception;

    iget-object v0, p0, LW;->u:LaJ;

    invoke-static {v0}, LaJ;->g(LaJ;)Lac;

    move-result-object v0

    invoke-virtual {v0}, Lac;->d()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4
.end method
