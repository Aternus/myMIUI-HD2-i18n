.class Lcom/android/contacts/TwelveKeyDialer$6;
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

.field final synthetic val$contactId:J

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$6;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    iput-object p2, p0, Lcom/android/contacts/TwelveKeyDialer$6;->val$number:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/contacts/TwelveKeyDialer$6;->val$contactId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1143
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer$6;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dialer_click_setting"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v6

    .line 1145
    .local v0, byNumber:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1146
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer$6;->val$number:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    .line 1147
    .local v2, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v6, v6}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1148
    .local v1, normalizedNumber:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer$6;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "normalized_number=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1158
    .end local v1           #normalizedNumber:Ljava/lang/String;
    .end local v2           #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer$6;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 1159
    return-void

    .end local v0           #byNumber:Z
    :cond_0
    move v0, v7

    .line 1143
    goto :goto_0

    .line 1147
    .restart local v0       #byNumber:Z
    .restart local v2       #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer$6;->val$number:Ljava/lang/String;

    move-object v1, v3

    goto :goto_1

    .line 1153
    .end local v2           #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer$6;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contactid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/contacts/TwelveKeyDialer$6;->val$contactId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2
.end method
