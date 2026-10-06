.class public final enum Lxc/m$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxc/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lxc/m$a;

.field public static final enum b:Lxc/m$a;

.field public static final enum c:Lxc/m$a;

.field private static final synthetic d:[Lxc/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lxc/m$a;

    const-string v1, "NO_SCOPED_STORAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxc/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/m$a;->a:Lxc/m$a;

    new-instance v1, Lxc/m$a;

    const-string v3, "SCOPED_STORAGE_LESS_T"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lxc/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxc/m$a;->b:Lxc/m$a;

    new-instance v3, Lxc/m$a;

    const-string v5, "LEVEL_MORE_T"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lxc/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lxc/m$a;->c:Lxc/m$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lxc/m$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lxc/m$a;->d:[Lxc/m$a;

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

.method public static valueOf(Ljava/lang/String;)Lxc/m$a;
    .locals 1

    const-class v0, Lxc/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxc/m$a;

    return-object p0
.end method

.method public static values()[Lxc/m$a;
    .locals 1

    sget-object v0, Lxc/m$a;->d:[Lxc/m$a;

    invoke-virtual {v0}, [Lxc/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxc/m$a;

    return-object v0
.end method
