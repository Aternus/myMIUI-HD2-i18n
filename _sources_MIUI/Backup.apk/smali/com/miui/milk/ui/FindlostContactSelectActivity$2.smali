.class Lcom/miui/milk/ui/FindlostContactSelectActivity$2;
.super Ljava/lang/Object;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 107
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$100(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 109
    .local v2, size:I
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I
    invoke-static {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$200(Lcom/miui/milk/ui/FindlostContactSelectActivity;)I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$300(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f060091

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 112
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I
    invoke-static {v3, v2}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$202(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)I

    .line 113
    const/4 v1, 0x1

    .line 120
    .local v1, isChecked:Z
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 121
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$100(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/common/ContactInfo;

    iput-boolean v1, v3, Lcom/miui/milk/common/ContactInfo;->checked:Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0           #i:I
    .end local v1           #isChecked:Z
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mSelectAllButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$300(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f060090

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 117
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const/4 v4, 0x0

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I
    invoke-static {v3, v4}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$202(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)I

    .line 118
    const/4 v1, 0x0

    .restart local v1       #isChecked:Z
    goto :goto_0

    .line 123
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;
    invoke-static {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$400(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->notifyDataSetChanged()V

    .line 124
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #calls: Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyButton()V
    invoke-static {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$500(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    .line 125
    return-void
.end method
