.class public Lcom/android/contacts/model/FallbackSource$EventActionInflater;
.super Lcom/android/contacts/model/FallbackSource$CommonInflater;
.source "FallbackSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 695
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
