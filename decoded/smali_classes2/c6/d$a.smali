.class public final enum Lc6/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc6/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc6/d$a;

.field public static final enum c:Lc6/d$a;

.field public static final enum d:Lc6/d$a;

.field private static final synthetic e:[Lc6/d$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc6/d$a;

    const-string v1, "LIGHT_WARM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc6/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc6/d$a;->b:Lc6/d$a;

    new-instance v0, Lc6/d$a;

    const-string v1, "LIGHT_NATURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lc6/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc6/d$a;->c:Lc6/d$a;

    new-instance v0, Lc6/d$a;

    const-string v1, "LIGHT_COLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lc6/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc6/d$a;->d:Lc6/d$a;

    invoke-static {}, Lc6/d$a;->a()[Lc6/d$a;

    move-result-object v0

    sput-object v0, Lc6/d$a;->e:[Lc6/d$a;

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

    iput p3, p0, Lc6/d$a;->a:I

    return-void
.end method

.method private static final synthetic a()[Lc6/d$a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lc6/d$a;

    sget-object v1, Lc6/d$a;->b:Lc6/d$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lc6/d$a;->c:Lc6/d$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lc6/d$a;->d:Lc6/d$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/d$a;
    .locals 1

    const-class v0, Lc6/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/d$a;

    return-object p0
.end method

.method public static values()[Lc6/d$a;
    .locals 1

    sget-object v0, Lc6/d$a;->e:[Lc6/d$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/d$a;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lc6/d$a;->a:I

    return v0
.end method
