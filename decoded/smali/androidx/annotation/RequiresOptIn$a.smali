.class public final enum Landroidx/annotation/RequiresOptIn$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/RequiresOptIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/RequiresOptIn$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/annotation/RequiresOptIn$a;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
        "annotation-experimental_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x0
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/annotation/RequiresOptIn$a;

.field public static final enum b:Landroidx/annotation/RequiresOptIn$a;

.field private static final synthetic c:[Landroidx/annotation/RequiresOptIn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/annotation/RequiresOptIn$a;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RequiresOptIn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RequiresOptIn$a;->a:Landroidx/annotation/RequiresOptIn$a;

    new-instance v0, Landroidx/annotation/RequiresOptIn$a;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RequiresOptIn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RequiresOptIn$a;->b:Landroidx/annotation/RequiresOptIn$a;

    invoke-static {}, Landroidx/annotation/RequiresOptIn$a;->a()[Landroidx/annotation/RequiresOptIn$a;

    move-result-object v0

    sput-object v0, Landroidx/annotation/RequiresOptIn$a;->c:[Landroidx/annotation/RequiresOptIn$a;

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

.method private static final synthetic a()[Landroidx/annotation/RequiresOptIn$a;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/annotation/RequiresOptIn$a;

    sget-object v1, Landroidx/annotation/RequiresOptIn$a;->a:Landroidx/annotation/RequiresOptIn$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/RequiresOptIn$a;->b:Landroidx/annotation/RequiresOptIn$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/RequiresOptIn$a;
    .locals 1

    const-class v0, Landroidx/annotation/RequiresOptIn$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/RequiresOptIn$a;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/RequiresOptIn$a;
    .locals 1

    sget-object v0, Landroidx/annotation/RequiresOptIn$a;->c:[Landroidx/annotation/RequiresOptIn$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/RequiresOptIn$a;

    return-object v0
.end method
