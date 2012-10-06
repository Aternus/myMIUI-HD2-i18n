.class Lcom/android/phone/EditCustomLocationActivity$1;
.super Ljava/lang/Object;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditCustomLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditCustomLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/EditCustomLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/EditCustomLocationActivity$1;->this$0:Lcom/android/phone/EditCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity$1;->this$0:Lcom/android/phone/EditCustomLocationActivity;

    #calls: Lcom/android/phone/EditCustomLocationActivity;->resetDoneButtonEnabled()V
    invoke-static {v0}, Lcom/android/phone/EditCustomLocationActivity;->access$100(Lcom/android/phone/EditCustomLocationActivity;)V

    .line 68
    return-void
.end method
