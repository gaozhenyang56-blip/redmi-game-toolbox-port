.class public final enum Lbj/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbj/a;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lbj/a;

.field public static final enum b:Lbj/a;

.field public static final enum c:Lbj/a;

.field public static final enum d:Lbj/a;

.field public static final enum e:Lbj/a;

.field private static final synthetic f:[Lbj/a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lbj/a;

    const-string v1, "China"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbj/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbj/a;->a:Lbj/a;

    new-instance v1, Lbj/a;

    const-string v3, "Global"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbj/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbj/a;->b:Lbj/a;

    new-instance v3, Lbj/a;

    const-string v5, "Europe"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbj/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbj/a;->c:Lbj/a;

    new-instance v5, Lbj/a;

    const-string v7, "Russia"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbj/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbj/a;->d:Lbj/a;

    new-instance v7, Lbj/a;

    const-string v9, "India"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lbj/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lbj/a;->e:Lbj/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lbj/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lbj/a;->f:[Lbj/a;

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

.method public static valueOf(Ljava/lang/String;)Lbj/a;
    .locals 1

    const-class v0, Lbj/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbj/a;

    return-object p0
.end method

.method public static values()[Lbj/a;
    .locals 1

    sget-object v0, Lbj/a;->f:[Lbj/a;

    invoke-virtual {v0}, [Lbj/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbj/a;

    return-object v0
.end method
