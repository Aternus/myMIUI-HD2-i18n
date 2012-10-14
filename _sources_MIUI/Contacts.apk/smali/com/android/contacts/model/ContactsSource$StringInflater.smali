.class public interface abstract Lcom/android/contacts/model/ContactsSource$StringInflater;
.super Ljava/lang/Object;
.source "ContactsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/ContactsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StringInflater"
.end annotation


# virtual methods
.method public abstract inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
.end method

.method public abstract inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method
