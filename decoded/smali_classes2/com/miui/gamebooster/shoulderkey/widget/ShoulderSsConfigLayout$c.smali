.class final enum Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

.field public static final enum b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

.field private static final synthetic c:[Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    const-string v1, "CONFIG_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    new-instance v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    const-string v3, "CONFIGING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->c:[Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    return-object p0
.end method

.method public static values()[Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->c:[Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    invoke-virtual {v0}, [Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    return-object v0
.end method
