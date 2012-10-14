.class Lcom/android/phone/SimContacts$3;
.super Landroid/widget/ArrayAdapter;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/phone/SimContacts$SimCardContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/phone/SimContacts$3;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 533
    if-nez p2, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/phone/SimContacts$3;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v1}, Lcom/android/phone/SimContacts;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 536
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/SimContacts$3;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SimContacts$SimCardContact;

    .line 537
    .local v0, contact:Lcom/android/phone/SimContacts$SimCardContact;
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/phone/SimContacts$SimCardContact;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/phone/SimContacts$SimCardContact;->number:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    return-object p2
.end method
