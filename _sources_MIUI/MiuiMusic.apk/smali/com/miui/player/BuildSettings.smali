.class public Lcom/miui/player/BuildSettings;
.super Ljava/lang/Object;
.source "BuildSettings.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IsDebug:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IsDefaultChannel:Z = false

.field public static final ReleaseChannel:Ljava/lang/String; = "@SHIP.TO.2A2FE0D7@"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "@SHIP.TO.2A2FE0D7@"

    .line 12
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v0, "2A2FE0D7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/player/BuildSettings;->IsDefaultChannel:Z

    .line 14
    sget-boolean v0, Lcom/miui/player/BuildSettings;->IsDefaultChannel:Z

    const-string v1, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "DEBUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/miui/player/BuildSettings;->IsDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
