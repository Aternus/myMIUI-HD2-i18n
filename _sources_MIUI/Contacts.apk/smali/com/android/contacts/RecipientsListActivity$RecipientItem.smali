.class Lcom/android/contacts/RecipientsListActivity$RecipientItem;
.super Ljava/lang/Object;
.source "RecipientsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecipientsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientItem"
.end annotation


# instance fields
.field public mContactId:J

.field public mDisplayName:Ljava/lang/String;

.field public mIsMultiRecipientConvenstaion:Z

.field public mLastContactDate:J

.field public mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/RecipientsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/RecipientsListActivity;ILandroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "token"
    .parameter "cursor"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 327
    iput-object p1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->this$0:Lcom/android/contacts/RecipientsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mIsMultiRecipientConvenstaion:Z

    .line 328
    packed-switch p2, :pswitch_data_0

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    .line 345
    :cond_0
    return-void

    .line 330
    :pswitch_0
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    .line 331
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    .line 332
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mContactId:J

    .line 333
    iput-wide v4, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mLastContactDate:J

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    .line 337
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    .line 338
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mContactId:J

    .line 339
    iput-wide v4, p0, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mLastContactDate:J

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
