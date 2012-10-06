.class final enum Lcom/android/gallery/util/AsyncLoadTaskStack$State;
.super Ljava/lang/Enum;
.source "AsyncLoadTaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/util/AsyncLoadTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery/util/AsyncLoadTaskStack$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery/util/AsyncLoadTaskStack$State;

.field public static final enum RUNNING:Lcom/android/gallery/util/AsyncLoadTaskStack$State;

.field public static final enum STOPPED:Lcom/android/gallery/util/AsyncLoadTaskStack$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery/util/AsyncLoadTaskStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;->RUNNING:Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    new-instance v0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery/util/AsyncLoadTaskStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;->STOPPED:Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    sget-object v1, Lcom/android/gallery/util/AsyncLoadTaskStack$State;->RUNNING:Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery/util/AsyncLoadTaskStack$State;->STOPPED:Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;->$VALUES:[Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery/util/AsyncLoadTaskStack$State;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    return-object p0
.end method

.method public static values()[Lcom/android/gallery/util/AsyncLoadTaskStack$State;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/gallery/util/AsyncLoadTaskStack$State;->$VALUES:[Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    invoke-virtual {v0}, [Lcom/android/gallery/util/AsyncLoadTaskStack$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery/util/AsyncLoadTaskStack$State;

    return-object v0
.end method
