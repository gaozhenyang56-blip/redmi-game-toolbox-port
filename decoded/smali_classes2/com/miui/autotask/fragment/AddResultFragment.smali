.class public Lcom/miui/autotask/fragment/AddResultFragment;
.super Lcom/miui/autotask/fragment/AddBaseFragment;
.source "SourceFile"


# instance fields
.field private A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

.field private d:Lcom/miui/autotask/taskitem/DarkResultItem;

.field private e:Lcom/miui/autotask/taskitem/BluetoothResultItem;

.field private f:Lcom/miui/autotask/taskitem/WlanResultItem;

.field private g:Lcom/miui/autotask/taskitem/LocationResultItem;

.field private h:Lcom/miui/autotask/taskitem/NetworkResultItem;

.field private i:Lcom/miui/autotask/taskitem/AirplaneResultItem;

.field private j:Lcom/miui/autotask/taskitem/NfcResultItem;

.field private k:Lcom/miui/autotask/taskitem/HotspotResultItem;

.field private l:Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

.field private m:Lcom/miui/autotask/taskitem/MuteResultItem;

.field private n:Lcom/miui/autotask/taskitem/DisturbResultItem;

.field private o:Lcom/miui/autotask/taskitem/DialToneResultItem;

.field private p:Lcom/miui/autotask/taskitem/TouchResultItem;

.field private q:Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

.field private r:Lcom/miui/autotask/taskitem/RotateOffResultItem;

.field private s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

.field private t:Lcom/miui/autotask/taskitem/TwinkleResultItem;

.field private u:Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

.field private v:Lcom/miui/autotask/taskitem/DriveResultItem;

.field private w:Lcom/miui/autotask/taskitem/LockScreenResultItem;

.field private x:Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

.field private y:Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

.field private z:Lcom/miui/autotask/taskitem/TypefaceResultItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic A0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->m1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic A1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->w:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LockScreenResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->w:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->w:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic B0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->A1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic B1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->m:Lcom/miui/autotask/taskitem/MuteResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/MuteResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/MuteResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->m:Lcom/miui/autotask/taskitem/MuteResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->m:Lcom/miui/autotask/taskitem/MuteResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic C0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->R1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic C1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->m:Lcom/miui/autotask/taskitem/MuteResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/MuteResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/MuteResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->m:Lcom/miui/autotask/taskitem/MuteResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->m:Lcom/miui/autotask/taskitem/MuteResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic D0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->n1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic D1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->h:Lcom/miui/autotask/taskitem/NetworkResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/NetworkResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->h:Lcom/miui/autotask/taskitem/NetworkResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->h:Lcom/miui/autotask/taskitem/NetworkResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic E0(Lcom/miui/autotask/fragment/AddResultFragment;Lcom/miui/autotask/taskitem/TaskItem;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->a1(Lcom/miui/autotask/taskitem/TaskItem;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic E1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->h:Lcom/miui/autotask/taskitem/NetworkResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/NetworkResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->h:Lcom/miui/autotask/taskitem/NetworkResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->h:Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic F0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->U1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic F1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->j:Lcom/miui/autotask/taskitem/NfcResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/NfcResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/NfcResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->j:Lcom/miui/autotask/taskitem/NfcResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->j:Lcom/miui/autotask/taskitem/NfcResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic G0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->G1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic G1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->j:Lcom/miui/autotask/taskitem/NfcResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/NfcResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/NfcResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->j:Lcom/miui/autotask/taskitem/NfcResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->j:Lcom/miui/autotask/taskitem/NfcResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic H0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->L1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic H1(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Lcom/miui/autotask/taskitem/SwitchResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/SwitchResultItem;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic I0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->Q1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic I1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->r:Lcom/miui/autotask/taskitem/RotateOffResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/RotateOffResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/RotateOffResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->r:Lcom/miui/autotask/taskitem/RotateOffResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->r:Lcom/miui/autotask/taskitem/RotateOffResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic J0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->b1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic J1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->r:Lcom/miui/autotask/taskitem/RotateOffResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/RotateOffResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/RotateOffResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->r:Lcom/miui/autotask/taskitem/RotateOffResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->r:Lcom/miui/autotask/taskitem/RotateOffResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic K0(Lcom/miui/autotask/fragment/AddResultFragment;Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autotask/fragment/AddResultFragment;->P1(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    return-void
.end method

.method private synthetic K1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->l:Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->l:Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->l:Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic L0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->O1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic L1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->l:Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->l:Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->l:Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic M0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->l1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic M1(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->x:Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->x:Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->x:Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->y(I)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->x:Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic N0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->q1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic N1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->u:Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->u:Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->u:Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic O0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->V1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic O1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->u:Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->u:Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->u:Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic P0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->S1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic P1(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-virtual {p1, p3}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->y(I)V

    return-void
.end method

.method public static synthetic Q0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->f1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic Q1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic R0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->F1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic R1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->p:Lcom/miui/autotask/taskitem/TouchResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/TouchResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/TouchResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->p:Lcom/miui/autotask/taskitem/TouchResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->p:Lcom/miui/autotask/taskitem/TouchResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic S0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->K1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic S1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->p:Lcom/miui/autotask/taskitem/TouchResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/TouchResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/TouchResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->p:Lcom/miui/autotask/taskitem/TouchResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->p:Lcom/miui/autotask/taskitem/TouchResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic T0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->X1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic T1([I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->y:Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->y:Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->y:Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->x([I)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->y:Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic U0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->E1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic U1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->f:Lcom/miui/autotask/taskitem/WlanResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->f:Lcom/miui/autotask/taskitem/WlanResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->f:Lcom/miui/autotask/taskitem/WlanResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic V0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->I1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic V1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->f:Lcom/miui/autotask/taskitem/WlanResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->f:Lcom/miui/autotask/taskitem/WlanResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->f:Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic W0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->x1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic W1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->n:Lcom/miui/autotask/taskitem/DisturbResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->n:Lcom/miui/autotask/taskitem/DisturbResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->n:Lcom/miui/autotask/taskitem/DisturbResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method public static synthetic X0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->k1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic X1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->n:Lcom/miui/autotask/taskitem/DisturbResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->n:Lcom/miui/autotask/taskitem/DisturbResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->n:Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method public static synthetic Y0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->B1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private Y1(Lcom/miui/autotask/taskitem/TaskItem;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_absorbed_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "key_dial_tone_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "key_screen_display_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "key_wlan_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "key_screen_brightness_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "key_network_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "key_twinkle_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "key_touch_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "key_rotate_off_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "key_auto_brightness_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "key_disturb_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "key_mute_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "key_lock_screen_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "key_bluetooth_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "key_switch_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "key_dark_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "key_typeface_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "key_nfc_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "key_save_battery_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "key_airplan_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_14
    const-string v0, "key_flashlight_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_15
    const-string v0, "key_hotspot_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_16
    const-string v0, "key_start_activity_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_17
    const-string v0, "key_eye_care_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_18
    const-string v0, "key_drive_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_19
    const-string v0, "key_location_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1a
    const-string v0, "key_adjust_volume_result_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->Z1()V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->f2()V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->u2()V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->y2()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->t2()V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->o2()V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->e2()V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->w2()V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->r2()V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->b2()V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->z2()V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->n2()V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->m2()V

    goto :goto_1

    :pswitch_d
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->c2()V

    goto :goto_1

    :pswitch_e
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->q2()V

    goto :goto_1

    :pswitch_f
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->d2()V

    goto :goto_1

    :pswitch_10
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->j2()V

    goto :goto_1

    :pswitch_11
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->p2()V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->s2()V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->a2()V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->i2()V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->k2()V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/miui/autotask/taskitem/StartActivityResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/StartActivityResultItem;-><init>()V

    const/16 v1, 0x66

    invoke-static {p1, v0, v1}, Lcom/miui/autotask/activity/SelectAppActivity;->u0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/LunchAppItem;I)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->h2()V

    goto :goto_1

    :pswitch_18
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->g2()V

    goto :goto_1

    :pswitch_19
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->l2()V

    goto :goto_1

    :pswitch_1a
    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->x2()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x779afee0 -> :sswitch_1a
        -0x726e75b5 -> :sswitch_19
        -0x706dc320 -> :sswitch_18
        -0x5df0640b -> :sswitch_17
        -0x5857f99e -> :sswitch_16
        -0x49c3855b -> :sswitch_15
        -0x3ce4f3c4 -> :sswitch_14
        -0x2381aab7 -> :sswitch_13
        -0x14bf6d1f -> :sswitch_12
        -0x1499d47f -> :sswitch_11
        -0xc7e1fd3 -> :sswitch_10
        -0x99bcf74 -> :sswitch_f
        0x199534a -> :sswitch_e
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
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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

.method private Z0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La4/f2;->A(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    const-string v4, "key_sound_and_vibration_result_category"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/k;->b()Z

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f120ec2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, La4/f2;->B(Ljava/lang/String;)Lcom/miui/autotask/taskitem/TaskItem;

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

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v6

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->i()I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(I)V

    new-instance v6, Lv3/w;

    invoke-direct {v6, p0, v4}, Lv3/w;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v4, p0, Lcom/miui/autotask/fragment/AddBaseFragment;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method private Z1()V
    .locals 4

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->x()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lv3/u0;

    invoke-direct {v2, p0}, Lv3/u0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v3, Lv3/v0;

    invoke-direct {v3, p0}, Lv3/v0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    invoke-static {v1, v0, v2, v3}, La4/e2;->h2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private synthetic a1(Lcom/miui/autotask/taskitem/TaskItem;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/AddResultFragment;->Y1(Lcom/miui/autotask/taskitem/TaskItem;)V

    const/4 p1, 0x1

    return p1
.end method

.method private a2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/a1;

    invoke-direct {v1, p0}, Lv3/a1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/b1;

    invoke-direct {v2, p0}, Lv3/b1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->j2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->D1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic b1(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->v2()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    :cond_1
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->z(I)V

    return-void
.end method

.method private b2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/r1;

    invoke-direct {v1, p0}, Lv3/r1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/s1;

    invoke-direct {v2, p0}, Lv3/s1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->k2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->v1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic c1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->y(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private c2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/o1;

    invoke-direct {v1, p0}, Lv3/o1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/p1;

    invoke-direct {v2, p0}, Lv3/p1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->m2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->c1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic d1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->i:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/AirplaneResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AirplaneResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->i:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->i:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private d2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/w0;

    invoke-direct {v1, p0}, Lv3/w0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/x0;

    invoke-direct {v2, p0}, Lv3/x0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->o2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->g1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic e1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->i:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/AirplaneResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AirplaneResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->i:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->i:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private e2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/t1;

    invoke-direct {v1, p0}, Lv3/t1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/x;

    invoke-direct {v2, p0}, Lv3/x;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->p2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->h1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic f1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->q:Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->q:Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->q:Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private f2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/a0;

    invoke-direct {v1, p0}, Lv3/a0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/b0;

    invoke-direct {v2, p0}, Lv3/b0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->q2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->o1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic g1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->q:Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->q:Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->q:Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private g2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/y0;

    invoke-direct {v1, p0}, Lv3/y0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/z0;

    invoke-direct {v2, p0}, Lv3/z0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->r2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->p1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic h1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->e:Lcom/miui/autotask/taskitem/BluetoothResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/BluetoothResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->e:Lcom/miui/autotask/taskitem/BluetoothResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->e:Lcom/miui/autotask/taskitem/BluetoothResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private h2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/e0;

    invoke-direct {v1, p0}, Lv3/e0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/f0;

    invoke-direct {v2, p0}, Lv3/f0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->s2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->e1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic i1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->e:Lcom/miui/autotask/taskitem/BluetoothResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/BluetoothResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->e:Lcom/miui/autotask/taskitem/BluetoothResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->e:Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private i2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/h0;

    invoke-direct {v1, p0}, Lv3/h0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    invoke-static {v0, v1}, La4/e2;->t2(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->t1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic j1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->d:Lcom/miui/autotask/taskitem/DarkResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DarkResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DarkResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->d:Lcom/miui/autotask/taskitem/DarkResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->d:Lcom/miui/autotask/taskitem/DarkResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private j2()V
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->z:Lcom/miui/autotask/taskitem/TypefaceResultItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->v()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lv3/q1;

    invoke-direct {v2, p0}, Lv3/q1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    invoke-static {v1, v0, v2}, La4/e2;->u2(Landroid/content/Context;[ILa4/e2$g;)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->z1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic k1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->d:Lcom/miui/autotask/taskitem/DarkResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DarkResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DarkResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->d:Lcom/miui/autotask/taskitem/DarkResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->d:Lcom/miui/autotask/taskitem/DarkResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private k2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/c0;

    invoke-direct {v1, p0}, Lv3/c0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/d0;

    invoke-direct {v2, p0}, Lv3/d0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->w2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic l0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->W1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic l1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->t:Lcom/miui/autotask/taskitem/TwinkleResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/TwinkleResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/TwinkleResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->t:Lcom/miui/autotask/taskitem/TwinkleResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->t:Lcom/miui/autotask/taskitem/TwinkleResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private l2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/r0;

    invoke-direct {v1, p0}, Lv3/r0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/t0;

    invoke-direct {v2, p0}, Lv3/t0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->y2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic m0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->J1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic m1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->t:Lcom/miui/autotask/taskitem/TwinkleResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/TwinkleResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/TwinkleResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->t:Lcom/miui/autotask/taskitem/TwinkleResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->t:Lcom/miui/autotask/taskitem/TwinkleResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private m2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/s0;

    invoke-direct {v1, p0}, Lv3/s0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/d1;

    invoke-direct {v2, p0}, Lv3/d1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->A2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic n0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->N1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic n1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->o:Lcom/miui/autotask/taskitem/DialToneResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DialToneResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DialToneResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->o:Lcom/miui/autotask/taskitem/DialToneResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->o:Lcom/miui/autotask/taskitem/DialToneResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private n2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/e1;

    invoke-direct {v1, p0}, Lv3/e1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/f1;

    invoke-direct {v2, p0}, Lv3/f1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->B2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic o0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->w1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic o1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->o:Lcom/miui/autotask/taskitem/DialToneResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DialToneResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DialToneResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->o:Lcom/miui/autotask/taskitem/DialToneResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->o:Lcom/miui/autotask/taskitem/DialToneResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private o2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/p0;

    invoke-direct {v1, p0}, Lv3/p0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/q0;

    invoke-direct {v2, p0}, Lv3/q0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->D2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic p0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->d1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic p1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->v:Lcom/miui/autotask/taskitem/DriveResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DriveResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DriveResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->v:Lcom/miui/autotask/taskitem/DriveResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->v:Lcom/miui/autotask/taskitem/DriveResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private p2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/j1;

    invoke-direct {v1, p0}, Lv3/j1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/k1;

    invoke-direct {v2, p0}, Lv3/k1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->E2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic q0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->y1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic q1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->v:Lcom/miui/autotask/taskitem/DriveResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/DriveResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/DriveResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->v:Lcom/miui/autotask/taskitem/DriveResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->v:Lcom/miui/autotask/taskitem/DriveResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private q2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/l1;

    invoke-direct {v1, p0}, Lv3/l1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    invoke-static {v0, v1}, La4/e2;->F2(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic r0(Lcom/miui/autotask/fragment/AddResultFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/AddResultFragment;->M1(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic r1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/EyeCareResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private r2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/h1;

    invoke-direct {v1, p0}, Lv3/h1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/i1;

    invoke-direct {v2, p0}, Lv3/i1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->G2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic s0(Lcom/miui/autotask/fragment/AddResultFragment;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/AddResultFragment;->u1([I)V

    return-void
.end method

.method private synthetic s1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/EyeCareResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private s2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/l0;

    invoke-direct {v1, p0}, Lv3/l0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/m0;

    invoke-direct {v2, p0}, Lv3/m0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->H2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic t0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->H1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic t1(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Lcom/miui/autotask/taskitem/FlashlightResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/FlashlightResultItem;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private t2()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->x:Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/m;->i(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->v()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lv3/g1;

    invoke-direct {v2, p0}, Lv3/g1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    invoke-static {v1, v0, v2}, La4/e2;->I2(Landroid/content/Context;ILa4/e2$f;)V

    return-void
.end method

.method public static synthetic u0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->j1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic u1([I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->z:Lcom/miui/autotask/taskitem/TypefaceResultItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/autotask/taskitem/TypefaceResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/TypefaceResultItem;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->z:Lcom/miui/autotask/taskitem/TypefaceResultItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->z:Lcom/miui/autotask/taskitem/TypefaceResultItem;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->w([I)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->z:Lcom/miui/autotask/taskitem/TypefaceResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private u2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/y;

    invoke-direct {v1, p0}, Lv3/y;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/z;

    invoke-direct {v2, p0}, Lv3/z;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->J2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic v0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->r1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic v1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->k:Lcom/miui/autotask/taskitem/HotspotResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/HotspotResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/HotspotResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->k:Lcom/miui/autotask/taskitem/HotspotResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->k:Lcom/miui/autotask/taskitem/HotspotResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private v2()V
    .locals 4

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->y(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->A:Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result v1

    new-instance v2, Lv3/m1;

    invoke-direct {v2, p0}, Lv3/m1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v3, Lv3/n1;

    invoke-direct {v3, p0}, Lv3/n1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    invoke-static {v0, v1, v2, v3}, La4/e2;->K2(Landroid/content/Context;ILmiuix/pickerwidget/widget/NumberPicker$h;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic w0(Lcom/miui/autotask/fragment/AddResultFragment;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/AddResultFragment;->T1([I)V

    return-void
.end method

.method private synthetic w1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->k:Lcom/miui/autotask/taskitem/HotspotResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/HotspotResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/HotspotResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->k:Lcom/miui/autotask/taskitem/HotspotResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->k:Lcom/miui/autotask/taskitem/HotspotResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private w2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/n0;

    invoke-direct {v1, p0}, Lv3/n0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/o0;

    invoke-direct {v2, p0}, Lv3/o0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->L2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic x0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->C1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic x1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->g:Lcom/miui/autotask/taskitem/LocationResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LocationResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LocationResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->g:Lcom/miui/autotask/taskitem/LocationResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->g:Lcom/miui/autotask/taskitem/LocationResultItem;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    return-void
.end method

.method private x2()V
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddResultFragment;->y:Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lv3/c1;

    invoke-direct {v2, p0}, Lv3/c1;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    invoke-static {v1, v0, v2}, La4/e2;->M2(Landroid/content/Context;[ILa4/e2$g;)V

    return-void
.end method

.method public static synthetic y0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->i1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic y1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->g:Lcom/miui/autotask/taskitem/LocationResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LocationResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LocationResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->g:Lcom/miui/autotask/taskitem/LocationResultItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->g:Lcom/miui/autotask/taskitem/LocationResultItem;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddBaseFragment;->a0(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method

.method private y2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/j0;

    invoke-direct {v1, p0}, Lv3/j0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/k0;

    invoke-direct {v2, p0}, Lv3/k0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->N2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static synthetic z0(Lcom/miui/autotask/fragment/AddResultFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/AddResultFragment;->s1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic z1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->w:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-direct {p1}, Lcom/miui/autotask/taskitem/LockScreenResultItem;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->w:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->w:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-virtual {p1, p2}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    return-void
.end method

.method private z2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv3/g0;

    invoke-direct {v1, p0}, Lv3/g0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    new-instance v2, Lv3/i0;

    invoke-direct {v2, p0}, Lv3/i0;-><init>(Lcom/miui/autotask/fragment/AddResultFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, La4/e2;->O2(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150002

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddResultFragment;->Z0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "taskItem"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcom/miui/autotask/taskitem/TypefaceResultItem;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/autotask/taskitem/TypefaceResultItem;

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->z:Lcom/miui/autotask/taskitem/TypefaceResultItem;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->x:Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddResultFragment;->s:Lcom/miui/autotask/taskitem/EyeCareResultItem;

    :cond_2
    :goto_0
    return-void
.end method
