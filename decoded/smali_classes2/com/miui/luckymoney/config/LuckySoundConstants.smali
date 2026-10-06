.class public Lcom/miui/luckymoney/config/LuckySoundConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_SOUND:I = 0x0

.field public static final SOUND_GLOD:I = 0x1

.field public static final SOUND_LUCKY:I = 0x2

.field public static SOUND_RES_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/luckymoney/config/LuckySoundConstants;->SOUND_RES_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f11000e
        0x7f11000e
        0x7f11000a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
