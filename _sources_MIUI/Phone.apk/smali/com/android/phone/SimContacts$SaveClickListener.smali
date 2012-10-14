.class Lcom/android/phone/SimContacts$SaveClickListener;
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
    name = "SaveClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method private constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/phone/SimContacts$SaveClickListener;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SimContacts;Lcom/android/phone/SimContacts$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/phone/SimContacts$SaveClickListener;-><init>(Lcom/android/phone/SimContacts;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 457
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "tag"

    iget-object v1, p0, Lcom/android/phone/SimContacts$SaveClickListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/SimContacts;->access$900(Lcom/android/phone/SimContacts;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "newTag"

    iget-object v1, p0, Lcom/android/phone/SimContacts$SaveClickListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/SimContacts;->access$600(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "number"

    iget-object v1, p0, Lcom/android/phone/SimContacts$SaveClickListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/SimContacts;->access$1000(Lcom/android/phone/SimContacts;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "newNumber"

    iget-object v1, p0, Lcom/android/phone/SimContacts$SaveClickListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/SimContacts$SaveClickListener;->this$0:Lcom/android/phone/SimContacts;

    iget-object v0, v0, Lcom/android/phone/ADNList;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/phone/SimContacts$SaveClickListener;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v3}, Lcom/android/phone/SimContacts;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    return-void
.end method
