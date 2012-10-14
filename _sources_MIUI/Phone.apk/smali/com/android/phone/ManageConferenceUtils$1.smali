.class Lcom/android/phone/ManageConferenceUtils$1;
.super Landroid/widget/ArrayAdapter;
.source "ManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/telephony/Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManageConferenceUtils;

.field final synthetic val$canSeparate:Z

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/phone/ManageConferenceUtils;Landroid/content/Context;ILandroid/view/LayoutInflater;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils$1;->this$0:Lcom/android/phone/ManageConferenceUtils;

    iput-object p4, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$inflater:Landroid/view/LayoutInflater;

    iput-boolean p5, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$canSeparate:Z

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 132
    if-nez p2, :cond_0

    .line 133
    iget-object v7, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030002

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/ManageConferenceUtils$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 137
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;

    iget-object v7, p0, Lcom/android/phone/ManageConferenceUtils$1;->this$0:Lcom/android/phone/ManageConferenceUtils;

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;-><init>(Lcom/android/phone/ManageConferenceUtils;Lcom/android/phone/ManageConferenceUtils$1;)V

    .line 138
    .local v1, ci:Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;
    iput-object p2, v1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    .line 139
    iput-object v0, v1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->connection:Lcom/android/internal/telephony/Connection;

    .line 140
    iget-object v7, p0, Lcom/android/phone/ManageConferenceUtils$1;->this$0:Lcom/android/phone/ManageConferenceUtils;

    #getter for: Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v7}, Lcom/android/phone/ManageConferenceUtils;->access$100(Lcom/android/phone/ManageConferenceUtils;)Lcom/android/phone/InCallScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils$1;->this$0:Lcom/android/phone/ManageConferenceUtils;

    invoke-static {v7, v0, v8, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 141
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v7, v1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 142
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    const v7, 0x7f070039

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 145
    .local v2, endButton:Landroid/widget/ImageButton;
    const v7, 0x7f07003d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 147
    .local v5, separateButton:Landroid/widget/Button;
    new-instance v3, Lcom/android/phone/ManageConferenceUtils$1$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/phone/ManageConferenceUtils$1$1;-><init>(Lcom/android/phone/ManageConferenceUtils$1;ILcom/android/internal/telephony/Connection;)V

    .line 153
    .local v3, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-boolean v7, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$canSeparate:Z

    if-eqz v7, :cond_1

    .line 155
    new-instance v6, Lcom/android/phone/ManageConferenceUtils$1$2;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/phone/ManageConferenceUtils$1$2;-><init>(Lcom/android/phone/ManageConferenceUtils$1;ILcom/android/internal/telephony/Connection;)V

    .line 161
    .local v6, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    .end local v6           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_0
    iget-object v7, p0, Lcom/android/phone/ManageConferenceUtils$1;->this$0:Lcom/android/phone/ManageConferenceUtils;

    #calls: Lcom/android/phone/ManageConferenceUtils;->updateCallerInfo(Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;)V
    invoke-static {v7, v1}, Lcom/android/phone/ManageConferenceUtils;->access$200(Lcom/android/phone/ManageConferenceUtils;Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;)V

    .line 168
    return-object p2

    .line 164
    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
