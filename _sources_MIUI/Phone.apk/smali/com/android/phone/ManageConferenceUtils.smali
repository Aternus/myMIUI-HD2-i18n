.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mButtonManageConferenceDone:Landroid/widget/Button;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallList:Landroid/widget/ListView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 71
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ManageConferenceUtils;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ManageConferenceUtils;Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUtils;->updateCallerInfo(Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 310
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method private updateCallerInfo(Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;)V
    .locals 5
    .parameter "ci"

    .prologue
    .line 186
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 187
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    const v4, 0x7f07003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    .local v0, nameTextView:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    const v4, 0x7f07003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    .local v1, numberTextView:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    const v4, 0x7f07003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 191
    .local v2, telocationTextView:Landroid/widget/TextView;
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 193
    .end local v0           #nameTextView:Landroid/widget/TextView;
    .end local v1           #numberTextView:Landroid/widget/TextView;
    .end local v2           #telocationTextView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public final displayCallerInfoForConferenceRow(Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7
    .parameter "ci"
    .parameter "nameTextView"
    .parameter "numberTextView"
    .parameter "telocationTextView"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 204
    const-string v0, ""

    .line 205
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 206
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 207
    .local v2, callerTelocation:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 208
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    const-string v1, ""

    .line 216
    :goto_0
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_4

    .line 220
    :cond_0
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_1
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->connection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 236
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    :cond_1
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 247
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    invoke-virtual {p4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_3
    return-void

    .line 210
    :cond_2
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 213
    :cond_3
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_4
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 222
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    goto :goto_1

    .line 224
    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 228
    :cond_6
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_7

    .line 229
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 231
    :cond_7
    iget-object v3, p1, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 238
    :cond_8
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v1}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 250
    :cond_9
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 271
    return-void
.end method

.method public getNumCallersInConference()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method public initManageConferencePanel()V
    .locals 3

    .prologue
    .line 75
    sget-boolean v1, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "initManageConferencePanel()..."

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 77
    sget-boolean v1, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 81
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700a4

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 85
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/Button;

    .line 90
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:Landroid/widget/ListView;

    .line 94
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_3
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 303
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callerinfo query complete, updating UI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 305
    :cond_0
    check-cast p2, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/ManageConferenceUtils;->updateCallerInfo(Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;)V

    .line 306
    return-void
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 280
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 293
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    :cond_0
    return-void

    .line 101
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 119
    sget-boolean v1, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    .line 125
    .local v7, hasActiveCall:Z
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v8

    .line 126
    .local v8, hasHoldingCall:Z
    if-eqz v7, :cond_1

    if-nez v8, :cond_3

    :cond_1
    const/4 v1, 0x1

    move v5, v1

    .line 128
    .local v5, canSeparate:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 129
    .local v4, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/phone/ManageConferenceUtils$1;

    iget-object v2, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f030002

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;Landroid/content/Context;ILandroid/view/LayoutInflater;Z)V

    .line 172
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/telephony/Connection;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 173
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 174
    .local v6, c:Lcom/android/internal/telephony/Connection;
    if-eqz v6, :cond_2

    .line 175
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 172
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 126
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/telephony/Connection;>;"
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #canSeparate:Z
    .end local v6           #c:Lcom/android/internal/telephony/Connection;
    .end local v9           #i:I
    :cond_3
    const/4 v1, 0x0

    move v5, v1

    goto :goto_0

    .line 179
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/telephony/Connection;>;"
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #canSeparate:Z
    .restart local v9       #i:I
    :cond_4
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    return-void
.end method
