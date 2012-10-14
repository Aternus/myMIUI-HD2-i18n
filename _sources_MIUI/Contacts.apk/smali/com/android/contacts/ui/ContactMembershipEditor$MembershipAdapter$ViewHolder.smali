.class public Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactMembershipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;

.field public zCheckBox:Landroid/widget/CheckBox;

.field public zName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;->this$1:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
