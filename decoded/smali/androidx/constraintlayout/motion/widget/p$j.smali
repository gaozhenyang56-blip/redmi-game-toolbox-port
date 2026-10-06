.class final enum Landroidx/constraintlayout/motion/widget/p$j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/motion/widget/p$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/constraintlayout/motion/widget/p$j;

.field public static final enum b:Landroidx/constraintlayout/motion/widget/p$j;

.field public static final enum c:Landroidx/constraintlayout/motion/widget/p$j;

.field public static final enum d:Landroidx/constraintlayout/motion/widget/p$j;

.field private static final synthetic e:[Landroidx/constraintlayout/motion/widget/p$j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/constraintlayout/motion/widget/p$j;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/p$j;->a:Landroidx/constraintlayout/motion/widget/p$j;

    new-instance v0, Landroidx/constraintlayout/motion/widget/p$j;

    const-string v1, "SETUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/p$j;->b:Landroidx/constraintlayout/motion/widget/p$j;

    new-instance v0, Landroidx/constraintlayout/motion/widget/p$j;

    const-string v1, "MOVING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/p$j;->c:Landroidx/constraintlayout/motion/widget/p$j;

    new-instance v0, Landroidx/constraintlayout/motion/widget/p$j;

    const-string v1, "FINISHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/p$j;->d:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-static {}, Landroidx/constraintlayout/motion/widget/p$j;->a()[Landroidx/constraintlayout/motion/widget/p$j;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/p$j;->e:[Landroidx/constraintlayout/motion/widget/p$j;

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

.method private static synthetic a()[Landroidx/constraintlayout/motion/widget/p$j;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/motion/widget/p$j;

    sget-object v1, Landroidx/constraintlayout/motion/widget/p$j;->a:Landroidx/constraintlayout/motion/widget/p$j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/motion/widget/p$j;->b:Landroidx/constraintlayout/motion/widget/p$j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/motion/widget/p$j;->c:Landroidx/constraintlayout/motion/widget/p$j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/motion/widget/p$j;->d:Landroidx/constraintlayout/motion/widget/p$j;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/p$j;
    .locals 1

    const-class v0, Landroidx/constraintlayout/motion/widget/p$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/motion/widget/p$j;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/motion/widget/p$j;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/motion/widget/p$j;->e:[Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {v0}, [Landroidx/constraintlayout/motion/widget/p$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/motion/widget/p$j;

    return-object v0
.end method
