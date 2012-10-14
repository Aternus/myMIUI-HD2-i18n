.class final enum Lcom/android/gallery/view/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/view/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery/view/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery/view/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/android/gallery/view/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/android/gallery/view/HighlightView$ModifyMode;

.field public static final enum None:Lcom/android/gallery/view/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    new-instance v0, Lcom/android/gallery/view/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery/view/HighlightView$ModifyMode;->None:Lcom/android/gallery/view/HighlightView$ModifyMode;

    new-instance v0, Lcom/android/gallery/view/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery/view/HighlightView$ModifyMode;->Move:Lcom/android/gallery/view/HighlightView$ModifyMode;

    new-instance v0, Lcom/android/gallery/view/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery/view/HighlightView$ModifyMode;->Grow:Lcom/android/gallery/view/HighlightView$ModifyMode;

    .line 368
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery/view/HighlightView$ModifyMode;

    sget-object v1, Lcom/android/gallery/view/HighlightView$ModifyMode;->None:Lcom/android/gallery/view/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery/view/HighlightView$ModifyMode;->Move:Lcom/android/gallery/view/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery/view/HighlightView$ModifyMode;->Grow:Lcom/android/gallery/view/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery/view/HighlightView$ModifyMode;->$VALUES:[Lcom/android/gallery/view/HighlightView$ModifyMode;

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
    .line 368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery/view/HighlightView$ModifyMode;
    .locals 1
    .parameter

    .prologue
    .line 368
    const-class v0, Lcom/android/gallery/view/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/gallery/view/HighlightView$ModifyMode;

    return-object p0
.end method

.method public static values()[Lcom/android/gallery/view/HighlightView$ModifyMode;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/android/gallery/view/HighlightView$ModifyMode;->$VALUES:[Lcom/android/gallery/view/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/android/gallery/view/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery/view/HighlightView$ModifyMode;

    return-object v0
.end method
