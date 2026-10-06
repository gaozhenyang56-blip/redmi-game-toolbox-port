.class public final enum Lcom/miui/antivirus/model/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/antivirus/model/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/antivirus/model/d$b;

.field public static final enum b:Lcom/miui/antivirus/model/d$b;

.field public static final enum c:Lcom/miui/antivirus/model/d$b;

.field public static final enum d:Lcom/miui/antivirus/model/d$b;

.field public static final enum e:Lcom/miui/antivirus/model/d$b;

.field public static final enum f:Lcom/miui/antivirus/model/d$b;

.field public static final enum g:Lcom/miui/antivirus/model/d$b;

.field private static final synthetic h:[Lcom/miui/antivirus/model/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/miui/antivirus/model/d$b;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/model/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/d$b;->a:Lcom/miui/antivirus/model/d$b;

    new-instance v1, Lcom/miui/antivirus/model/d$b;

    const-string v3, "VIRUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/model/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    new-instance v3, Lcom/miui/antivirus/model/d$b;

    const-string v5, "SIGN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/antivirus/model/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/antivirus/model/d$b;->c:Lcom/miui/antivirus/model/d$b;

    new-instance v5, Lcom/miui/antivirus/model/d$b;

    const-string v7, "SMS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/antivirus/model/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/antivirus/model/d$b;->d:Lcom/miui/antivirus/model/d$b;

    new-instance v7, Lcom/miui/antivirus/model/d$b;

    const-string v9, "AUTH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/antivirus/model/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/antivirus/model/d$b;->e:Lcom/miui/antivirus/model/d$b;

    new-instance v9, Lcom/miui/antivirus/model/d$b;

    const-string v11, "URL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/miui/antivirus/model/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/antivirus/model/d$b;->f:Lcom/miui/antivirus/model/d$b;

    new-instance v11, Lcom/miui/antivirus/model/d$b;

    const-string v13, "MONITOR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/miui/antivirus/model/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/antivirus/model/d$b;->g:Lcom/miui/antivirus/model/d$b;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/miui/antivirus/model/d$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/miui/antivirus/model/d$b;->h:[Lcom/miui/antivirus/model/d$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/model/d$b;
    .locals 1

    const-class v0, Lcom/miui/antivirus/model/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/antivirus/model/d$b;

    return-object p0
.end method

.method public static values()[Lcom/miui/antivirus/model/d$b;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/model/d$b;->h:[Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v0}, [Lcom/miui/antivirus/model/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/antivirus/model/d$b;

    return-object v0
.end method
