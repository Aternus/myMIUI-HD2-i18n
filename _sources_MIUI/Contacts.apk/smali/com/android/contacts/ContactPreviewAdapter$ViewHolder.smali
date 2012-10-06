.class public Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mCheckbox:Landroid/widget/CheckBox;

.field public mData:Landroid/widget/TextView;

.field public mExtra:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/contacts/ContactPreviewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPreviewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->this$0:Lcom/android/contacts/ContactPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
