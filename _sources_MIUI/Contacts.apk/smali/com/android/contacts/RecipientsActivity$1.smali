.class Lcom/android/contacts/RecipientsActivity$1;
.super Ljava/lang/Object;
.source "RecipientsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/RecipientsActivity;->showRecipientMutilNumberDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/RecipientsActivity$RecipientItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/RecipientsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/RecipientsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/contacts/RecipientsActivity$1;->this$0:Lcom/android/contacts/RecipientsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/RecipientsActivity$RecipientItem;Lcom/android/contacts/RecipientsActivity$RecipientItem;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 378
    iget-object v0, p1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/RecipientsActivity$RecipientItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    check-cast p1, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    .end local p1
    check-cast p2, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/RecipientsActivity$1;->compare(Lcom/android/contacts/RecipientsActivity$RecipientItem;Lcom/android/contacts/RecipientsActivity$RecipientItem;)I

    move-result v0

    return v0
.end method
