.class Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
.super Ljava/lang/Object;
.source "ContactMembershipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/ContactMembershipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupInfo"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public changed:Z

.field public checked:Z

.field public id:J

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountType:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->changed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/ContactMembershipEditor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;-><init>()V

    return-void
.end method
