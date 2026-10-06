.class public final enum Lp4/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp4/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lp4/d$a;

.field public static final enum b:Lp4/d$a;

.field public static final enum c:Lp4/d$a;

.field public static final enum d:Lp4/d$a;

.field public static final enum e:Lp4/d$a;

.field public static final enum f:Lp4/d$a;

.field public static final enum g:Lp4/d$a;

.field public static final enum h:Lp4/d$a;

.field private static final synthetic i:[Lp4/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lp4/d$a;

    const-string v1, "Inited"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp4/d$a;->a:Lp4/d$a;

    new-instance v1, Lp4/d$a;

    const-string v3, "Diconnected"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp4/d$a;->b:Lp4/d$a;

    new-instance v3, Lp4/d$a;

    const-string v5, "WifiConnected"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lp4/d$a;->c:Lp4/d$a;

    new-instance v5, Lp4/d$a;

    const-string v7, "MobileConnected"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lp4/d$a;->d:Lp4/d$a;

    new-instance v7, Lp4/d$a;

    const-string v9, "EthernetConnected"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lp4/d$a;->e:Lp4/d$a;

    new-instance v9, Lp4/d$a;

    const-string v11, "BluetoothConnected"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lp4/d$a;->f:Lp4/d$a;

    new-instance v11, Lp4/d$a;

    const-string v13, "OtherConnected"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lp4/d$a;->g:Lp4/d$a;

    new-instance v13, Lp4/d$a;

    const-string v15, "WifiApConnected"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lp4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lp4/d$a;->h:Lp4/d$a;

    const/16 v15, 0x8

    new-array v15, v15, [Lp4/d$a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lp4/d$a;->i:[Lp4/d$a;

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

.method public static valueOf(Ljava/lang/String;)Lp4/d$a;
    .locals 1

    const-class v0, Lp4/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp4/d$a;

    return-object p0
.end method

.method public static values()[Lp4/d$a;
    .locals 1

    sget-object v0, Lp4/d$a;->i:[Lp4/d$a;

    invoke-virtual {v0}, [Lp4/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp4/d$a;

    return-object v0
.end method
