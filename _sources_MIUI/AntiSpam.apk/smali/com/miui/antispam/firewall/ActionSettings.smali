.class public Lcom/miui/antispam/firewall/ActionSettings;
.super Landroid/preference/PreferenceActivity;
.source "ActionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAction_call_1:Landroid/preference/RadioButtonPreference;

.field private mAction_call_2:Landroid/preference/RadioButtonPreference;

.field private mAction_call_3:Landroid/preference/RadioButtonPreference;

.field private mAction_calls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mAction_ms_1:Landroid/preference/RadioButtonPreference;

.field private mAction_ms_2:Landroid/preference/RadioButtonPreference;

.field private mAction_ms_3:Landroid/preference/RadioButtonPreference;

.field private mAction_mss:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    return-void
.end method

.method public static getActionSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getSmsAct(Landroid/content/Context;)I

    move-result v1

    .line 106
    .local v1, smsAction:I
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getCallAct(Landroid/content/Context;)I

    move-result v0

    .line 107
    .local v0, callAction:I
    packed-switch v0, :pswitch_data_0

    .line 129
    packed-switch v1, :pswitch_data_1

    .line 135
    const v2, 0x7f07002c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 109
    :pswitch_0
    packed-switch v1, :pswitch_data_2

    .line 115
    const v2, 0x7f070026

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 111
    :pswitch_1
    const v2, 0x7f070024

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 113
    :pswitch_2
    const v2, 0x7f070025

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :pswitch_3
    packed-switch v1, :pswitch_data_3

    .line 125
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 121
    :pswitch_4
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 123
    :pswitch_5
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 131
    :pswitch_6
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 133
    :pswitch_7
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 129
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 109
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 119
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private refreshPref()V
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getCallAct(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, index:I
    iget-object v1, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Landroid/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 68
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Landroid/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 70
    return-void
.end method

.method private setAction(Landroid/preference/RadioButtonPreference;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "preference"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/RadioButtonPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/RadioButtonPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/RadioButtonPreference;>;"
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 74
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    .line 75
    .local v1, item:Landroid/preference/RadioButtonPreference;
    if-eq p1, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 77
    .end local v1           #item:Landroid/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->addPreferencesFromResource(I)V

    .line 34
    const-string v2, "call_action_1"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_1:Landroid/preference/RadioButtonPreference;

    .line 35
    const-string v2, "call_action_2"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_2:Landroid/preference/RadioButtonPreference;

    .line 36
    const-string v2, "call_action_3"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_3:Landroid/preference/RadioButtonPreference;

    .line 37
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_1:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_2:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_3:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v2, "ms_action_1"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_1:Landroid/preference/RadioButtonPreference;

    .line 42
    const-string v2, "ms_action_2"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_2:Landroid/preference/RadioButtonPreference;

    .line 43
    const-string v2, "ms_action_3"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_3:Landroid/preference/RadioButtonPreference;

    .line 44
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_1:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_2:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_3:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    .line 49
    .local v1, item:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 52
    .end local v1           #item:Landroid/preference/RadioButtonPreference;
    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    .line 53
    .restart local v1       #item:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 55
    .end local v1           #item:Landroid/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 81
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v2, v0

    .line 83
    .local v2, radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v2}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 101
    .end local v2           #radio:Landroid/preference/RadioButtonPreference;
    :goto_0
    return v3

    .line 85
    .restart local v2       #radio:Landroid/preference/RadioButtonPreference;
    :cond_0
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Landroid/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 86
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 88
    .local v1, index:I
    invoke-static {p0, v1}, Lcom/miui/antispam/firewall/FirewallHelper;->setCallAct(Landroid/content/Context;I)V

    .line 101
    .end local v1           #index:I
    .end local v2           #radio:Landroid/preference/RadioButtonPreference;
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 90
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v2, v0

    .line 92
    .restart local v2       #radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v2}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_0

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Landroid/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 95
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 97
    .restart local v1       #index:I
    invoke-static {p0, v1}, Lcom/miui/antispam/firewall/FirewallHelper;->setSmsAct(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/miui/antispam/firewall/ActionSettings;->refreshPref()V

    .line 62
    return-void
.end method
