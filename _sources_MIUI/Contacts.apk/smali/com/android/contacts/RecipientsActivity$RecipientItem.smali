.class Lcom/android/contacts/RecipientsActivity$RecipientItem;
.super Ljava/lang/Object;
.source "RecipientsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecipientsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientItem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public showHeader:Z

.field final synthetic this$0:Lcom/android/contacts/RecipientsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/RecipientsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/contacts/RecipientsActivity$RecipientItem;->this$0:Lcom/android/contacts/RecipientsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
