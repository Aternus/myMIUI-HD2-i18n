.class interface abstract Lcom/android/contacts/model/GroupDelta$GroupsQuery;
.super Ljava/lang/Object;
.source "GroupDelta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/GroupDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "GroupsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_PHONES_ONLY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "group_visible"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "should_sync"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "group_order"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "summ_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/model/GroupDelta$GroupsQuery;->PROJECTION:[Ljava/lang/String;

    .line 69
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "group_visible"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "should_sync"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "group_order"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "summ_phones"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/model/GroupDelta$GroupsQuery;->PROJECTION_PHONES_ONLY:[Ljava/lang/String;

    return-void
.end method
