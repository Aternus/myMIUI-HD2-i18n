.class interface abstract Lcom/android/contacts/ui/EditContactActivity$JoinContactQuery;
.super Ljava/lang/Object;
.source "EditContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "JoinContactQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1355
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ui/EditContactActivity$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
