.class public final enum Lbi/c$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbi/c$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbi/c$e;

.field public static final enum c:Lbi/c$e;

.field public static final enum d:Lbi/c$e;

.field private static final synthetic e:[Lbi/c$e;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lbi/c$e;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbi/c$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbi/c$e;->b:Lbi/c$e;

    new-instance v1, Lbi/c$e;

    const-string v4, "MEDIUM"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lbi/c$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbi/c$e;->c:Lbi/c$e;

    new-instance v4, Lbi/c$e;

    const-string v6, "HIGH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lbi/c$e;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbi/c$e;->d:Lbi/c$e;

    new-array v6, v7, [Lbi/c$e;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lbi/c$e;->e:[Lbi/c$e;

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

    iput p3, p0, Lbi/c$e;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbi/c$e;
    .locals 1

    const-class v0, Lbi/c$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbi/c$e;

    return-object p0
.end method

.method public static values()[Lbi/c$e;
    .locals 1

    sget-object v0, Lbi/c$e;->e:[Lbi/c$e;

    invoke-virtual {v0}, [Lbi/c$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbi/c$e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbi/c$e;->a:I

    return v0
.end method
