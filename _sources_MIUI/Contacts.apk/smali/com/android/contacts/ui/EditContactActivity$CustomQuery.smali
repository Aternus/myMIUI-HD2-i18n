.class public interface abstract Lcom/android/contacts/ui/EditContactActivity$CustomQuery;
.super Ljava/lang/Object;
.source "EditContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "custom_call_incoming_photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ui/EditContactActivity$CustomQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
