.class public final enum Ln6/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln6/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln6/h;

.field public static final enum b:Ln6/h;

.field public static final enum c:Ln6/h;

.field public static final enum d:Ln6/h;

.field private static final synthetic e:[Ln6/h;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ln6/h;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln6/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln6/h;->a:Ln6/h;

    new-instance v1, Ln6/h;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln6/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln6/h;->b:Ln6/h;

    new-instance v3, Ln6/h;

    const-string v5, "HOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln6/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln6/h;->c:Ln6/h;

    new-instance v5, Ln6/h;

    const-string v7, "COMPOSITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln6/h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln6/h;->d:Ln6/h;

    const/4 v7, 0x4

    new-array v7, v7, [Ln6/h;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ln6/h;->e:[Ln6/h;

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

.method public static valueOf(Ljava/lang/String;)Ln6/h;
    .locals 1

    const-class v0, Ln6/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln6/h;

    return-object p0
.end method

.method public static values()[Ln6/h;
    .locals 1

    sget-object v0, Ln6/h;->e:[Ln6/h;

    invoke-virtual {v0}, [Ln6/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln6/h;

    return-object v0
.end method
