.class Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/contacts/ui/QuickContactWindow$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnknownNumberAction"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "action"
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x0

    const-string v5, "vnd.android.cursor.item/raw_contact"

    const-string v4, "sip_address"

    const-string v3, "phone"

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1052
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    .line 1053
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "sip_address"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1085
    :cond_0
    return-void

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1058
    :cond_2
    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1059
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "sip_address"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1064
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1066
    :cond_4
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tel"

    invoke-static {v1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1068
    :cond_5
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1069
    new-instance v0, Landroid/content/Intent;

    const-string v1, "smsto"

    invoke-static {v1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1070
    :cond_6
    const-string v0, "android.intent.action.ADD_FIREWALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1071
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    .line 1072
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "numbers"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1074
    :cond_7
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1075
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    .line 1076
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1079
    :cond_8
    iput-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "phoneNumbers"

    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    const-string v0, "android.intent.action.ADD_FIREWALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    .line 1091
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const-string v1, "numbers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1100
    :cond_0
    return-void

    .line 1094
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1139
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1047
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1129
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1144
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1047
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$UnknownNumberAction;->shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method
