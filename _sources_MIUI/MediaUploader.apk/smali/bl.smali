.class public final Lbl;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lah;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    iput-object v0, p0, Lbl;->a:Lah;

    const/4 v0, 0x0

    iput-object v0, p0, Lbl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lbl;->a:Lah;

    invoke-virtual {v0, p1}, Lah;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK;

    if-nez p0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, LK;->a(LK;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method final a()Lah;
    .locals 1

    iget-object v0, p0, Lbl;->a:Lah;

    invoke-virtual {v0}, Lah;->a()Lah;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/lang/Object;)Lbl;
    .locals 2

    iget-object v0, p0, Lbl;->a:Lah;

    new-instance v1, LK;

    invoke-direct {v1, p1, p3}, LK;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Lah;->a(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbl;->a:Lah;

    invoke-virtual {v0, p1}, Lah;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK;

    if-nez p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, LK;->b(LK;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lbl;

    iget-object v0, p0, Lbl;->a:Lah;

    iget-object v1, p1, Lbl;->a:Lah;

    invoke-virtual {v0, v1}, Lah;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lbl;->a:Lah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbl;->a:Lah;

    invoke-virtual {v0}, Lah;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
