.class public final enum Lcom/miui/antivirus/model/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/antivirus/model/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/antivirus/model/a$a;

.field public static final enum b:Lcom/miui/antivirus/model/a$a;

.field public static final enum c:Lcom/miui/antivirus/model/a$a;

.field public static final enum d:Lcom/miui/antivirus/model/a$a;

.field public static final enum e:Lcom/miui/antivirus/model/a$a;

.field private static final synthetic f:[Lcom/miui/antivirus/model/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/miui/antivirus/model/a$a;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/a$a;->a:Lcom/miui/antivirus/model/a$a;

    new-instance v1, Lcom/miui/antivirus/model/a$a;

    const-string v3, "SYSTEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/antivirus/model/a$a;->b:Lcom/miui/antivirus/model/a$a;

    new-instance v3, Lcom/miui/antivirus/model/a$a;

    const-string v5, "SMS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/antivirus/model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/antivirus/model/a$a;->c:Lcom/miui/antivirus/model/a$a;

    new-instance v5, Lcom/miui/antivirus/model/a$a;

    const-string v7, "APP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/antivirus/model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/antivirus/model/a$a;->d:Lcom/miui/antivirus/model/a$a;

    new-instance v7, Lcom/miui/antivirus/model/a$a;

    const-string v9, "RISKAPP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/antivirus/model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/antivirus/model/a$a;->e:Lcom/miui/antivirus/model/a$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/miui/antivirus/model/a$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/miui/antivirus/model/a$a;->f:[Lcom/miui/antivirus/model/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/model/a$a;
    .locals 1

    const-class v0, Lcom/miui/antivirus/model/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/antivirus/model/a$a;

    return-object p0
.end method

.method public static values()[Lcom/miui/antivirus/model/a$a;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/model/a$a;->f:[Lcom/miui/antivirus/model/a$a;

    invoke-virtual {v0}, [Lcom/miui/antivirus/model/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/antivirus/model/a$a;

    return-object v0
.end method
