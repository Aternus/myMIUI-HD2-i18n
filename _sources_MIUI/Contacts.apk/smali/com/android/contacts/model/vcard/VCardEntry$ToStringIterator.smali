.class Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;
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
    name = "ToStringIterator"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mFirstElement:Z

.field final synthetic this$0:Lcom/android/contacts/model/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/android/contacts/model/vcard/VCardEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/android/contacts/model/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/vcard/VCardEntry;Lcom/android/contacts/model/vcard/VCardEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1666
    invoke-direct {p0, p1}, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/contacts/model/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .parameter "elem"

    .prologue
    .line 1685
    iget-boolean v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    if-nez v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;)V
    .locals 3
    .parameter "label"

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    .line 1681
    return-void
.end method

.method public onIterationEnded()V
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "]]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    return-void
.end method

.method public onIterationStarted()V
    .locals 3

    .prologue
    .line 1673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    .line 1674
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/android/contacts/model/vcard/VCardEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
