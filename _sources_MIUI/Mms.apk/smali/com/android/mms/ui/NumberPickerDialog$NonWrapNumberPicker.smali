.class public Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;
.super Lcom/android/mms/ui/NumberPicker;
.source "NumberPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWrapNumberPicker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected changeCurrent(I)V
    .locals 1
    .parameter "current"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getEndRange()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getEndRange()I

    move-result p1

    .line 150
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    .line 151
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getBeginRange()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getBeginRange()I

    move-result p1

    goto :goto_0
.end method
