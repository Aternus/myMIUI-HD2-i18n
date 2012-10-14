.class public abstract Lcom/android/contacts/ui/widget/BaseContactEditorView;
.super Landroid/widget/LinearLayout;
.source "BaseContactEditorView.java"


# instance fields
.field protected mFocus:Landroid/view/View;

.field protected mHasPhotoEditor:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mHasPhotoEditor:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mHasPhotoEditor:Z

    .line 61
    return-void
.end method


# virtual methods
.method public getInputFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mFocus:Landroid/view/View;

    return-object v0
.end method

.method public getPhotoEditor()Lcom/android/contacts/ui/widget/PhotoEditorView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    return-object v0
.end method

.method public abstract getRawContactId()J
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method public abstract setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/ui/ViewIdGenerator;)V
.end method
