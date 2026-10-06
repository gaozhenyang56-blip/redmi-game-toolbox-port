.class public final enum Lcom/miui/antivirus/model/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/antivirus/model/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/antivirus/model/d$c;

.field public static final enum b:Lcom/miui/antivirus/model/d$c;

.field public static final enum c:Lcom/miui/antivirus/model/d$c;

.field public static final enum d:Lcom/miui/antivirus/model/d$c;

.field public static final enum e:Lcom/miui/antivirus/model/d$c;

.field public static final enum f:Lcom/miui/antivirus/model/d$c;

.field public static final enum g:Lcom/miui/antivirus/model/d$c;

.field public static final enum h:Lcom/miui/antivirus/model/d$c;

.field private static final synthetic i:[Lcom/miui/antivirus/model/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/miui/antivirus/model/d$c;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/d$c;->a:Lcom/miui/antivirus/model/d$c;

    new-instance v1, Lcom/miui/antivirus/model/d$c;

    const-string v3, "HEADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/antivirus/model/d$c;->b:Lcom/miui/antivirus/model/d$c;

    new-instance v3, Lcom/miui/antivirus/model/d$c;

    const-string v5, "DIVIDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/antivirus/model/d$c;->c:Lcom/miui/antivirus/model/d$c;

    new-instance v5, Lcom/miui/antivirus/model/d$c;

    const-string v7, "WIFI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/antivirus/model/d$c;->d:Lcom/miui/antivirus/model/d$c;

    new-instance v7, Lcom/miui/antivirus/model/d$c;

    const-string v9, "APP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    new-instance v9, Lcom/miui/antivirus/model/d$c;

    const-string v11, "SAFE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/antivirus/model/d$c;->f:Lcom/miui/antivirus/model/d$c;

    new-instance v11, Lcom/miui/antivirus/model/d$c;

    const-string v13, "BUTTON"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/antivirus/model/d$c;->g:Lcom/miui/antivirus/model/d$c;

    new-instance v13, Lcom/miui/antivirus/model/d$c;

    const-string v15, "LITE_TOP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/miui/antivirus/model/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/miui/antivirus/model/d$c;->h:Lcom/miui/antivirus/model/d$c;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/miui/antivirus/model/d$c;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/miui/antivirus/model/d$c;->i:[Lcom/miui/antivirus/model/d$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/model/d$c;
    .locals 1

    const-class v0, Lcom/miui/antivirus/model/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/antivirus/model/d$c;

    return-object p0
.end method

.method public static values()[Lcom/miui/antivirus/model/d$c;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/model/d$c;->i:[Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v0}, [Lcom/miui/antivirus/model/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/antivirus/model/d$c;

    return-object v0
.end method
