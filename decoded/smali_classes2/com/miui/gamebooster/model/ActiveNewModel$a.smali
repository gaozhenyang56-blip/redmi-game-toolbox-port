.class final enum Lcom/miui/gamebooster/model/ActiveNewModel$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/model/ActiveNewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/gamebooster/model/ActiveNewModel$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/miui/gamebooster/model/ActiveNewModel$a;

.field private static final synthetic c:[Lcom/miui/gamebooster/model/ActiveNewModel$a;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/gamebooster/model/ActiveNewModel$a;

    const-string v1, "TYPE_TOOL"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gamebooster/model/ActiveNewModel$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gamebooster/model/ActiveNewModel$a;->b:Lcom/miui/gamebooster/model/ActiveNewModel$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/gamebooster/model/ActiveNewModel$a;

    aput-object v0, v1, v2

    sput-object v1, Lcom/miui/gamebooster/model/ActiveNewModel$a;->c:[Lcom/miui/gamebooster/model/ActiveNewModel$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/gamebooster/model/ActiveNewModel$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveNewModel$a;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/model/ActiveNewModel$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/model/ActiveNewModel$a;

    return-object p0
.end method

.method public static values()[Lcom/miui/gamebooster/model/ActiveNewModel$a;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/model/ActiveNewModel$a;->c:[Lcom/miui/gamebooster/model/ActiveNewModel$a;

    invoke-virtual {v0}, [Lcom/miui/gamebooster/model/ActiveNewModel$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gamebooster/model/ActiveNewModel$a;

    return-object v0
.end method
