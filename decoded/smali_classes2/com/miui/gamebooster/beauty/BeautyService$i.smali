.class final enum Lcom/miui/gamebooster/beauty/BeautyService$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/BeautyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/gamebooster/beauty/BeautyService$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/gamebooster/beauty/BeautyService$i;

.field public static final enum b:Lcom/miui/gamebooster/beauty/BeautyService$i;

.field private static final synthetic c:[Lcom/miui/gamebooster/beauty/BeautyService$i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$i;

    const-string v1, "CONVERSATION_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/beauty/BeautyService$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/beauty/BeautyService$i;->a:Lcom/miui/gamebooster/beauty/BeautyService$i;

    new-instance v1, Lcom/miui/gamebooster/beauty/BeautyService$i;

    const-string v3, "NON_CONVERSATION_MODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/gamebooster/beauty/BeautyService$i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/gamebooster/beauty/BeautyService$i;->b:Lcom/miui/gamebooster/beauty/BeautyService$i;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/gamebooster/beauty/BeautyService$i;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/gamebooster/beauty/BeautyService$i;->c:[Lcom/miui/gamebooster/beauty/BeautyService$i;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/beauty/BeautyService$i;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/beauty/BeautyService$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/beauty/BeautyService$i;

    return-object p0
.end method

.method public static values()[Lcom/miui/gamebooster/beauty/BeautyService$i;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/beauty/BeautyService$i;->c:[Lcom/miui/gamebooster/beauty/BeautyService$i;

    invoke-virtual {v0}, [Lcom/miui/gamebooster/beauty/BeautyService$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gamebooster/beauty/BeautyService$i;

    return-object v0
.end method
