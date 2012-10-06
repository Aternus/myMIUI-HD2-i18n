.class Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "GenericEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/widget/GenericEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mVisibilities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    .line 479
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 480
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/ui/widget/GenericEditorView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 474
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 484
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 485
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 487
    return-void
.end method
