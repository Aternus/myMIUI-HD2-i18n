.class public LD;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/DataInputStream;

.field private b:LaW;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD;->a:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognised protocol version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate instance of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No public default constructor for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LD;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0}, LD;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, LD;->b:LaW;

    if-eqz v0, :cond_0

    iput-object v1, p0, LD;->b:LaW;

    :cond_0
    iget-object v0, p0, LD;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iput-object v1, p0, LD;->a:Ljava/io/DataInputStream;

    return-void
.end method

.method public final b()LG;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, LD;->b:LaW;

    if-eqz v0, :cond_0

    iget-object v0, p0, LD;->b:LaW;

    invoke-virtual {v0}, LaW;->a()V

    iput-object v3, p0, LD;->b:LaW;

    :cond_0
    iget-object v0, p0, LD;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v1, p0, LD;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const v2, 0x8100

    if-ne v1, v2, :cond_1

    new-instance v1, LaW;

    iget-object v2, p0, LD;->a:Ljava/io/DataInputStream;

    invoke-direct {v1, v2, v0}, LaW;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, LD;->b:LaW;

    new-instance v0, Lbd;

    iget-object v1, p0, LD;->b:LaW;

    invoke-direct {v0, v1}, Lbd;-><init>(LaW;)V

    :goto_0
    return-object v0

    :cond_1
    const v2, 0x8101

    if-ne v1, v2, :cond_2

    new-instance v1, LaW;

    iget-object v2, p0, LD;->a:Ljava/io/DataInputStream;

    invoke-direct {v1, v2, v0}, LaW;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, LD;->b:LaW;

    new-instance v0, LaA;

    iget-object v1, p0, LD;->b:LaW;

    invoke-direct {v0, v1}, LaA;-><init>(LaW;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, LD;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-object v0, v3

    goto :goto_0
.end method
