.class public Lcom/miui/networkassistant/utils/NotiStatusIconHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final iconRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->iconRes:[I

    return-void

    :array_0
    .array-data 4
        0x7f080fda
        0x7f080fd6
        0x7f080fd7
        0x7f080fd8
        0x7f080fd9
        0x7f080fdb
        0x7f080fdc
        0x7f080fdd
        0x7f080fde
        0x7f080fdf
        0x7f080fd5
        0x7f080fe0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconByLevel(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->iconRes:[I

    const/16 v0, 0xb

    aget p0, p0, v0

    return p0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->iconRes:[I

    div-int/lit8 p0, p0, 0xa

    aget p0, v0, p0

    return p0
.end method
