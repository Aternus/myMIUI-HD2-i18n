.class Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsIgnorableIterator"
.end annotation


# instance fields
.field private mEmpty:Z

.field final synthetic this$0:Lcom/android/contacts/model/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/android/contacts/model/vcard/VCardEntry;)V
    .locals 1
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;->this$0:Lcom/android/contacts/model/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/vcard/VCardEntry;Lcom/android/contacts/model/vcard/VCardEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1631
    invoke-direct {p0, p1}, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/contacts/model/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return v0
.end method

.method public onElement(Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .parameter "elem"

    .prologue
    const/4 v1, 0x0

    .line 1652
    invoke-interface {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1653
    iput-boolean v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    move v0, v1

    .line 1657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 1648
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 1644
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 1640
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 1636
    return-void
.end method
