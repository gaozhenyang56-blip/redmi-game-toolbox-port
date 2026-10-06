.class public final enum Lra/k0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lra/k0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lra/k0;

.field public static final enum b:Lra/k0;

.field public static final enum c:Lra/k0;

.field public static final enum d:Lra/k0;

.field public static final enum e:Lra/k0;

.field private static final synthetic f:[Lra/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lra/k0;

    const-string v1, "FILE_EXPLORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lra/k0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lra/k0;->a:Lra/k0;

    new-instance v1, Lra/k0;

    const-string v3, "MIUI_SETTINGS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lra/k0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lra/k0;->b:Lra/k0;

    new-instance v3, Lra/k0;

    const-string v5, "WORK_PROFILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lra/k0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lra/k0;->c:Lra/k0;

    new-instance v5, Lra/k0;

    const-string v7, "PRIVATE_PERSON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lra/k0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lra/k0;->d:Lra/k0;

    new-instance v7, Lra/k0;

    const-string v9, "DEFAULT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lra/k0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lra/k0;->e:Lra/k0;

    const/4 v9, 0x5

    new-array v9, v9, [Lra/k0;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lra/k0;->f:[Lra/k0;

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

.method public static valueOf(Ljava/lang/String;)Lra/k0;
    .locals 1

    const-class v0, Lra/k0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lra/k0;

    return-object p0
.end method

.method public static values()[Lra/k0;
    .locals 1

    sget-object v0, Lra/k0;->f:[Lra/k0;

    invoke-virtual {v0}, [Lra/k0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lra/k0;

    return-object v0
.end method
