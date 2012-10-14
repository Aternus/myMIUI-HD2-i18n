.class interface abstract Lcom/android/contacts/ui/QuickContactWindow$Action;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/ui/QuickContactWindow$Action;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getBody()Ljava/lang/CharSequence;
.end method

.method public abstract getDataUri()Landroid/net/Uri;
.end method

.method public abstract getHeader()Ljava/lang/CharSequence;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract isPrimary()Ljava/lang/Boolean;
.end method
