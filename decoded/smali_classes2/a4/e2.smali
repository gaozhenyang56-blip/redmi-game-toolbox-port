.class public La4/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/e2$g;,
        La4/e2$f;,
        La4/e2$h;
    }
.end annotation


# direct methods
.method public static synthetic A(Lcom/miui/autotask/taskitem/HeadsetConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->W0(Lcom/miui/autotask/taskitem/HeadsetConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static A0(ZLandroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    if-eqz p0, :cond_2

    const p0, 0x7f060db5

    goto :goto_2

    :cond_2
    const p0, 0x7f060dba

    :goto_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private static synthetic A1(Lcom/miui/autotask/taskitem/TouchResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static A2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/CharSequence;

    const v2, 0x7f120316

    invoke-static {v2}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10013b

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/16 v0, 0xa

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const/16 v0, 0xf

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const/16 v0, 0x1e

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a54

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic B(Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->Q1(Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILjava/lang/String;)V

    return-void
.end method

.method private static B0(II)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic B1(Lcom/miui/autotask/taskitem/TouchResultItem;Lcom/miui/autotask/taskitem/TouchResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static B2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121959    # 1.941989E38f

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121945

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a56

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic C(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->s1(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static C0(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic C1(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static C2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12195a

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121954

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a15

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic D(Lcom/miui/autotask/taskitem/WlanResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->g1(Lcom/miui/autotask/taskitem/WlanResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static varargs D0(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic D1(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static D2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12195b

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121946

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a57

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic E(Lcom/miui/autotask/taskitem/MuteConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->M0(Lcom/miui/autotask/taskitem/MuteConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static E0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V
    .locals 10

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "key_hotspot_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "key_absorbed_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "key_battery_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "key_wlan_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "key_bluetooth_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "key_mute_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "key_location_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "key_headset_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_0

    :sswitch_8
    const-string v2, "key_incall_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "key_charge_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v2, "key_lock_screen_condition_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p1, Lcom/miui/autotask/taskitem/HotspotConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/HotspotConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/HotspotConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/h;

    invoke-direct {v2, v0}, La4/h;-><init>(Lcom/miui/autotask/taskitem/HotspotConditionItem;)V

    new-instance v3, La4/j;

    invoke-direct {v3, p1, v0, p2, p3}, La4/j;-><init>(Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->w2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :pswitch_1
    check-cast p1, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/q;

    invoke-direct {v2, v0}, La4/q;-><init>(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;)V

    new-instance v3, La4/s;

    invoke-direct {v3, p1, v0, p2, p3}, La4/s;-><init>(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->i2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :pswitch_2
    check-cast p1, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->v()[I

    move-result-object v0

    new-instance v1, La4/d2;

    invoke-direct {v1, p1, p2, p3}, La4/d2;-><init>(Lcom/miui/autotask/taskitem/BatteryConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v0, v1}, La4/e2;->l2(Landroid/content/Context;[ILa4/e2$g;)V

    goto/16 :goto_2

    :pswitch_3
    check-cast p1, Lcom/miui/autotask/taskitem/WlanConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/WlanConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/WlanConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/k;

    invoke-direct {v2, v0}, La4/k;-><init>(Lcom/miui/autotask/taskitem/WlanConditionItem;)V

    new-instance v3, La4/l;

    invoke-direct {v3, p1, v0, p2, p3}, La4/l;-><init>(Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->N2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :pswitch_4
    check-cast p1, Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/BluetoothConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/g;

    invoke-direct {v2, v0}, La4/g;-><init>(Lcom/miui/autotask/taskitem/BluetoothConditionItem;)V

    new-instance v3, La4/i;

    invoke-direct {v3, p1, v0, p2, p3}, La4/i;-><init>(Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->m2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :pswitch_5
    check-cast p1, Lcom/miui/autotask/taskitem/MuteConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/MuteConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/MuteConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/o;

    invoke-direct {v2, v0}, La4/o;-><init>(Lcom/miui/autotask/taskitem/MuteConditionItem;)V

    new-instance v3, La4/p;

    invoke-direct {v3, p1, v0, p2, p3}, La4/p;-><init>(Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->C2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :pswitch_6
    check-cast p1, Lcom/miui/autotask/taskitem/LocationConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/LocationConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/LocationConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/m;

    invoke-direct {v2, v0}, La4/m;-><init>(Lcom/miui/autotask/taskitem/LocationConditionItem;)V

    new-instance v3, La4/n;

    invoke-direct {v3, p1, v0, p2, p3}, La4/n;-><init>(Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->y2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :pswitch_7
    check-cast p1, Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/HeadsetConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/b2;

    invoke-direct {v2, v0}, La4/b2;-><init>(Lcom/miui/autotask/taskitem/HeadsetConditionItem;)V

    new-instance v3, La4/c2;

    invoke-direct {v3, p1, v0, p2, p3}, La4/c2;-><init>(Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->v2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :pswitch_8
    check-cast p1, Lcom/miui/autotask/taskitem/InCallConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/InCallConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/InCallConditionItem;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/InCallConditionItem;->y(I)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/InCallConditionItem;->w()I

    move-result v1

    new-instance v2, La4/n0;

    invoke-direct {v2, v0}, La4/n0;-><init>(Lcom/miui/autotask/taskitem/InCallConditionItem;)V

    new-instance v3, La4/y0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/y0;-><init>(Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->x2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :pswitch_9
    invoke-static {}, Lme/w;->i0()Z

    move-result v7

    move-object v5, p1

    check-cast v5, Lcom/miui/autotask/taskitem/ChargeConditionItem;

    new-instance v6, Lcom/miui/autotask/taskitem/ChargeConditionItem;

    invoke-direct {v6}, Lcom/miui/autotask/taskitem/ChargeConditionItem;-><init>()V

    if-eqz v7, :cond_c

    invoke-virtual {v5}, Lcom/miui/autotask/taskitem/ChargeConditionItem;->y()I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/miui/autotask/taskitem/ChargeConditionItem;->z(I)V

    :cond_c
    invoke-virtual {v5}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {v6, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {v5}, Lcom/miui/autotask/taskitem/ChargeConditionItem;->y()I

    move-result v3

    goto :goto_1

    :cond_e
    invoke-virtual {v5}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v3

    :goto_1
    new-instance p1, La4/r;

    invoke-direct {p1, v7, v6}, La4/r;-><init>(ZLcom/miui/autotask/taskitem/ChargeConditionItem;)V

    new-instance v0, La4/c0;

    move-object v4, v0

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, La4/c0;-><init>(Lcom/miui/autotask/taskitem/ChargeConditionItem;Lcom/miui/autotask/taskitem/ChargeConditionItem;ZLcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v3, p1, v0}, La4/e2;->n2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :pswitch_a
    check-cast p1, Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    new-instance v0, Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/LockScreenConditionItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->y()I

    move-result v1

    new-instance v2, La4/j1;

    invoke-direct {v2, v0}, La4/j1;-><init>(Lcom/miui/autotask/taskitem/LockScreenConditionItem;)V

    new-instance v3, La4/u1;

    invoke-direct {v3, p1, v0, p2, p3}, La4/u1;-><init>(Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->z2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_f
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x774d5e4a -> :sswitch_a
        -0x32b1f53e -> :sswitch_9
        -0x2d5e076d -> :sswitch_8
        -0x1ca6830c -> :sswitch_7
        -0x14193c5f -> :sswitch_6
        0x33b38cbd -> :sswitch_5
        0x39ca8748 -> :sswitch_4
        0x44bfbdf4 -> :sswitch_3
        0x55fb8a09 -> :sswitch_2
        0x69bc7bea -> :sswitch_1
        0x783ebd07 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic E1(Lcom/miui/autotask/taskitem/RotateOffResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static E2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12195c

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121947

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121964

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic F(Lcom/miui/autotask/taskitem/InCallConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->S0(Lcom/miui/autotask/taskitem/InCallConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static F0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V
    .locals 9

    if-eqz p1, :cond_19

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "key_absorbed_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "key_dial_tone_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "key_screen_display_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "key_wlan_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "key_screen_brightness_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "key_network_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "key_twinkle_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "key_touch_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "key_rotate_off_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "key_auto_brightness_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "key_disturb_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "key_mute_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "key_lock_screen_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "key_bluetooth_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "key_dark_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "key_typeface_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "key_nfc_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_11
    const-string v2, "key_save_battery_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_12
    const-string v2, "key_airplan_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_13
    const-string v2, "key_hotspot_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_14
    const-string v2, "key_eye_care_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_15
    const-string v2, "key_drive_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_16
    const-string v2, "key_location_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_17
    const-string v2, "key_adjust_volume_result_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    check-cast p1, Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->z(I)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->y(I)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->x()I

    move-result v1

    new-instance v8, La4/h1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, La4/h1;-><init>(Landroid/content/Context;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    new-instance v2, La4/i1;

    invoke-direct {v2, v0, p1, p2, p3}, La4/i1;-><init>(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v8, v2}, La4/e2;->h2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_1
    check-cast p1, Lcom/miui/autotask/taskitem/DialToneResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/DialToneResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/DialToneResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/i0;

    invoke-direct {v2, v0}, La4/i0;-><init>(Lcom/miui/autotask/taskitem/DialToneResultItem;)V

    new-instance v3, La4/j0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/j0;-><init>(Lcom/miui/autotask/taskitem/DialToneResultItem;Lcom/miui/autotask/taskitem/DialToneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->q2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_2
    check-cast p1, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/w0;

    invoke-direct {v2, v0}, La4/w0;-><init>(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;)V

    new-instance v3, La4/x0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/x0;-><init>(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->J2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_3
    check-cast p1, Lcom/miui/autotask/taskitem/WlanResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/k1;

    invoke-direct {v2, v0}, La4/k1;-><init>(Lcom/miui/autotask/taskitem/WlanResultItem;)V

    new-instance v3, La4/l1;

    invoke-direct {v3, p1, v0, p2, p3}, La4/l1;-><init>(Lcom/miui/autotask/taskitem/WlanResultItem;Lcom/miui/autotask/taskitem/WlanResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->N2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_4
    check-cast p1, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->v()I

    move-result v0

    new-instance v1, La4/e1;

    invoke-direct {v1, p1, p2, p3}, La4/e1;-><init>(Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v0, v1}, La4/e2;->I2(Landroid/content/Context;ILa4/e2$f;)V

    goto/16 :goto_1

    :pswitch_5
    check-cast p1, Lcom/miui/autotask/taskitem/NetworkResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/NetworkResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/o1;

    invoke-direct {v2, v0}, La4/o1;-><init>(Lcom/miui/autotask/taskitem/NetworkResultItem;)V

    new-instance v3, La4/p1;

    invoke-direct {v3, p1, v0, p2, p3}, La4/p1;-><init>(Lcom/miui/autotask/taskitem/NetworkResultItem;Lcom/miui/autotask/taskitem/NetworkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->D2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_6
    check-cast p1, Lcom/miui/autotask/taskitem/TwinkleResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/TwinkleResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/TwinkleResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/u0;

    invoke-direct {v2, v0}, La4/u0;-><init>(Lcom/miui/autotask/taskitem/TwinkleResultItem;)V

    new-instance v3, La4/v0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/v0;-><init>(Lcom/miui/autotask/taskitem/TwinkleResultItem;Lcom/miui/autotask/taskitem/TwinkleResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->p2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_7
    check-cast p1, Lcom/miui/autotask/taskitem/TouchResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/TouchResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/TouchResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/k0;

    invoke-direct {v2, v0}, La4/k0;-><init>(Lcom/miui/autotask/taskitem/TouchResultItem;)V

    new-instance v3, La4/l0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/l0;-><init>(Lcom/miui/autotask/taskitem/TouchResultItem;Lcom/miui/autotask/taskitem/TouchResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->L2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_8
    check-cast p1, Lcom/miui/autotask/taskitem/RotateOffResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/RotateOffResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/RotateOffResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/p0;

    invoke-direct {v2, v0}, La4/p0;-><init>(Lcom/miui/autotask/taskitem/RotateOffResultItem;)V

    new-instance v3, La4/q0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/q0;-><init>(Lcom/miui/autotask/taskitem/RotateOffResultItem;Lcom/miui/autotask/taskitem/RotateOffResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->G2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_9
    check-cast p1, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/m0;

    invoke-direct {v2, v0}, La4/m0;-><init>(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;)V

    new-instance v3, La4/o0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/o0;-><init>(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->k2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_a
    check-cast p1, Lcom/miui/autotask/taskitem/DisturbResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/g0;

    invoke-direct {v2, v0}, La4/g0;-><init>(Lcom/miui/autotask/taskitem/DisturbResultItem;)V

    new-instance v3, La4/h0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/h0;-><init>(Lcom/miui/autotask/taskitem/DisturbResultItem;Lcom/miui/autotask/taskitem/DisturbResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->O2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_b
    check-cast p1, Lcom/miui/autotask/taskitem/MuteResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/MuteResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/MuteResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/d0;

    invoke-direct {v2, v0}, La4/d0;-><init>(Lcom/miui/autotask/taskitem/MuteResultItem;)V

    new-instance v3, La4/e0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/e0;-><init>(Lcom/miui/autotask/taskitem/MuteResultItem;Lcom/miui/autotask/taskitem/MuteResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->B2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_c
    check-cast p1, Lcom/miui/autotask/taskitem/LockScreenResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/LockScreenResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->y()I

    move-result v1

    new-instance v2, La4/b1;

    invoke-direct {v2, v0}, La4/b1;-><init>(Lcom/miui/autotask/taskitem/LockScreenResultItem;)V

    new-instance v3, La4/c1;

    invoke-direct {v3, p1, v0, p2, p3}, La4/c1;-><init>(Lcom/miui/autotask/taskitem/LockScreenResultItem;Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->A2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_d
    check-cast p1, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/BluetoothResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/t;

    invoke-direct {v2, v0}, La4/t;-><init>(Lcom/miui/autotask/taskitem/BluetoothResultItem;)V

    new-instance v3, La4/f0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/f0;-><init>(Lcom/miui/autotask/taskitem/BluetoothResultItem;Lcom/miui/autotask/taskitem/BluetoothResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->m2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_e
    check-cast p1, Lcom/miui/autotask/taskitem/DarkResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/DarkResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/DarkResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/r0;

    invoke-direct {v2, v0}, La4/r0;-><init>(Lcom/miui/autotask/taskitem/DarkResultItem;)V

    new-instance v3, La4/d1;

    invoke-direct {v3, p1, v0, p2, p3}, La4/d1;-><init>(Lcom/miui/autotask/taskitem/DarkResultItem;Lcom/miui/autotask/taskitem/DarkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->o2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_f
    check-cast p1, Lcom/miui/autotask/taskitem/TypefaceResultItem;

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->v()[I

    move-result-object v0

    new-instance v1, La4/g1;

    invoke-direct {v1, p1, p2, p3}, La4/g1;-><init>(Lcom/miui/autotask/taskitem/TypefaceResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v0, v1}, La4/e2;->u2(Landroid/content/Context;[ILa4/e2$g;)V

    goto/16 :goto_1

    :pswitch_10
    check-cast p1, Lcom/miui/autotask/taskitem/NfcResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/NfcResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/NfcResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/w;

    invoke-direct {v2, v0}, La4/w;-><init>(Lcom/miui/autotask/taskitem/NfcResultItem;)V

    new-instance v3, La4/x;

    invoke-direct {v3, p1, v0, p2, p3}, La4/x;-><init>(Lcom/miui/autotask/taskitem/NfcResultItem;Lcom/miui/autotask/taskitem/NfcResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->E2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_11
    check-cast p1, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/a0;

    invoke-direct {v2, v0}, La4/a0;-><init>(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;)V

    new-instance v3, La4/b0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/b0;-><init>(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->H2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_12
    check-cast p1, Lcom/miui/autotask/taskitem/AirplaneResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/AirplaneResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/AirplaneResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/u;

    invoke-direct {v2, v0}, La4/u;-><init>(Lcom/miui/autotask/taskitem/AirplaneResultItem;)V

    new-instance v3, La4/v;

    invoke-direct {v3, p1, v0, p2, p3}, La4/v;-><init>(Lcom/miui/autotask/taskitem/AirplaneResultItem;Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->j2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_13
    check-cast p1, Lcom/miui/autotask/taskitem/HotspotResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/HotspotResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/HotspotResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/y;

    invoke-direct {v2, v0}, La4/y;-><init>(Lcom/miui/autotask/taskitem/HotspotResultItem;)V

    new-instance v3, La4/z;

    invoke-direct {v3, p1, v0, p2, p3}, La4/z;-><init>(Lcom/miui/autotask/taskitem/HotspotResultItem;Lcom/miui/autotask/taskitem/HotspotResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->w2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :pswitch_14
    check-cast p1, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/EyeCareResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/s0;

    invoke-direct {v2, v0}, La4/s0;-><init>(Lcom/miui/autotask/taskitem/EyeCareResultItem;)V

    new-instance v3, La4/t0;

    invoke-direct {v3, p1, v0, p2, p3}, La4/t0;-><init>(Lcom/miui/autotask/taskitem/EyeCareResultItem;Lcom/miui/autotask/taskitem/EyeCareResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->s2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :pswitch_15
    check-cast p1, Lcom/miui/autotask/taskitem/DriveResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/DriveResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/DriveResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/z0;

    invoke-direct {v2, v0}, La4/z0;-><init>(Lcom/miui/autotask/taskitem/DriveResultItem;)V

    new-instance v3, La4/a1;

    invoke-direct {v3, p1, v0, p2, p3}, La4/a1;-><init>(Lcom/miui/autotask/taskitem/DriveResultItem;Lcom/miui/autotask/taskitem/DriveResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->r2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :pswitch_16
    check-cast p1, Lcom/miui/autotask/taskitem/LocationResultItem;

    new-instance v0, Lcom/miui/autotask/taskitem/LocationResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/LocationResultItem;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->w()I

    move-result v1

    new-instance v2, La4/m1;

    invoke-direct {v2, v0}, La4/m1;-><init>(Lcom/miui/autotask/taskitem/LocationResultItem;)V

    new-instance v3, La4/n1;

    invoke-direct {v3, p1, v0, p2, p3}, La4/n1;-><init>(Lcom/miui/autotask/taskitem/LocationResultItem;Lcom/miui/autotask/taskitem/LocationResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v1, v2, v3}, La4/e2;->y2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :pswitch_17
    check-cast p1, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v0

    new-instance v1, La4/f1;

    invoke-direct {v1, p1, p2, p3}, La4/f1;-><init>(Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, v0, v1}, La4/e2;->M2(Landroid/content/Context;[ILa4/e2$g;)V

    :cond_19
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x779afee0 -> :sswitch_17
        -0x726e75b5 -> :sswitch_16
        -0x706dc320 -> :sswitch_15
        -0x5df0640b -> :sswitch_14
        -0x49c3855b -> :sswitch_13
        -0x2381aab7 -> :sswitch_12
        -0x14bf6d1f -> :sswitch_11
        -0x1499d47f -> :sswitch_10
        -0xc7e1fd3 -> :sswitch_f
        -0x99bcf74 -> :sswitch_e
        0xb19c004 -> :sswitch_d
        0xb676c56 -> :sswitch_c
        0x1652b6af -> :sswitch_b
        0x16bba1d5 -> :sswitch_a
        0x23dbc1b7 -> :sswitch_9
        0x24a6f621 -> :sswitch_8
        0x33d69b15 -> :sswitch_7
        0x3f126f92 -> :sswitch_6
        0x49f21f84 -> :sswitch_5
        0x5a1b125a -> :sswitch_4
        0x5c73e8d8 -> :sswitch_3
        0x669ecf85 -> :sswitch_2
        0x6f4205b7 -> :sswitch_1
        0x7e72dea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic F1(Lcom/miui/autotask/taskitem/RotateOffResultItem;Lcom/miui/autotask/taskitem/RotateOffResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static F2(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a5e

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1218b7

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic G(ZLcom/miui/autotask/taskitem/ChargeConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->Q0(ZLcom/miui/autotask/taskitem/ChargeConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static G0(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    :try_start_0
    const-class p0, Landroid/content/res/MiuiConfiguration;

    const-string v0, "UI_MODE_TYPE_SCALE_EXTRAL_SMALL"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    const/16 v0, 0xf

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    goto :goto_0

    :cond_3
    const/16 v0, 0xc

    :cond_4
    :goto_0
    return v0
.end method

.method private static synthetic G1(Lcom/miui/autotask/taskitem/EyeCareResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static G2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12195d

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121948

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a59

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic H(Lcom/miui/autotask/taskitem/DialToneResultItem;Lcom/miui/autotask/taskitem/DialToneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->z1(Lcom/miui/autotask/taskitem/DialToneResultItem;Lcom/miui/autotask/taskitem/DialToneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic H0(Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic H1(Lcom/miui/autotask/taskitem/EyeCareResultItem;Lcom/miui/autotask/taskitem/EyeCareResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static H2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12195e

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121949

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a5a

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic I(Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->V0(Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic I0(Lcom/miui/autotask/taskitem/WlanConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic I1(Lcom/miui/autotask/taskitem/TwinkleResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static I2(Landroid/content/Context;ILa4/e2$f;)V
    .locals 10

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e03de

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0a32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/androidbasewidget/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const v4, 0x7f0b0d20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0d21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const v9, 0x7f1210dc

    invoke-static {v9, v7}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v9, v6}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, La4/e2$a;

    invoke-direct {v3, v4}, La4/e2$a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a5b

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, La4/x1;

    invoke-direct {p1, p2, v1}, La4/x1;-><init>(La4/e2$f;Lmiuix/androidbasewidget/widget/SeekBar;)V

    const p2, 0x7f120f48

    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    invoke-virtual {p0, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic J(Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->X0(Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic J0(Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic J1(Lcom/miui/autotask/taskitem/TwinkleResultItem;Lcom/miui/autotask/taskitem/TwinkleResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static J2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12195f

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12194a

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a5c

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic K(Lcom/miui/autotask/taskitem/ChargeConditionItem;Lcom/miui/autotask/taskitem/ChargeConditionItem;ZLcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, La4/e2;->R0(Lcom/miui/autotask/taskitem/ChargeConditionItem;Lcom/miui/autotask/taskitem/ChargeConditionItem;ZLcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic K0(Lcom/miui/autotask/taskitem/LocationConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic K1(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static K2(Landroid/content/Context;ILmiuix/pickerwidget/widget/NumberPicker$h;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    const v1, 0x7f1202eb

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$h;)V

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1202ea

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic L(Lcom/miui/autotask/taskitem/BluetoothResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->c1(Lcom/miui/autotask/taskitem/BluetoothResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic L0(Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic L1(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static L2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121960

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12194b

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a5f

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic M(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->K1(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic M0(Lcom/miui/autotask/taskitem/MuteConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic M1(Lcom/miui/autotask/taskitem/DriveResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static M2(Landroid/content/Context;[ILa4/e2$g;)V
    .locals 13

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v3, 0x7f0b01f6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b01f7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/androidbasewidget/widget/SeekBar;

    const v5, 0x7f0b0093

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiuix/androidbasewidget/widget/SeekBar;

    const v6, 0x7f0b076b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b076c

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiuix/androidbasewidget/widget/SeekBar;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    if-eqz p1, :cond_2

    array-length v11, p1

    if-ge v11, v10, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v9, 0x1

    aget v9, p1, v9

    aget p1, p1, v8

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    move v12, v1

    move v1, p1

    move p1, v12

    :goto_1
    new-instance v8, La4/e2$b;

    invoke-direct {v8, v3}, La4/e2$b;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v8}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v3, La4/e2$c;

    invoke-direct {v3, v6}, La4/e2$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v7, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v7, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a48

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    new-instance v0, La4/a2;

    invoke-direct {v0, v4, v5, v7, p2}, La4/a2;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;La4/e2$g;)V

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    invoke-virtual {p0, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic N(Lcom/miui/autotask/taskitem/DisturbResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->w1(Lcom/miui/autotask/taskitem/DisturbResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic N0(Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic N1(Lcom/miui/autotask/taskitem/DriveResultItem;Lcom/miui/autotask/taskitem/DriveResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static N2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121961

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12194c

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a62

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic O(Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->L0(Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/taskitem/LocationConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic O0(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic O1(Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    return-void
.end method

.method public static O2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121962

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12194d

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a63

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic P(Lcom/miui/autotask/taskitem/EyeCareResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->G1(Lcom/miui/autotask/taskitem/EyeCareResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic P0(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic P1(Lcom/miui/autotask/taskitem/LockScreenResultItem;Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->y()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method private static P2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/view/FontSizeAdjustView;->getCurrentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    sget-boolean v1, Lsl/a;->a:Z

    if-nez v1, :cond_1

    const/16 v1, 0x32

    if-eq p2, v1, :cond_1

    if-ge p2, v1, :cond_0

    const v1, 0x7f121c5c

    goto :goto_0

    :cond_0
    const v1, 0x7f121c5b

    :goto_0
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, La4/d;->a(IFII)I

    move-result p2

    invoke-virtual {p1}, Lcom/miui/autotask/view/FontSizeAdjustView;->getCurrentIndex()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const p1, 0x7f0716c5

    goto :goto_1

    :cond_2
    const p1, 0x7f0716c2

    goto :goto_1

    :cond_3
    const p1, 0x7f0716c3

    goto :goto_1

    :cond_4
    const p1, 0x7f0716c4

    goto :goto_1

    :cond_5
    const p1, 0x7f0716c6

    goto :goto_1

    :cond_6
    const p1, 0x7f0716c1

    :goto_1
    invoke-static {p2, v2}, La4/d;->b(II)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static synthetic Q(Lcom/miui/autotask/taskitem/LockScreenConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->U0(Lcom/miui/autotask/taskitem/LockScreenConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic Q0(ZLcom/miui/autotask/taskitem/ChargeConditionItem;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    if-ne p3, p0, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/miui/autotask/taskitem/ChargeConditionItem;->z(I)V

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :goto_2
    return-void
.end method

.method private static synthetic Q1(Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILjava/lang/String;)V
    .locals 0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->y(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static synthetic R(La4/e2$f;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->d2(La4/e2$f;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic R0(Lcom/miui/autotask/taskitem/ChargeConditionItem;Lcom/miui/autotask/taskitem/ChargeConditionItem;ZLcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p5

    invoke-virtual {p0, p5}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/ChargeConditionItem;->y()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/ChargeConditionItem;->z(I)V

    :cond_0
    invoke-interface {p3, p4}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic R1(Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I[I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->x([I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static synthetic S(Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;La4/e2$g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->e2(Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;La4/e2$g;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic S0(Lcom/miui/autotask/taskitem/InCallConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/miui/autotask/taskitem/InCallConditionItem;->y(I)V

    return-void
.end method

.method private static synthetic S1(Lcom/miui/autotask/taskitem/TypefaceResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I[I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->w([I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static synthetic T(Lcom/miui/autotask/taskitem/EyeCareResultItem;Lcom/miui/autotask/taskitem/EyeCareResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->H1(Lcom/miui/autotask/taskitem/EyeCareResultItem;Lcom/miui/autotask/taskitem/EyeCareResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic T0(Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/InCallConditionItem;->w()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/InCallConditionItem;->y(I)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic T1(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->y(I)V

    return-void
.end method

.method public static synthetic U(Lcom/miui/autotask/taskitem/TouchResultItem;Lcom/miui/autotask/taskitem/TouchResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->B1(Lcom/miui/autotask/taskitem/TouchResultItem;Lcom/miui/autotask/taskitem/TouchResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic U0(Lcom/miui/autotask/taskitem/LockScreenConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    return-void
.end method

.method private static synthetic U1(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->y(I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static synthetic V(Lcom/miui/autotask/taskitem/WlanConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->I0(Lcom/miui/autotask/taskitem/WlanConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic V0(Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/taskitem/LockScreenConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->y()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic V1(Landroid/content/Context;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    invoke-interface {p5}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result p5

    new-instance p6, La4/y1;

    invoke-direct {p6, p1}, La4/y1;-><init>(Lcom/miui/autotask/taskitem/AbsorbedResultItem;)V

    new-instance v0, La4/z1;

    invoke-direct {v0, p2, p1, p3, p4}, La4/z1;-><init>(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    invoke-static {p0, p5, p6, v0}, La4/e2;->K2(Landroid/content/Context;ILmiuix/pickerwidget/widget/NumberPicker$h;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p1, p6}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->z(I)V

    return-void
.end method

.method public static synthetic W(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->a2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;I)V

    return-void
.end method

.method private static synthetic W0(Lcom/miui/autotask/taskitem/HeadsetConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic W1(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->x()I

    move-result p4

    const/4 p5, 0x3

    if-eq p4, p5, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->x()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->z(I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic X(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->C1(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic X0(Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/taskitem/HeadsetConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic X1(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/view/View;)V
    .locals 0

    const/4 p8, 0x1

    invoke-static {p8, p0, p1, p2, p3}, La4/e2;->A0(ZLandroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    const/4 p0, 0x0

    invoke-static {p0, p4, p5, p6, p7}, La4/e2;->A0(ZLandroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Lcom/miui/autotask/taskitem/BluetoothConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->b1(Lcom/miui/autotask/taskitem/BluetoothConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic Y0(Lcom/miui/autotask/taskitem/BatteryConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I[I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->w([I)V

    invoke-interface {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic Y1(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/view/View;)V
    .locals 0

    const/4 p8, 0x0

    invoke-static {p8, p0, p1, p2, p3}, La4/e2;->A0(ZLandroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    const/4 p0, 0x1

    invoke-static {p0, p4, p5, p6, p7}, La4/e2;->A0(ZLandroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/miui/autotask/taskitem/TypefaceResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->S1(Lcom/miui/autotask/taskitem/TypefaceResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I[I)V

    return-void
.end method

.method private static synthetic Z0(Lcom/miui/autotask/taskitem/HotspotConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic Z1(La4/e2$g;Landroidx/constraintlayout/widget/ConstraintLayout;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 p4, 0x1

    xor-int/2addr p1, p4

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p3

    const/4 p5, 0x3

    new-array p5, p5, [I

    const/4 v0, 0x0

    aput p1, p5, v0

    aput p2, p5, p4

    const/4 p1, 0x2

    aput p3, p5, p1

    invoke-interface {p0, p5}, La4/e2$g;->a([I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/autotask/taskitem/MuteResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->u1(Lcom/miui/autotask/taskitem/MuteResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/autotask/taskitem/BluetoothResultItem;Lcom/miui/autotask/taskitem/BluetoothResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->d1(Lcom/miui/autotask/taskitem/BluetoothResultItem;Lcom/miui/autotask/taskitem/BluetoothResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic a1(Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    return-void
.end method

.method private static synthetic a2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->P2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/autotask/taskitem/RotateOffResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->E1(Lcom/miui/autotask/taskitem/RotateOffResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/autotask/taskitem/DisturbResultItem;Lcom/miui/autotask/taskitem/DisturbResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->x1(Lcom/miui/autotask/taskitem/DisturbResultItem;Lcom/miui/autotask/taskitem/DisturbResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic b1(Lcom/miui/autotask/taskitem/BluetoothConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic b2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->P2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/autotask/taskitem/LocationResultItem;Lcom/miui/autotask/taskitem/LocationResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->j1(Lcom/miui/autotask/taskitem/LocationResultItem;Lcom/miui/autotask/taskitem/LocationResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->a1(Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/taskitem/HotspotConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic c1(Lcom/miui/autotask/taskitem/BluetoothResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic c2(Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;La4/e2$g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/autotask/view/FontSizeAdjustView;->getCurrentIndex()I

    move-result p0

    invoke-static {p0}, La4/e2;->G0(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    if-eqz p2, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p0, p3, p4

    const/4 p0, 0x1

    aput p1, p3, p0

    invoke-interface {p2, p3}, La4/e2$g;->a([I)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/miui/autotask/taskitem/NfcResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->o1(Lcom/miui/autotask/taskitem/NfcResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->J0(Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/taskitem/WlanConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic d1(Lcom/miui/autotask/taskitem/BluetoothResultItem;Lcom/miui/autotask/taskitem/BluetoothResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method private static synthetic d2(La4/e2$f;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, La4/e2$f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/miui/autotask/taskitem/LocationResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->i1(Lcom/miui/autotask/taskitem/LocationResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->O0(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic e1(Lcom/miui/autotask/taskitem/DarkResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static synthetic e2(Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;La4/e2$g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    if-eqz p3, :cond_0

    const/4 p4, 0x3

    new-array p4, p4, [I

    const/4 p5, 0x0

    aput p0, p4, p5

    const/4 p0, 0x1

    aput p1, p4, p0

    const/4 p0, 0x2

    aput p2, p4, p0

    invoke-interface {p3, p4}, La4/e2$g;->a([I)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/miui/autotask/taskitem/HotspotConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->Z0(Lcom/miui/autotask/taskitem/HotspotConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/autotask/taskitem/TouchResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->A1(Lcom/miui/autotask/taskitem/TouchResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic f1(Lcom/miui/autotask/taskitem/DarkResultItem;Lcom/miui/autotask/taskitem/DarkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method private static f2(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v1, 0xb

    if-eq p0, v1, :cond_2

    const/16 v1, 0xc

    if-eq p0, v1, :cond_4

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :cond_4
    :goto_0
    return v0
.end method

.method public static synthetic g(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->t1(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;La4/e2$g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La4/e2;->c2(Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;La4/e2$g;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic g1(Lcom/miui/autotask/taskitem/WlanResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private static g2(Landroid/widget/TextView;I)V
    .locals 4

    invoke-static {}, Lcom/miui/common/e;->b()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic h(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->W1(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/autotask/taskitem/WlanResultItem;Lcom/miui/autotask/taskitem/WlanResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->h1(Lcom/miui/autotask/taskitem/WlanResultItem;Lcom/miui/autotask/taskitem/WlanResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic h1(Lcom/miui/autotask/taskitem/WlanResultItem;Lcom/miui/autotask/taskitem/WlanResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static h2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f10013a

    const/16 v2, 0x1e

    invoke-static {v1, v2}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/16 v3, 0x3c

    invoke-static {v1, v3}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/16 v3, 0x5a

    invoke-static {v1, v3}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f1202ea

    invoke-static {v2, v1}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a47

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic i(Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->O1(Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->N0(Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/taskitem/MuteConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic i1(Lcom/miui/autotask/taskitem/LocationResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static i2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f1218ac

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1218a7

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a03

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic j(Lcom/miui/autotask/taskitem/TwinkleResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->I1(Lcom/miui/autotask/taskitem/TwinkleResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/autotask/taskitem/BatteryConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->Y0(Lcom/miui/autotask/taskitem/BatteryConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I[I)V

    return-void
.end method

.method private static synthetic j1(Lcom/miui/autotask/taskitem/LocationResultItem;Lcom/miui/autotask/taskitem/LocationResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static j2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12194e

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12193b

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a49

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic k(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->D1(Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/autotask/taskitem/NetworkResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->k1(Lcom/miui/autotask/taskitem/NetworkResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic k1(Lcom/miui/autotask/taskitem/NetworkResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static k2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12194f

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12193c

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a4b

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic l(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->L1(Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l0(Landroid/content/Context;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, La4/e2;->V1(Landroid/content/Context;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic l1(Lcom/miui/autotask/taskitem/NetworkResultItem;Lcom/miui/autotask/taskitem/NetworkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static l2(Landroid/content/Context;[ILa4/e2$g;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e00a2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b096d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0b0567

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0b0b80

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/TextView;

    const v6, 0x7f0b0140

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lmiuix/androidbasewidget/widget/SeekBar;

    const v7, 0x7f0b06ad

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0b0995

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0b0a66

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/Group;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v17, v2

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v16, v2, v18

    const v4, 0x7f1210dc

    invoke-static {v4, v2}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/16 v19, 0x64

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v4, v18

    const v2, 0x7f1210dc

    invoke-static {v2, v4}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v16, v10, v18

    invoke-static {v2, v10}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v20, v10, v18

    invoke-static {v2, v10}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f1218ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f1218a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, La4/e2$d;

    invoke-direct {v2, v8}, La4/e2$d;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v13, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v2, La4/e2$e;

    invoke-direct {v2, v7}, La4/e2$e;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v6, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    array-length v4, v1

    if-ge v4, v2, :cond_1

    :cond_0
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    :cond_1
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    aget v9, v1, v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v18

    const v9, 0x7f1210dc

    invoke-static {v9, v4}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v8, 0x2

    aget v10, v1, v8

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v18

    invoke-static {v9, v4}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget v4, v1, v2

    invoke-virtual {v13, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    aget v4, v1, v8

    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    aget v4, v1, v18

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move/from16 v4, v18

    :goto_0
    invoke-static {v4, v3, v15, v12, v13}, La4/e2;->A0(ZLandroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    aget v1, v1, v18

    if-eqz v1, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move/from16 v4, v18

    :goto_1
    invoke-static {v4, v14, v5, v11, v6}, La4/e2;->A0(ZLandroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    new-instance v1, La4/t1;

    move-object v2, v5

    move-object v5, v1

    move-object v4, v6

    move-object v6, v3

    move-object v7, v15

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object/from16 v16, v11

    move-object v11, v2

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    move-object/from16 p1, v13

    move-object v13, v4

    invoke-direct/range {v5 .. v13}, La4/t1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, La4/v1;

    move-object v5, v1

    move-object/from16 v8, v18

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v13}, La4/v1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121a05

    invoke-static {v0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f48

    new-instance v2, La4/w1;

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    invoke-direct {v2, v5, v3, v7, v4}, La4/w1;-><init>(La4/e2$g;Landroidx/constraintlayout/widget/ConstraintLayout;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void

    :array_0
    .array-data 4
        0x1
        0x14
        0x3c
    .end array-data
.end method

.method public static synthetic m(Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->H0(Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/taskitem/BluetoothConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/miui/autotask/taskitem/LocationConditionItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->K0(Lcom/miui/autotask/taskitem/LocationConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic m1(Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static m2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121950

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12193d

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a4a

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic n(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->U1(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lcom/miui/autotask/taskitem/AbsorbedResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/miui/autotask/taskitem/MuteResultItem;Lcom/miui/autotask/taskitem/MuteResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->v1(Lcom/miui/autotask/taskitem/MuteResultItem;Lcom/miui/autotask/taskitem/MuteResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic n1(Lcom/miui/autotask/taskitem/AirplaneResultItem;Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static n2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    invoke-static {}, Lme/w;->i0()Z

    move-result v0

    const v1, 0x7f1218ab

    const/4 v2, 0x1

    const v3, 0x7f1218a8

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-static {v3}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    const v3, 0x7f1218b2

    invoke-static {v3}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f1218b3

    invoke-static {v2}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x3

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v5, [Ljava/lang/CharSequence;

    invoke-static {v3}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121963

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic o(Lcom/miui/autotask/taskitem/DriveResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->M1(Lcom/miui/autotask/taskitem/DriveResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o0(Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->T0(Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic o1(Lcom/miui/autotask/taskitem/NfcResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static o2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121951

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12193e

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a4c

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic p(Lcom/miui/autotask/taskitem/HotspotResultItem;Lcom/miui/autotask/taskitem/HotspotResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->r1(Lcom/miui/autotask/taskitem/HotspotResultItem;Lcom/miui/autotask/taskitem/HotspotResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/miui/autotask/taskitem/RotateOffResultItem;Lcom/miui/autotask/taskitem/RotateOffResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->F1(Lcom/miui/autotask/taskitem/RotateOffResultItem;Lcom/miui/autotask/taskitem/RotateOffResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic p1(Lcom/miui/autotask/taskitem/NfcResultItem;Lcom/miui/autotask/taskitem/NfcResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static p2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121952

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12193f

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a60

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic q(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->T1(Lcom/miui/autotask/taskitem/AbsorbedResultItem;Lmiuix/pickerwidget/widget/NumberPicker;II)V

    return-void
.end method

.method public static synthetic q0(Lcom/miui/autotask/taskitem/HotspotResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->q1(Lcom/miui/autotask/taskitem/HotspotResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic q1(Lcom/miui/autotask/taskitem/HotspotResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static q2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121953

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121940

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a4d

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic r(Lcom/miui/autotask/taskitem/DialToneResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->y1(Lcom/miui/autotask/taskitem/DialToneResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r0(La4/e2$g;Landroidx/constraintlayout/widget/ConstraintLayout;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->Z1(La4/e2$g;Landroidx/constraintlayout/widget/ConstraintLayout;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic r1(Lcom/miui/autotask/taskitem/HotspotResultItem;Lcom/miui/autotask/taskitem/HotspotResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static r2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121955

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121941

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a4e

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic s(Lcom/miui/autotask/taskitem/TwinkleResultItem;Lcom/miui/autotask/taskitem/TwinkleResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->J1(Lcom/miui/autotask/taskitem/TwinkleResultItem;Lcom/miui/autotask/taskitem/TwinkleResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/miui/autotask/taskitem/NfcResultItem;Lcom/miui/autotask/taskitem/NfcResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->p1(Lcom/miui/autotask/taskitem/NfcResultItem;Lcom/miui/autotask/taskitem/NfcResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic s1(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static s2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121956

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121942

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a50

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic t(Lcom/miui/autotask/taskitem/DarkResultItem;Lcom/miui/autotask/taskitem/DarkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->f1(Lcom/miui/autotask/taskitem/DarkResultItem;Lcom/miui/autotask/taskitem/DarkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic t0(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->P0(Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/taskitem/AbsorbedConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic t1(Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Lcom/miui/autotask/taskitem/SaveBatteryResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static t2(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a51

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1218b4

    invoke-static {v0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120f48

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic u(Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->m1(Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u0(Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->R1(Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I[I)V

    return-void
.end method

.method private static synthetic u1(Lcom/miui/autotask/taskitem/MuteResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static u2(Landroid/content/Context;[ILa4/e2$g;)V
    .locals 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    array-length v3, p1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget v3, p1, v3

    aget p1, p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, La4/e;->a()I

    move-result v3

    invoke-static {p0}, La4/e;->c(Landroid/content/Context;)I

    move-result p1

    :goto_1
    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    const v3, 0x7f0b0428

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0429

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/view/FontSizeAdjustView;

    const v5, 0x7f0b042a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-static {v1}, La4/e2;->f2(I)I

    move-result v1

    invoke-virtual {v4}, Lcom/miui/autotask/view/FontSizeAdjustView;->getCurrentText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Lcom/miui/autotask/view/FontSizeAdjustView;->setCurrentPointIndex(I)V

    invoke-virtual {v4, v1}, Lcom/miui/autotask/view/FontSizeAdjustView;->setLastCurrentPointIndex(I)V

    new-instance v1, La4/q1;

    invoke-direct {v1, v3, v4, v5}, La4/q1;-><init>(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;)V

    invoke-virtual {v4, v1}, Lcom/miui/autotask/view/FontSizeAdjustView;->setFontSizeChangeListener(Lcom/miui/autotask/view/FontSizeAdjustView$a;)V

    invoke-virtual {v5, p1}, Lcom/miui/autotask/view/FontWeightAdjustView;->g(I)V

    new-instance p1, La4/r1;

    invoke-direct {p1, v3, v4, v5}, La4/r1;-><init>(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;)V

    invoke-virtual {v5, p1}, Lcom/miui/autotask/view/FontWeightAdjustView;->setFontWeightChangeListener(Lcom/miui/autotask/view/FontWeightAdjustView$b;)V

    invoke-static {v3, v4, v5}, La4/e2;->P2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a61

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    new-instance v0, La4/s1;

    invoke-direct {v0, v4, v5, p2}, La4/s1;-><init>(Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;La4/e2$g;)V

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    invoke-virtual {p0, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic v(Lcom/miui/autotask/taskitem/LockScreenResultItem;Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->P1(Lcom/miui/autotask/taskitem/LockScreenResultItem;Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic v0(Lcom/miui/autotask/taskitem/DarkResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La4/e2;->e1(Lcom/miui/autotask/taskitem/DarkResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic v1(Lcom/miui/autotask/taskitem/MuteResultItem;Lcom/miui/autotask/taskitem/MuteResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static v2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f1218a9

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1218b1

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a0c

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic w(Lcom/miui/autotask/taskitem/DriveResultItem;Lcom/miui/autotask/taskitem/DriveResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->N1(Lcom/miui/autotask/taskitem/DriveResultItem;Lcom/miui/autotask/taskitem/DriveResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w0(Lcom/miui/autotask/taskitem/NetworkResultItem;Lcom/miui/autotask/taskitem/NetworkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->l1(Lcom/miui/autotask/taskitem/NetworkResultItem;Lcom/miui/autotask/taskitem/NetworkResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic w1(Lcom/miui/autotask/taskitem/DisturbResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static w2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121957

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121943

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a52

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic x(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La4/e2;->b2(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;I)V

    return-void
.end method

.method public static synthetic x0(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p8}, La4/e2;->Y1(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic x1(Lcom/miui/autotask/taskitem/DisturbResultItem;Lcom/miui/autotask/taskitem/DisturbResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static x2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121a0e

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f1218aa

    invoke-static {v2}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic y(Lcom/miui/autotask/taskitem/AirplaneResultItem;Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La4/e2;->n1(Lcom/miui/autotask/taskitem/AirplaneResultItem;Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic y0(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, La4/e2;->D0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic y1(Lcom/miui/autotask/taskitem/DialToneResultItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static y2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f121958

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121944

    invoke-static {v1}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a53

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic z(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p8}, La4/e2;->X1(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/view/View;)V

    return-void
.end method

.method static synthetic z0(Landroid/widget/TextView;I)V
    .locals 0

    invoke-static {p0, p1}, La4/e2;->g2(Landroid/widget/TextView;I)V

    return-void
.end method

.method private static synthetic z1(Lcom/miui/autotask/taskitem/DialToneResultItem;Lcom/miui/autotask/taskitem/DialToneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public static z2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/CharSequence;

    const v2, 0x7f120316

    invoke-static {v2}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100138

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/16 v0, 0xa

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const/16 v0, 0xf

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const/16 v0, 0x1e

    invoke-static {v2, v0}, La4/e2;->B0(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121a12

    invoke-static {p0}, La4/e2;->C0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120f48

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120499

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
