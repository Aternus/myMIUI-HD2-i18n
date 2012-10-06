.class final Lcom/android/contacts/ui/widget/GenericEditorView$SavedState$1;
.super Ljava/lang/Object;
.source "GenericEditorView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 492
    new-instance v0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/contacts/ui/widget/GenericEditorView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 496
    new-array v0, p1, [Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState$1;->newArray(I)[Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;

    move-result-object v0

    return-object v0
.end method
