.class Lcom/android/contacts/ContactPickerActivity$SetPhotoThread$1;
.super Ljava/lang/Object;
.source "ContactPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread$1;->this$1:Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread$1;->this$1:Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    const v1, 0x7f0b0192

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 648
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread$1;->this$1:Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPickerActivity;->finish()V

    .line 649
    return-void
.end method
