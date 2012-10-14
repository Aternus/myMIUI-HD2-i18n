.class Lcom/android/contacts/ViewContactActivity$CallLogEntry;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogEntry"
.end annotation


# instance fields
.field public callType:I

.field public date:J

.field public duration:J

.field public firewallType:I

.field public id:J

.field public number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ViewContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$CallLogEntry;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/contacts/ViewContactActivity$CallLogEntry;-><init>(Lcom/android/contacts/ViewContactActivity;)V

    return-void
.end method
