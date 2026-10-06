.class public final enum Lrd/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrd/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrd/a$b;

.field public static final enum b:Lrd/a$b;

.field private static final synthetic c:[Lrd/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lrd/a$b;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrd/a$b;->a:Lrd/a$b;

    new-instance v1, Lrd/a$b;

    const-string v3, "UNINSTALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lrd/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrd/a$b;->b:Lrd/a$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lrd/a$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lrd/a$b;->c:[Lrd/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lrd/a$b;
    .locals 1

    const-class v0, Lrd/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrd/a$b;

    return-object p0
.end method

.method public static values()[Lrd/a$b;
    .locals 1

    sget-object v0, Lrd/a$b;->c:[Lrd/a$b;

    invoke-virtual {v0}, [Lrd/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrd/a$b;

    return-object v0
.end method
