.class public abstract LN;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Z

.field public static c:Z

.field private static d:LN;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:Z

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;


# instance fields
.field private t:Lj;

.field private final u:LaQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x270f

    sput v0, LN;->a:I

    sput v0, LN;->e:I

    sput v0, LN;->f:I

    sput v0, LN;->g:I

    sput v0, LN;->h:I

    sput v0, LN;->i:I

    sput v0, LN;->j:I

    sput v0, LN;->k:I

    sput v0, LN;->l:I

    sput v0, LN;->m:I

    sput v0, LN;->n:I

    sput v0, LN;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz;

    invoke-direct {v0}, Lz;-><init>()V

    iput-object v0, p0, LN;->u:LaQ;

    return-void
.end method

.method public static a()LN;
    .locals 1

    sget-object v0, LN;->d:LN;

    return-object v0
.end method

.method public static a(LN;)V
    .locals 0

    sput-object p0, LN;->d:LN;

    return-void
.end method

.method private static a(ILjava/lang/String;)[I
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v6, "CONFIG"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-array v0, p0, [I

    move v2, v1

    :goto_1
    const-string v3, ","

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, p0, :cond_1

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v6, v0}, Lg;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v6, v0}, Lg;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method protected final b()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "nokia"

    const-string v2, "unknown"

    invoke-static {v3}, Lj;->a(Ljava/lang/String;)Lj;

    move-result-object v0

    iput-object v0, p0, LN;->t:Lj;

    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, LN;->d()Ljava/lang/String;

    move-result-object v1

    sput-object v1, LN;->q:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "unknown"

    sput-object v2, LN;->q:Ljava/lang/String;

    :cond_0
    sput-object v3, LN;->r:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v1, "unknown"

    sput-object v2, LN;->r:Ljava/lang/String;

    :cond_1
    sput-object v3, LN;->s:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v1, "unknown"

    sput-object v2, LN;->s:Ljava/lang/String;

    :cond_2
    const-string v1, "BackKey"

    sget v1, LN;->a:I

    sput v1, LN;->a:I

    const-string v1, "LeftSoftKey"

    sget v1, LN;->e:I

    sput v1, LN;->e:I

    const-string v1, "MiddleSoftKey"

    sget v1, LN;->f:I

    sput v1, LN;->f:I

    const-string v1, "RightSoftKey"

    sget v1, LN;->g:I

    sput v1, LN;->g:I

    const-string v1, "ReverseSoftkeys"

    const-string v1, "nokia"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, LN;->p:Z

    const-string v1, "SoftkeysOnSideInLandscape"

    const-string v1, "SideUpKey"

    sget v1, LN;->m:I

    sput v1, LN;->m:I

    const-string v1, "SideDownKey"

    sget v1, LN;->n:I

    sput v1, LN;->n:I

    const-string v1, "SideSelectKey"

    sget v1, LN;->o:I

    sput v1, LN;->o:I

    const-string v1, "QwertyKeyboard"

    sget-boolean v1, LN;->p:Z

    if-eqz v1, :cond_3

    sget v1, LN;->e:I

    sget v2, LN;->g:I

    sput v2, LN;->e:I

    sput v1, LN;->g:I

    :cond_3
    const-string v1, "MenuKey"

    sget v1, LN;->h:I

    sput v1, LN;->h:I

    const-string v1, "SelectKey"

    sget v1, LN;->i:I

    sput v1, LN;->i:I

    const-string v1, "TalkKey"

    sget v1, LN;->j:I

    sput v1, LN;->j:I

    const-string v1, "VoiceSearchKey"

    sget v1, LN;->k:I

    sput v1, LN;->k:I

    const-string v1, "ClearKey"

    sget v1, LN;->l:I

    sput v1, LN;->l:I

    const-string v1, "UseNativeCommands"

    const-string v1, "nokia"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    :goto_1
    sput-boolean v0, LN;->b:Z

    const-string v0, "UseNativeMenus"

    sput-boolean v4, LN;->c:Z

    const-string v0, "SoftkeyHeight"

    const/16 v0, 0xc

    invoke-static {v0, v3}, LN;->a(ILjava/lang/String;)[I

    const/4 v0, 0x4

    invoke-static {v0, v3}, LN;->a(ILjava/lang/String;)[I

    sget-boolean v0, LN;->c:Z

    if-eqz v0, :cond_4

    sget-boolean v0, LN;->b:Z

    if-nez v0, :cond_4

    sput-boolean v5, LN;->b:Z

    :cond_4
    invoke-virtual {p0}, LN;->c()V

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v4

    goto :goto_1
.end method

.method protected abstract c()V
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e()Lj;
    .locals 1

    iget-object v0, p0, LN;->t:Lj;

    return-object v0
.end method

.method public abstract f()LC;
.end method

.method public abstract g()Lt;
.end method

.method public h()LaQ;
    .locals 1

    iget-object v0, p0, LN;->u:LaQ;

    return-object v0
.end method
