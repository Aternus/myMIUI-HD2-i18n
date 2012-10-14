.class Lcom/android/contacts/TwelveKeyDialer$5;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;

.field final synthetic val$callLogId:J


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    iput-wide p2, p0, Lcom/android/contacts/TwelveKeyDialer$5;->val$callLogId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/contacts/TwelveKeyDialer$5;->val$callLogId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 1130
    return-void
.end method
