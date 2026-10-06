.class public final enum Li5/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li5/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Li5/a$a;

.field public static final enum c:Li5/a$a;

.field public static final enum d:Li5/a$a;

.field public static final enum e:Li5/a$a;

.field public static final enum f:Li5/a$a;

.field public static final enum g:Li5/a$a;

.field public static final enum h:Li5/a$a;

.field public static final enum i:Li5/a$a;

.field private static final synthetic j:[Li5/a$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Li5/a$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Li5/a$a;->b:Li5/a$a;

    new-instance v1, Li5/a$a;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li5/a$a;->c:Li5/a$a;

    new-instance v3, Li5/a$a;

    const-string v5, "DEEPLINK"

    const/4 v6, 0x2

    const-string v7, "deeplink"

    invoke-direct {v3, v5, v6, v7}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Li5/a$a;->d:Li5/a$a;

    new-instance v5, Li5/a$a;

    const-string v7, "H5"

    const/4 v8, 0x3

    const-string v9, "h5"

    invoke-direct {v5, v7, v8, v9}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Li5/a$a;->e:Li5/a$a;

    new-instance v7, Li5/a$a;

    const-string v9, "QUICKAPP"

    const/4 v10, 0x4

    const-string v11, "quickapp"

    invoke-direct {v7, v9, v10, v11}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Li5/a$a;->f:Li5/a$a;

    new-instance v9, Li5/a$a;

    const-string v11, "SUMULATION"

    const/4 v12, 0x5

    const-string v13, "sumulation"

    invoke-direct {v9, v11, v12, v13}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Li5/a$a;->g:Li5/a$a;

    new-instance v11, Li5/a$a;

    const-string v13, "LOCAL"

    const/4 v14, 0x6

    const-string v15, "local"

    invoke-direct {v11, v13, v14, v15}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Li5/a$a;->h:Li5/a$a;

    new-instance v13, Li5/a$a;

    const-string v15, "LOCALSDK"

    const/4 v14, 0x7

    const-string v12, "localsdk"

    invoke-direct {v13, v15, v14, v12}, Li5/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Li5/a$a;->i:Li5/a$a;

    const/16 v12, 0x8

    new-array v12, v12, [Li5/a$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Li5/a$a;->j:[Li5/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Li5/a$a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Li5/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li5/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Li5/a$a;
    .locals 1

    const-class v0, Li5/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li5/a$a;

    return-object p0
.end method

.method public static values()[Li5/a$a;
    .locals 1

    sget-object v0, Li5/a$a;->j:[Li5/a$a;

    invoke-virtual {v0}, [Li5/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li5/a$a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li5/a$a;->a:Ljava/lang/String;

    return-object v0
.end method
