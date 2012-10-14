.class interface abstract Lcom/android/contacts/ViewContactActivity$CallLogQuery;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CallLogQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "firewalltype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ViewContactActivity$CallLogQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
