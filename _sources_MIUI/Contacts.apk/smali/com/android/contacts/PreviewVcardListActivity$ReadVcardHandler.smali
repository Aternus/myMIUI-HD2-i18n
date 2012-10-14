.class Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Landroid/pim/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/PreviewVcardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadVcardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/PreviewVcardListActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;Lcom/android/contacts/PreviewVcardListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;-><init>(Lcom/android/contacts/PreviewVcardListActivity;)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public onEntryCreated(Landroid/pim/vcard/VCardEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mNeedReview:Z
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$400(Lcom/android/contacts/PreviewVcardListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/pim/vcard/VCardEntry;->setPhotoList(Ljava/util/List;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$000(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method
