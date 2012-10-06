.class Lcom/android/phone/SimContacts$SimCardContact;
.super Ljava/lang/Object;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimCardContact"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SimContacts$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/android/phone/SimContacts$SimCardContact;-><init>()V

    return-void
.end method
