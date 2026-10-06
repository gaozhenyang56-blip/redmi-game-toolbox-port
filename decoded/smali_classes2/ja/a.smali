.class public final enum Lja/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lja/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lja/a;

.field public static final enum c:Lja/a;

.field public static final enum d:Lja/a;

.field public static final enum e:Lja/a;

.field public static final enum f:Lja/a;

.field public static final synthetic g:[Lja/a;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lja/a;

    const-string v1, "FORWARD_CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lja/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lja/a;->b:Lja/a;

    new-instance v1, Lja/a;

    const-string v3, "FORWARD_OPENCL"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v1, v3, v4, v5}, Lja/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lja/a;->c:Lja/a;

    new-instance v3, Lja/a;

    const-string v6, "FORWARD_AUTO"

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-direct {v3, v6, v7, v8}, Lja/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lja/a;->d:Lja/a;

    new-instance v6, Lja/a;

    const-string v9, "FORWARD_OPENGL"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v5, v10}, Lja/a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lja/a;->e:Lja/a;

    new-instance v9, Lja/a;

    const-string v10, "FORWARD_VULKAN"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v8, v11}, Lja/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lja/a;->f:Lja/a;

    const/4 v10, 0x5

    new-array v10, v10, [Lja/a;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v7

    aput-object v6, v10, v5

    aput-object v9, v10, v8

    sput-object v10, Lja/a;->g:[Lja/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lja/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lja/a;
    .locals 1

    const-class v0, Lja/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lja/a;

    return-object p0
.end method

.method public static values()[Lja/a;
    .locals 1

    sget-object v0, Lja/a;->g:[Lja/a;

    invoke-virtual {v0}, [Lja/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja/a;

    return-object v0
.end method
