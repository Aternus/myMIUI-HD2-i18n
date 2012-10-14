.class Lcom/android/contacts/ui/EditContactActivity$1;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/EditContactActivity;->showSetPhotoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/EditContactActivity;

.field final synthetic val$resizedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/EditContactActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$1;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ui/EditContactActivity$1;->val$resizedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$1;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity$1;->val$resizedBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->setPhoto(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$600(Lcom/android/contacts/ui/EditContactActivity;Landroid/graphics/Bitmap;)V

    .line 640
    return-void
.end method
