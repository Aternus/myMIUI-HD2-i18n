.class Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;
.super Ljava/lang/Object;
.source "RecipientsGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecipientsGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupViewHolder"
.end annotation


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field public mCount:Landroid/widget/TextView;

.field public mName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/RecipientsGroupActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;-><init>()V

    return-void
.end method
