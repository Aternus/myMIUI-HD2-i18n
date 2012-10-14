.class Lcom/android/contacts/TwelveKeyDialer$2$1;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer$2;->onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/TwelveKeyDialer$2;

.field final synthetic val$byNumber:Z

.field final synthetic val$positions:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer$2;ZLjava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$2$1;->this$1:Lcom/android/contacts/TwelveKeyDialer$2;

    iput-boolean p2, p0, Lcom/android/contacts/TwelveKeyDialer$2$1;->val$byNumber:Z

    iput-object p3, p0, Lcom/android/contacts/TwelveKeyDialer$2$1;->val$positions:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 587
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer$2$1;->this$1:Lcom/android/contacts/TwelveKeyDialer$2;

    iget-object v1, v1, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 588
    .local v0, progress:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 589
    new-instance v1, Lcom/android/contacts/TwelveKeyDialer$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/TwelveKeyDialer$2$1$1;-><init>(Lcom/android/contacts/TwelveKeyDialer$2$1;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->start()V

    .line 632
    return-void
.end method
