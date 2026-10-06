.class public final enum Lve/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lve/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lve/d;

.field public static final enum d:Lve/d;

.field private static final synthetic e:[Lve/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lve/d;

    const-string v1, "GTB"

    const/4 v2, 0x0

    const-string v3, "01-18-12"

    const-string v4, "active_info"

    invoke-direct {v0, v1, v2, v3, v4}, Lve/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lve/d;->c:Lve/d;

    new-instance v1, Lve/d;

    const-string v3, "VTB"

    const/4 v4, 0x1

    const-string v5, "01-18-04"

    const-string v6, "active_info_vtb"

    invoke-direct {v1, v3, v4, v5, v6}, Lve/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lve/d;->d:Lve/d;

    const/4 v3, 0x2

    new-array v3, v3, [Lve/d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lve/d;->e:[Lve/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lve/d;->a:Ljava/lang/String;

    iput-object p4, p0, Lve/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lve/d;
    .locals 1

    const-class v0, Lve/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lve/d;

    return-object p0
.end method

.method public static values()[Lve/d;
    .locals 1

    sget-object v0, Lve/d;->e:[Lve/d;

    invoke-virtual {v0}, [Lve/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lve/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lve/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lve/d;->a:Ljava/lang/String;

    return-object v0
.end method
