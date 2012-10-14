.class public final enum Lcom/google/android/apps/uploader/F;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/apps/uploader/F;

.field public static final enum b:Lcom/google/android/apps/uploader/F;

.field public static final enum c:Lcom/google/android/apps/uploader/F;

.field public static final enum d:Lcom/google/android/apps/uploader/F;

.field public static final enum e:Lcom/google/android/apps/uploader/F;

.field public static final enum f:Lcom/google/android/apps/uploader/F;

.field public static final enum g:Lcom/google/android/apps/uploader/F;

.field private static final synthetic h:[Lcom/google/android/apps/uploader/F;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/apps/uploader/F;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/uploader/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/F;->a:Lcom/google/android/apps/uploader/F;

    new-instance v0, Lcom/google/android/apps/uploader/F;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/uploader/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/F;->b:Lcom/google/android/apps/uploader/F;

    new-instance v0, Lcom/google/android/apps/uploader/F;

    const-string v1, "WAITING_TO_RETRY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/uploader/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/F;->c:Lcom/google/android/apps/uploader/F;

    new-instance v0, Lcom/google/android/apps/uploader/F;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/uploader/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/F;->d:Lcom/google/android/apps/uploader/F;

    new-instance v0, Lcom/google/android/apps/uploader/F;

    const-string v1, "WAITING_FOR_WIFI"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/uploader/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/F;->e:Lcom/google/android/apps/uploader/F;

    new-instance v0, Lcom/google/android/apps/uploader/F;

    const-string v1, "COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/F;->f:Lcom/google/android/apps/uploader/F;

    new-instance v0, Lcom/google/android/apps/uploader/F;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/F;->g:Lcom/google/android/apps/uploader/F;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/uploader/F;

    sget-object v1, Lcom/google/android/apps/uploader/F;->a:Lcom/google/android/apps/uploader/F;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/uploader/F;->b:Lcom/google/android/apps/uploader/F;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/uploader/F;->c:Lcom/google/android/apps/uploader/F;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/uploader/F;->d:Lcom/google/android/apps/uploader/F;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/uploader/F;->e:Lcom/google/android/apps/uploader/F;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/uploader/F;->f:Lcom/google/android/apps/uploader/F;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/uploader/F;->g:Lcom/google/android/apps/uploader/F;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/uploader/F;->h:[Lcom/google/android/apps/uploader/F;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/google/android/apps/uploader/F;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/F;->h:[Lcom/google/android/apps/uploader/F;

    invoke-virtual {v0}, [Lcom/google/android/apps/uploader/F;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/uploader/F;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 2

    sget-object v0, Lcom/google/android/apps/uploader/l;->a:[I

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/F;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f06001f

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f060020

    goto :goto_0

    :pswitch_1
    const v0, 0x7f060021

    goto :goto_0

    :pswitch_2
    const v0, 0x7f060022

    goto :goto_0

    :pswitch_3
    const v0, 0x7f060024

    goto :goto_0

    :pswitch_4
    const v0, 0x7f060023

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
