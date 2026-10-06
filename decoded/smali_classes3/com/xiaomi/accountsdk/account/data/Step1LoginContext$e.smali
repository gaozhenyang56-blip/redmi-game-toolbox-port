.class public final enum Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

.field public static final enum c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

.field private static final synthetic d:[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    const-string v3, "NOTIFICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    new-instance v3, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    const-string v5, "VERIFICATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->d:[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->d:[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    return-object v0
.end method
