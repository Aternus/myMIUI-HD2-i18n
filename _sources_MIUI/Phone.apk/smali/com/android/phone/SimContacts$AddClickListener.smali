.class Lcom/android/phone/SimContacts$AddClickListener;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method private constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/phone/SimContacts$AddClickListener;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SimContacts;Lcom/android/phone/SimContacts$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/android/phone/SimContacts$AddClickListener;-><init>(Lcom/android/phone/SimContacts;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 444
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "tag"

    iget-object v2, p0, Lcom/android/phone/SimContacts$AddClickListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$600(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/SimContacts$AddClickListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/phone/SimContacts$AddClickListener;->this$0:Lcom/android/phone/SimContacts;

    iget-object v1, v1, Lcom/android/phone/ADNList;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/SimContacts$AddClickListener;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v4}, Lcom/android/phone/SimContacts;->resolveIntent()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 448
    return-void
.end method
