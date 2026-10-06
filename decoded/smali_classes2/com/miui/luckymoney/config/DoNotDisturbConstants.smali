.class public Lcom/miui/luckymoney/config/DoNotDisturbConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DND_LEVEL_NO_EVERYTHING:I = 0x1

.field public static DND_LEVEL_NO_SOUND:I

.field public static DND_TEXT_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_TEXT_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1206cd
        0x7f1206cc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
