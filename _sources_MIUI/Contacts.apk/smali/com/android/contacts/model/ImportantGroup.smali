.class public Lcom/android/contacts/model/ImportantGroup;
.super Lcom/android/contacts/model/GroupDelta;
.source "ImportantGroup.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "context"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/model/GroupDelta;-><init>(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "Important"

    return-object v0
.end method
