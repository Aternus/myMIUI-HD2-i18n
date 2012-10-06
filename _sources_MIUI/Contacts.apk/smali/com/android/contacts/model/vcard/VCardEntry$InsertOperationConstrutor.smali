.class Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;
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
    name = "InsertOperationConstrutor"
.end annotation


# instance fields
.field private final mBackReferenceIndex:I

.field private final mOperationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/model/vcard/VCardEntry;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/vcard/VCardEntry;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1715
    .local p2, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;->this$0:Lcom/android/contacts/model/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1716
    iput-object p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    .line 1717
    iput p3, p0, Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    .line 1718
    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .parameter "elem"

    .prologue
    .line 1738
    invoke-interface {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    iget v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    invoke-interface {p1, v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;->constructInsertOperation(Ljava/util/List;I)V

    .line 1741
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 1734
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 1730
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 1726
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 1722
    return-void
.end method
