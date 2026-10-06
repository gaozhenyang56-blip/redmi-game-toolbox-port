.class public final enum Lkotlin/RequiresOptIn$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/RequiresOptIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/RequiresOptIn$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkotlin/RequiresOptIn$a;

.field public static final enum b:Lkotlin/RequiresOptIn$a;

.field private static final synthetic c:[Lkotlin/RequiresOptIn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/RequiresOptIn$a;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/RequiresOptIn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/RequiresOptIn$a;->a:Lkotlin/RequiresOptIn$a;

    new-instance v0, Lkotlin/RequiresOptIn$a;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/RequiresOptIn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/RequiresOptIn$a;->b:Lkotlin/RequiresOptIn$a;

    invoke-static {}, Lkotlin/RequiresOptIn$a;->a()[Lkotlin/RequiresOptIn$a;

    move-result-object v0

    sput-object v0, Lkotlin/RequiresOptIn$a;->c:[Lkotlin/RequiresOptIn$a;

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

.method private static final synthetic a()[Lkotlin/RequiresOptIn$a;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/RequiresOptIn$a;

    sget-object v1, Lkotlin/RequiresOptIn$a;->a:Lkotlin/RequiresOptIn$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/RequiresOptIn$a;->b:Lkotlin/RequiresOptIn$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/RequiresOptIn$a;
    .locals 1

    const-class v0, Lkotlin/RequiresOptIn$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/RequiresOptIn$a;

    return-object p0
.end method

.method public static values()[Lkotlin/RequiresOptIn$a;
    .locals 1

    sget-object v0, Lkotlin/RequiresOptIn$a;->c:[Lkotlin/RequiresOptIn$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/RequiresOptIn$a;

    return-object v0
.end method
