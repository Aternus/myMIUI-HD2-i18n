.class public interface abstract Lcom/android/contacts/ui/DisambigChooseDialog$Action;
.super Ljava/lang/Object;
.source "DisambigChooseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/DisambigChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Action"
.end annotation


# virtual methods
.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getDataUri()Landroid/net/Uri;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
