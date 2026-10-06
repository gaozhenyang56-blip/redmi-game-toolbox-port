.class public final enum Lcom/miui/gamebooster/service/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/gamebooster/service/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/gamebooster/service/a0;

.field public static final enum b:Lcom/miui/gamebooster/service/a0;

.field public static final enum c:Lcom/miui/gamebooster/service/a0;

.field public static final enum d:Lcom/miui/gamebooster/service/a0;

.field public static final enum e:Lcom/miui/gamebooster/service/a0;

.field public static final enum f:Lcom/miui/gamebooster/service/a0;

.field public static final enum g:Lcom/miui/gamebooster/service/a0;

.field private static final synthetic h:[Lcom/miui/gamebooster/service/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/miui/gamebooster/service/a0;

    const-string v1, "NOTINIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/service/a0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/service/a0;->a:Lcom/miui/gamebooster/service/a0;

    new-instance v1, Lcom/miui/gamebooster/service/a0;

    const-string v3, "INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/gamebooster/service/a0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/gamebooster/service/a0;->b:Lcom/miui/gamebooster/service/a0;

    new-instance v3, Lcom/miui/gamebooster/service/a0;

    const-string v5, "CONNECTVPN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/gamebooster/service/a0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/gamebooster/service/a0;->c:Lcom/miui/gamebooster/service/a0;

    new-instance v5, Lcom/miui/gamebooster/service/a0;

    const-string v7, "REFRESHUSERSTATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/gamebooster/service/a0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/gamebooster/service/a0;->d:Lcom/miui/gamebooster/service/a0;

    new-instance v7, Lcom/miui/gamebooster/service/a0;

    const-string v9, "GETREFRESHTIME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/gamebooster/service/a0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/gamebooster/service/a0;->e:Lcom/miui/gamebooster/service/a0;

    new-instance v9, Lcom/miui/gamebooster/service/a0;

    const-string v11, "GETSETTINGURL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/miui/gamebooster/service/a0;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/gamebooster/service/a0;->f:Lcom/miui/gamebooster/service/a0;

    new-instance v11, Lcom/miui/gamebooster/service/a0;

    const-string v13, "GETSETTINGWIFI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/miui/gamebooster/service/a0;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/gamebooster/service/a0;->g:Lcom/miui/gamebooster/service/a0;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/miui/gamebooster/service/a0;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/miui/gamebooster/service/a0;->h:[Lcom/miui/gamebooster/service/a0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/service/a0;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/service/a0;

    return-object p0
.end method

.method public static values()[Lcom/miui/gamebooster/service/a0;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/a0;->h:[Lcom/miui/gamebooster/service/a0;

    invoke-virtual {v0}, [Lcom/miui/gamebooster/service/a0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gamebooster/service/a0;

    return-object v0
.end method
