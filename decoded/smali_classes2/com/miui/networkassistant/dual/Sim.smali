.class public Lcom/miui/networkassistant/dual/Sim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ICCID:Ljava/lang/String; = "iccId"

.field public static final MAX_SLOT_COUNT:I

.field public static final SIM_ID:Ljava/lang/String; = "simId"

.field public static final SIM_NAME:Ljava/lang/String; = "simName"

.field public static final SIM_SLOT_NUM_TAG:Ljava/lang/String; = "sim_slot_num_tag"

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SLOT1:I = 0x0

.field public static final SLOT2:I = 0x1

.field public static final SLOT_NOT_INSERTED:I = -0x1

.field public static final SLOT_NUM:Ljava/lang/String; = "slotNum"

.field public static final SYS_SLOT_NUM_INTENT_KEY:Ljava/lang/String; = "slot_id"

.field private static sCurrentOptSlotNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getPhoneCount"

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->i()I

    move-result v0

    sput v0, Lcom/miui/networkassistant/dual/Sim;->MAX_SLOT_COUNT:I

    sput v1, Lcom/miui/networkassistant/dual/Sim;->sCurrentOptSlotNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentActiveSlotNum()I
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotNum()I

    move-result v0

    return v0
.end method

.method public static getCurrentOptSlotNum()I
    .locals 1

    sget v0, Lcom/miui/networkassistant/dual/Sim;->sCurrentOptSlotNum:I

    return v0
.end method

.method public static operateOnSlot1()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    return-void
.end method

.method public static operateOnSlot2()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    return-void
.end method

.method public static operateOnSlotNum(I)V
    .locals 0

    sput p0, Lcom/miui/networkassistant/dual/Sim;->sCurrentOptSlotNum:I

    return-void
.end method
