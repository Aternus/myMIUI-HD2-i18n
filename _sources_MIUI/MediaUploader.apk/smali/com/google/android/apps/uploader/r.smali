.class public final Lcom/google/android/apps/uploader/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:[B

.field private m:Lcom/google/android/apps/uploader/F;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/k;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/k;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/apps/uploader/r;->h:J

    iput-object p3, p0, Lcom/google/android/apps/uploader/r;->a:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/apps/uploader/r;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/uploader/r;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/uploader/r;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/apps/uploader/r;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/apps/uploader/r;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/apps/uploader/r;->g:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/apps/uploader/r;->i:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/apps/uploader/r;->j:J

    iput-object p13, p0, Lcom/google/android/apps/uploader/r;->l:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/r;->k:J

    sget-object v0, Lcom/google/android/apps/uploader/F;->a:Lcom/google/android/apps/uploader/F;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V
    .locals 14

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/android/apps/uploader/r;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/r;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/r;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, -0x80000000

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x21

    shl-long/2addr v2, v4

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/r;->h:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/r;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/r;->j:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/r;->k:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->l:[B

    invoke-static {}, Lcom/google/android/apps/uploader/F;->a()[Lcom/google/android/apps/uploader/F;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/r;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/uploader/F;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/apps/uploader/r;->k:J

    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/F;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/F;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    iput-object p2, p0, Lcom/google/android/apps/uploader/r;->n:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/google/android/apps/uploader/r;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->h:J

    check-cast p1, Lcom/google/android/apps/uploader/r;

    iget-wide v2, p1, Lcom/google/android/apps/uploader/r;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->h:J

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->l:[B

    return-object v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->j:J

    return-wide v0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->k:J

    return-wide v0
.end method

.method public final o()I
    .locals 5

    const-wide/16 v2, 0x0

    const/16 v4, 0x64

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->k:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/android/apps/uploader/r;->j:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-le v0, v4, :cond_1

    move v0, v4

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->h:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    sget-object v1, Lcom/google/android/apps/uploader/F;->f:Lcom/google/android/apps/uploader/F;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    sget-object v1, Lcom/google/android/apps/uploader/F;->g:Lcom/google/android/apps/uploader/F;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/r;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    sget-object v1, Lcom/google/android/apps/uploader/F;->b:Lcom/google/android/apps/uploader/F;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    sget-object v1, Lcom/google/android/apps/uploader/F;->c:Lcom/google/android/apps/uploader/F;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    sget-object v1, Lcom/google/android/apps/uploader/F;->c:Lcom/google/android/apps/uploader/F;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    sget-object v1, Lcom/google/android/apps/uploader/F;->g:Lcom/google/android/apps/uploader/F;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/apps/uploader/r;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/r;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->a:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/apps/uploader/r;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->l:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->m:Lcom/google/android/apps/uploader/F;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/F;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/r;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
