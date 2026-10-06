.class final enum Lcom/miui/optimizemanage/view/OptimizeMainView$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/view/OptimizeMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/optimizemanage/view/OptimizeMainView$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

.field public static final enum b:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

.field private static final synthetic c:[Lcom/miui/optimizemanage/view/OptimizeMainView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    const-string v1, "SCAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/optimizemanage/view/OptimizeMainView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->a:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    new-instance v1, Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/optimizemanage/view/OptimizeMainView$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->b:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->c:[Lcom/miui/optimizemanage/view/OptimizeMainView$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/optimizemanage/view/OptimizeMainView$c;
    .locals 1

    const-class v0, Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    return-object p0
.end method

.method public static values()[Lcom/miui/optimizemanage/view/OptimizeMainView$c;
    .locals 1

    sget-object v0, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->c:[Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    invoke-virtual {v0}, [Lcom/miui/optimizemanage/view/OptimizeMainView$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    return-object v0
.end method
