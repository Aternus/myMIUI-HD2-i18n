.class interface abstract Lcom/android/contacts/ContactsPreferenceActivity$RawContactsQuery;
.super Ljava/lang/Object;
.source "ContactsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RawContactsQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 333
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsPreferenceActivity$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
