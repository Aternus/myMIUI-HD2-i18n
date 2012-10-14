.class public Lcom/android/mms/ui/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;,
        Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mInitialNumber:I

.field private final mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 7
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 83
    iput-object p3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 84
    iput p4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mInitialNumber:I

    .line 86
    invoke-virtual {p0, p7}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(I)V

    .line 88
    const/4 v3, -0x1

    const v5, 0x7f09006a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 89
    const/4 v5, -0x2

    const v3, 0x7f090069

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v4

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v3, v0

    invoke-virtual {p0, v5, v6, v3}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 94
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03003f

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NumberPickerDialog;->setView(Landroid/view/View;)V

    .line 96
    const v3, 0x7f0d00c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    iput-object v3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    .line 99
    iget-object v3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v3, p5, p6}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setRange(II)V

    .line 100
    iget-object v3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v3, p4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 101
    iget-object v3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setSpeed(J)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    .line 65
    const v2, 0x10300a3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    .line 67
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->clearFocus()V

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 123
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 125
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    return-object v0
.end method
