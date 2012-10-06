.class Lcom/android/phone/CallCard$CallCardInfo;
.super Ljava/lang/Object;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCardInfo"
.end annotation


# instance fields
.field public bigPhoto:Landroid/graphics/drawable/Drawable;

.field public callStatus:Ljava/lang/String;

.field public elapsedTime:Ljava/lang/String;

.field public extraInfo:Ljava/lang/String;

.field public isConference:Z

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photo:Landroid/graphics/drawable/Drawable;

.field public telocation:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 129
    iput-object p1, p0, Lcom/android/phone/CallCard$CallCardInfo;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallCard$CallCardInfo;->isConference:Z

    .line 134
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/CallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/android/phone/CallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 138
    iput-object v2, p0, Lcom/android/phone/CallCard$CallCardInfo;->bigPhoto:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallCard;Lcom/android/phone/CallCard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard$CallCardInfo;-><init>(Lcom/android/phone/CallCard;)V

    return-void
.end method
