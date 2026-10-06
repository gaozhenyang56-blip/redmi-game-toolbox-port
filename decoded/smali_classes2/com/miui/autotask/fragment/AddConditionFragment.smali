.class public Lcom/miui/autotask/fragment/AddConditionFragment;
.super Lcom/miui/autotask/fragment/AddBaseFragment;
.source "SourceFile"


# instance fields
.field private d:Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

.field private e:Lcom/miui/autotask/taskitem/LeaveConditionItem;

.field private f:Lcom/miui/autotask/taskitem/BluetoothConditionItem;

.field private g:Lcom/miui/autotask/taskitem/WlanConditionItem;

.field private h:Lcom/miui/autotask/taskitem/LocationConditionItem;

.field private i:Lcom/miui/autotask/taskitem/MuteConditionItem;

.field private j:Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

.field private k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

.field private l:Lcom/miui/autotask/taskitem/InCallConditionItem;

.field private m:Lcom/miui/autotask/taskitem/LockScreenConditionItem;

.field private n:Lcom/miui/autotask/taskitem/HeadsetConditionItem;

.field private o:Lcom/miui/autotask/taskitem/BatteryConditionItem;

.field private p:Lcom/miui/autotask/taskitem/HotspotConditionItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddBaseFragment;-><init>()V

    return-void
.end method

.method private synthetic A0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->j:Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->j:Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->j:Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic B0([I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->o:Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->w([I)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->o:Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic C0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->f:Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/BluetoothConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->f:Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->f:Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private synthetic D0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->f:Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/BluetoothConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->f:Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->f:Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic E0(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/ChargeConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/ChargeConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    :cond_0
    invoke-static {}, Lme/w;->i0()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    if-ne p2, v2, :cond_2

    move p2, v1

    :cond_2
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/ChargeConditionItem;->z(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :goto_2
    return-void
.end method

.method private synthetic F0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/ChargeConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/ChargeConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->k:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic G0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->n:Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/HeadsetConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->n:Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->n:Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private synthetic H0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->n:Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/HeadsetConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->n:Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->n:Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic I0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->p:Lcom/miui/autotask/taskitem/HotspotConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/HotspotConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/HotspotConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->p:Lcom/miui/autotask/taskitem/HotspotConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->p:Lcom/miui/autotask/taskitem/HotspotConditionItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private synthetic J0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->p:Lcom/miui/autotask/taskitem/HotspotConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/HotspotConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/HotspotConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->p:Lcom/miui/autotask/taskitem/HotspotConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->p:Lcom/miui/autotask/taskitem/HotspotConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic K0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->l:Lcom/miui/autotask/taskitem/InCallConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/InCallConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->l:Lcom/miui/autotask/taskitem/InCallConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->l:Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/InCallConditionItem;->y(I)V

    return-void
.end method

.method private synthetic L0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->l:Lcom/miui/autotask/taskitem/InCallConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/InCallConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->l:Lcom/miui/autotask/taskitem/InCallConditionItem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/InCallConditionItem;->y(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->l:Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic M0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->h:Lcom/miui/autotask/taskitem/LocationConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LocationConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LocationConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->h:Lcom/miui/autotask/taskitem/LocationConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->h:Lcom/miui/autotask/taskitem/LocationConditionItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private synthetic N0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->h:Lcom/miui/autotask/taskitem/LocationConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LocationConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LocationConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->h:Lcom/miui/autotask/taskitem/LocationConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->h:Lcom/miui/autotask/taskitem/LocationConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic O0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->m:Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LockScreenConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->m:Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->m:Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    return-void
.end method

.method private synthetic P0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->m:Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LockScreenConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->m:Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->m:Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic Q0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->i:Lcom/miui/autotask/taskitem/MuteConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/MuteConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/MuteConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->i:Lcom/miui/autotask/taskitem/MuteConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->i:Lcom/miui/autotask/taskitem/MuteConditionItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private synthetic R0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->i:Lcom/miui/autotask/taskitem/MuteConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/MuteConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/MuteConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->i:Lcom/miui/autotask/taskitem/MuteConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->i:Lcom/miui/autotask/taskitem/MuteConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private synthetic S0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->g:Lcom/miui/autotask/taskitem/WlanConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/WlanConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/WlanConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->g:Lcom/miui/autotask/taskitem/WlanConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->g:Lcom/miui/autotask/taskitem/WlanConditionItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private synthetic T0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->g:Lcom/miui/autotask/taskitem/WlanConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/WlanConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/WlanConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->g:Lcom/miui/autotask/taskitem/WlanConditionItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->g:Lcom/miui/autotask/taskitem/WlanConditionItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private U0(Lcom/miui/autotask/taskitem/TaskItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_hotspot_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "key_absorbed_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "key_bluetooth_disconnect_device_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "key_wlan_disconnect_specified_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "key_battery_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "key_to_somewhere_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "key_wlan_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "key_bluetooth_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "key_mute_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "key_location_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "key_headset_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "key_leave_activity_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "key_incall_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_d
    const-string v0, "key_charge_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_e
    const-string v0, "key_start_activity_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_f
    const-string v0, "key_custom_time_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_10
    const-string v0, "key_bluetooth_connect_device_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_11
    const-string v0, "key_leave_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_12
    const-string v0, "key_wlan_connect_specified_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    move v3, v1

    goto :goto_0

    :sswitch_13
    const-string v0, "key_lock_screen_condition_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    move v3, v2

    :goto_0
    const-string p1, ""

    const/16 v0, 0x66

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->a1()V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->V0()V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1, v0, v2}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->I0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1, v0, v2}, Lcom/miui/autotask/activity/WlanSelectActivity;->J0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->W0()V

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->d:Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    if-nez p1, :cond_14

    new-instance p1, Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->d:Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    :cond_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->d:Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->f1()V

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->X0()V

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->e1()V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->c1()V

    goto :goto_3

    :pswitch_a
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->Z0()V

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    invoke-direct {v1}, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;-><init>()V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->b1()V

    goto :goto_3

    :pswitch_d
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->Y0()V

    goto :goto_3

    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    invoke-direct {v1}, Lcom/miui/autotask/taskitem/StartActivityConditionItem;-><init>()V

    :goto_1
    invoke-static {p1, v1, v0}, Lcom/miui/autotask/activity/SelectAppActivity;->u0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/LunchAppItem;I)V

    goto :goto_3

    :pswitch_f
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddBaseFragment;->a:Lcom/miui/autotask/taskitem/TaskItem;

    instance-of p1, p1, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddBaseFragment;->a:Lcom/miui/autotask/taskitem/TaskItem;

    check-cast v1, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-static {p1, v1, v0}, Lcom/miui/autotask/activity/AddTimeConditionActivity;->l0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/CustomTimeConditionItem;I)V

    goto :goto_3

    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/autotask/activity/AddTimeConditionActivity;->k0(Landroid/app/Activity;I)V

    goto :goto_3

    :pswitch_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->I0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_3

    :pswitch_11
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->e:Lcom/miui/autotask/taskitem/LeaveConditionItem;

    if-nez p1, :cond_16

    new-instance p1, Lcom/miui/autotask/taskitem/LeaveConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LeaveConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->e:Lcom/miui/autotask/taskitem/LeaveConditionItem;

    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->e:Lcom/miui/autotask/taskitem/LeaveConditionItem;

    :goto_2
    invoke-static {p1, v1, v0}, Lcom/miui/autotask/activity/AddressSelectActivity;->D0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/AddressTaskItem;I)V

    goto :goto_3

    :pswitch_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/miui/autotask/activity/WlanSelectActivity;->J0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_3

    :pswitch_13
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->d1()V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x774d5e4a -> :sswitch_13
        -0x66c04728 -> :sswitch_12
        -0x5e12c7e1 -> :sswitch_11
        -0x5a2c5486 -> :sswitch_10
        -0x4fef2c85 -> :sswitch_f
        -0x3586c3d6 -> :sswitch_e
        -0x32b1f53e -> :sswitch_d
        -0x2d5e076d -> :sswitch_c
        -0x2a64a881 -> :sswitch_b
        -0x1ca6830c -> :sswitch_a
        -0x14193c5f -> :sswitch_9
        0x33b38cbd -> :sswitch_8
        0x39ca8748 -> :sswitch_7
        0x44bfbdf4 -> :sswitch_6
        0x4b717467 -> :sswitch_5
        0x55fb8a09 -> :sswitch_4
        0x5991f64c -> :sswitch_3
        0x614f3aae -> :sswitch_2
        0x69bc7bea -> :sswitch_1
        0x783ebd07 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private V0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/c;

    invoke-direct {v1, p0}, Lv3/c;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/d;

    invoke-direct {v2, p0}, Lv3/d;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->i2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private W0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->o:Lcom/miui/autotask/taskitem/BatteryConditionItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->o:Lcom/miui/autotask/taskitem/BatteryConditionItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->o:Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->v()[I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lv3/n;

    invoke-direct {v2, p0}, Lv3/n;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    invoke-static {v1, v0, v2}, La4/e2;->l2(Landroid/content/Context;[ILa4/e2$g;)V

    return-void
.end method

.method private X0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/t;

    invoke-direct {v1, p0}, Lv3/t;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/u;

    invoke-direct {v2, p0}, Lv3/u;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->m2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private Y0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/r;

    invoke-direct {v1, p0}, Lv3/r;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/s;

    invoke-direct {v2, p0}, Lv3/s;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->n2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private Z0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/p;

    invoke-direct {v1, p0}, Lv3/p;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/q;

    invoke-direct {v2, p0}, Lv3/q;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->v2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/l;

    invoke-direct {v1, p0}, Lv3/l;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/o;

    invoke-direct {v2, p0}, Lv3/o;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->w2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->E0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private b1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/i;

    invoke-direct {v1, p0}, Lv3/i;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/j;

    invoke-direct {v2, p0}, Lv3/j;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->x2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->P0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private c1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/e;

    invoke-direct {v1, p0}, Lv3/e;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/f;

    invoke-direct {v2, p0}, Lv3/f;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->y2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->R0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private d1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/k;

    invoke-direct {v1, p0}, Lv3/k;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/m;

    invoke-direct {v2, p0}, Lv3/m;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->z2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->G0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private e1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/v;

    invoke-direct {v1, p0}, Lv3/v;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/b;

    invoke-direct {v2, p0}, Lv3/b;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->C2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->H0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private f1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/g;

    invoke-direct {v1, p0}, Lv3/g;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    new-instance v2, Lv3/h;

    invoke-direct {v2, p0}, Lv3/h;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->N2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/autotask/fragment/AddConditionFragment;Lcom/miui/autotask/taskitem/TaskItem;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->y0(Lcom/miui/autotask/taskitem/TaskItem;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->Q0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->C0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->D0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->L0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->T0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->N0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->F0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->K0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->M0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->A0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->O0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->I0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic t0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->z0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->J0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic v0(Lcom/miui/autotask/fragment/AddConditionFragment;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/AddConditionFragment;->B0([I)V

    return-void
.end method

.method public static synthetic w0(Lcom/miui/autotask/fragment/AddConditionFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddConditionFragment;->S0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private x0()V
    .locals 7

    invoke-static {}, La4/f2;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, La4/f2;->B(Ljava/lang/String;)Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v4

    new-instance v5, Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/autotask/fragment/AddBaseFragment;->c:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v6

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->i()I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(I)V

    new-instance v6, Lv3/a;

    invoke-direct {v6, p0, v4}, Lv3/a;-><init>(Lcom/miui/autotask/fragment/AddConditionFragment;Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private synthetic y0(Lcom/miui/autotask/taskitem/TaskItem;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/AddConditionFragment;->U0(Lcom/miui/autotask/taskitem/TaskItem;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic z0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->j:Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->j:Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->j:Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150001

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddConditionFragment;->x0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "taskItem"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcom/miui/autotask/taskitem/LeaveConditionItem;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/autotask/taskitem/LeaveConditionItem;

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->e:Lcom/miui/autotask/taskitem/LeaveConditionItem;

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddConditionFragment;->d:Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    :cond_2
    :goto_0
    return-void
.end method
